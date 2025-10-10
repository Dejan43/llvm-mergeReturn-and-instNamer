#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/Utils.h"
#include <vector>

using namespace llvm;

namespace {

struct Mergereturn : public FunctionPass {
  static char ID;
  Mergereturn() : FunctionPass(ID) {}

  bool runOnFunction(Function &F) override {
    if (F.isDeclaration() || F.empty()) return false; //Ukoliko je deklaracija ili prazna idemo dalje

    std::vector<ReturnInst*> returns; //lista koja ce cuvati return instrukcije 
    BasicBlock *newExitBlock = nullptr; // pokazivac na novi exit blok tj gde cemo kreirati sve     
    PHINode *phiNode = nullptr; // PHI cvor u kome cemo kombinovati razlicite return vrednosti

    for (BasicBlock &BB : F) {
      if (ReturnInst *ret = dyn_cast<ReturnInst>(BB.getTerminator())) { //provera da li je terminatorska instrukcija ustvari return instrukcija
        returns.push_back(ret);
      }
    }

    if (returns.size() <= 1) { // Ukoliko je nema return-ova onda vrati nista
      return false;
    }

    Type *returnType = F.getReturnType(); //provera return tipa 
    bool returnsValue = !returnType->isVoidTy(); // dal je void ili ne 

    newExitBlock = BasicBlock::Create(F.getContext(), " merged.exit", &F); // novi bb koji ce biti objedinjeni exit

    IRBuilder<> builder(newExitBlock); //builder za dodavanje novih instrukcija

    if (returnsValue) {
      phiNode = builder.CreatePHI(returnType, returns.size(), "returnValue"); // phi cvor za sve ovo 
    }

    if (returnsValue) { //kreira node u zavisnosti od cega je 
      builder.CreateRet(phiNode); 
    } else {
      builder.CreateRetVoid();
    }

    for (ReturnInst *ret : returns) { // prolazimo kroz sve originlane return instr
      BasicBlock *parentBlock = ret->getParent(); //bb u kome se nalazi return
      
      if (returnsValue) {
        phiNode->addIncoming(ret->getReturnValue(), parentBlock);//dodaj u phi cvor instr koja vraca odredjeni tip
      }
      
      BranchInst::Create(newExitBlock, parentBlock); // zameni return instr sa skokom na novi blok
      ret->eraseFromParent(); //obrisi originlanu return instrukciju
    }

    return true;
  }
};

char Mergereturn::ID = 0;

static RegisterPass<Mergereturn> X("mergereturn", 
                                   "Unify function exit nodes", 
                                   false,
                                   false);

}