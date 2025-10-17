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
## MergeReturn Pass

**Author:** Nikola Labus

...