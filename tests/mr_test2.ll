; test2_after.ll
define void @void_returns(i32 %x) {
entry:
  %cmp = icmp eq i32 %x, 0
  br i1 %cmp, label %then, label %else

then:
  br label %merged.exit

else:
  br label %merged.exit

merged.exit:
  ret void
}
