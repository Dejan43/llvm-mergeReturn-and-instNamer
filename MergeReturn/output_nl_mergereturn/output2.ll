; ModuleID = '../tests/mr_test2.ll'
source_filename = "../tests/mr_test2.ll"

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
