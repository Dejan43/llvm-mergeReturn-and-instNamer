; ModuleID = '../tests/mr_test1.ll'
source_filename = "../tests/mr_test1.ll"

define i32 @two_returns(i32 %x) {
entry:
  %cmp = icmp sgt i32 %x, 0
  br i1 %cmp, label %then, label %else

then:                                             ; preds = %entry
  br label %merged.exit

else:                                             ; preds = %entry
  br label %merged.exit

merged.exit:                                      ; preds = %else, %then
  %ret.phi = phi i32 [ 1, %then ], [ 0, %else ]
  ret i32 %ret.phi
}
