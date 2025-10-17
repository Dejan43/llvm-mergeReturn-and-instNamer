#!/bin/bash
#!/bin/bash

BUILD_DIR=../../../../../build
TESTS_DIR=../tests
OUTPUT_DIR=output_nl_mergereturn

mkdir -p $OUTPUT_DIR

for i in 1 2 3; do
    $BUILD_DIR/bin/opt \
        -load $BUILD_DIR/lib/LLVMMergeReturnFunctionPass.so \
        -enable-new-pm=0 \
        -nl_mergereturn \
        -S $TESTS_DIR/mr_test${i}.ll -o $OUTPUT_DIR/output${i}.ll
done
