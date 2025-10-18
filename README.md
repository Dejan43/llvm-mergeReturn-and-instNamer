# LLVM Custom Pass – InstNamer

This project contains a custom LLVM pass that assigns readable and unique names in LLVM IR.

## InstNamer Pass

**Author:** Dejan Dragojlović

The `InstNamer` pass automatically names LLVM IR entities:

- **Basic Blocks:** `dd_bb0`, `dd_bb1`, …  
- **Instructions with results:** `dd_add1`, `dd_mul2`, …  
- **Function arguments:** `dd_arg0`, `dd_arg1`, …  

Each function gets a prefix based on its name so names are distinct and easier to read.

## Usage Example

```bash
# Generate LLVM IR from a C++ file
clang -S -emit-llvm test1.cpp -o test1.ll

# Run the dd_InstNamer pass
opt -load lib/LLVMInstNamer.so -enable-new-pm=0 -dd_instnamer -S test1.ll -o test1_output.ll

```
# LLVM Custom Pass – Mergereturn 
This project contains a custom LLVM pass that merges multiple return instructions in a function into a single exit block, simplifying control flow and making LLVM IR easier to analyze and optimize.

## MergeReturn Pass
**Author:** Nikola Labus
The MergeReturn pass automatically unifies multiple return instructions in LLVM IR:
- **Multiple returns:**  single exit block (merged.exit)  
- **Non-void functions:** creates a PHI node to merge return values 
- **Void functions:** single unified return

## Usage Example
  
```bash
# Generate LLVM IR from a C++ file
clang -S -emit-llvm test.cpp -o test.ll

# Run the dd_InstNamer pass
opt -load lib/LLVMInstNamer.so -enable-new-pm=0 -dd_instnamer -S test.ll -o output.ll

```

## Output after MergeReturn Pass:

```bash
define void @void_returns(i32 %x) {
entry:
  %cmp = icmp eq i32 %x, 0
  br i1 %cmp, label %then, label %else

then:                                             ; preds = %entry
  br label %merged.exit

else:                                             ; preds = %entry
  br label %merged.exit

merged.exit:                                      ; preds = %else, %then
  ret void
}
```
For functions with return values, a PHI node is automatically created to combine all possible return values.

## Implementation Details
- Iterates over all basic blocks and collects ReturnInst instructions.
- Creates a new exit block named merged.exit.
- Replaces all original returns with branches to the new exit block.
- If the function returns a value, a PHI node merges all return values.
- Supports both void and typed functions.





