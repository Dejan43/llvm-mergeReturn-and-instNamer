#!/bin/bash

../../../../../build/bin/clang -emit-llvm -S tests/test1.cpp -o tests/test1.ll
../../../../../build/bin/clang -emit-llvm -S tests/test2.cpp -o tests/test2.ll
../../../../../build/bin/clang -emit-llvm -S tests/test3.cpp -o tests/test3.ll

../../../../../build/bin/opt -load ../../../../../build/lib/LLVMMergeReturnFunctionPass.so -enable-new-pm=0 -nl_mergereturn tests/test1.ll -o tests/output1.ll -S
../../../../../build/bin/opt -load ../../../../../build/lib/LLVMMergeReturnFunctionPass.so -enable-new-pm=0 -nl_mergereturn tests/test2.ll -o tests/output2.ll -S
../../../../../build/bin/opt -load ../../../../../build/lib/LLVMMergeReturnFunctionPass.so -enable-new-pm=0 -nl_mergereturn tests/test3.ll -o tests/output3.ll -S
