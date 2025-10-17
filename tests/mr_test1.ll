; test1_before.ll
; jednostavna funkcija sa dva return
define i32 @two_returns(i32 %x) {
entry:
  %cmp = icmp sgt i32 %x, 0
  br i1 %cmp, label %then, label %else

then:
  ret i32 1

else:
  ret i32 0
}
