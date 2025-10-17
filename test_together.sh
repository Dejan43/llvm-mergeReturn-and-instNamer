#!/bin/bash

BUILD_DIR=../../../../build
TESTS_DIR=tests
OUTPUT_DIR=$TESTS_DIR/output

mkdir -p $OUTPUT_DIR

for i in 1 2 3; do
    $BUILD_DIR/bin/clang -S -emit-llvm $TESTS_DIR/test${i}.cpp -o $TESTS_DIR/test${i}.ll

    $BUILD_DIR/bin/opt \
        -load $BUILD_DIR/lib/LLVMInstNamer.so \
        -load $BUILD_DIR/lib/LLVMMergeReturnFunctionPass.so \
        -enable-new-pm=0 \
        -dd_instnamer \
        -nl_mergereturn \
        -S $TESTS_DIR/test${i}.ll \
        -o $OUTPUT_DIR/test${i}_final.ll
done

$BUILD_DIR/bin/clang -S -emit-llvm $TESTS_DIR/sum_mul.cpp -o $TESTS_DIR/sum_mul.ll

$BUILD_DIR/bin/opt \
    -load $BUILD_DIR/lib/LLVMInstNamer.so \
    -load $BUILD_DIR/lib/LLVMMergeReturnFunctionPass.so \
    -enable-new-pm=0 \
    -dd_instnamer \
    -nl_mergereturn \
    -S $TESTS_DIR/sum_mul.ll \
    -o $OUTPUT_DIR/sum_mul_final.ll

echo "dd_InstNamer + nl_MergeReturn pass zavrsen, izlaz u $OUTPUT_DIR"
