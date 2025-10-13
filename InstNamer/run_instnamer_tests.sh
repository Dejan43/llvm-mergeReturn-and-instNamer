#!/bin/bash

BUILD_DIR=../../../../../build
TESTS_DIR=tests
OUTPUT_DIR=$TESTS_DIR/output_dd_instnamer

mkdir -p $OUTPUT_DIR

for i in 1 2 3; do
    $BUILD_DIR/bin/clang -S -emit-llvm $TESTS_DIR/test${i}.cpp -o $TESTS_DIR/test${i}.ll

    $BUILD_DIR/bin/opt \
        -load $BUILD_DIR/lib/LLVMInstNamer.so \
        -enable-new-pm=0 \
        -dd_instnamer \
        -S $TESTS_DIR/test${i}.ll -o $OUTPUT_DIR/output${i}.ll
done

echo "dd_InstNamer pass zavrsen, izlaz u $OUTPUT_DIR"
