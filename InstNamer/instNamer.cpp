#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/Instructions.h"
#include "llvm/ADT/StringMap.h"
#include "llvm/ADT/Twine.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace {
struct InstNamer : public FunctionPass {
    static char ID;
    bool Verbose;
    InstNamer(bool V = true) : FunctionPass(ID), Verbose(V) {}

    bool runOnFunction(Function &F) override {
        StringMap<unsigned> Counters;
        unsigned BBIdx = 0, NamedBBs = 0, NamedInsts = 0, NamedArgs = 0;
        bool Changed = false;

        std::string FuncPrefix = "dd_" + F.getName().str() + "_";

        // Imenovanje argumenata
        for (Argument &Arg : F.args()) {
            if (!Arg.hasName()) {
                Arg.setName(FuncPrefix + "arg" + std::to_string(NamedArgs++));
                Changed = true;
            }
        }

        // Imenovanje osnovnih blokova
        for (BasicBlock &BB : F) {
            if (!BB.hasName()) {
                BB.setName(FuncPrefix + "bb" + std::to_string(BBIdx++));
                NamedBBs++;
                Changed = true;
            }
        }

        // Imenovanje instrukcija sa rezultatom
        for (Instruction &I : instructions(F)) {
            if (I.hasName() || I.getType()->isVoidTy())
                continue;

            std::string BaseStr = I.getOpcodeName();
            unsigned Id = ++Counters[BaseStr];

            I.setName(FuncPrefix + BaseStr + std::to_string(Id));
            NamedInsts++;
            Changed = true;
        }

        if (Verbose && (NamedBBs || NamedInsts || NamedArgs)) {
            errs() << "[dd_instNamer] " << F.getName() << ": "
                   << NamedArgs << " args, "
                   << NamedBBs << " BBs, "
                   << NamedInsts << " insts.\n";
        }

        return Changed;
    }
};
} // namespace

char InstNamer::ID = 0;

static RegisterPass<InstNamer> X(
    "dd_instnamer",           
    "Instruction Namer Pass", 
    false,                 
    false                  
);
FunctionPass *createInstNamerPass(bool Verbose = true) {
    return new InstNamer(Verbose);
}
