; test3_before.ll
define i32 @three_returns(i32 %a, i32 %b) {
entry:
  %cmp1 = icmp sgt i32 %a, %b
  br i1 %cmp1, label %A, label %B

A:
  %sum = add i32 %a, %b
  ret i32 %sum

B:
  %cmp2 = icmp eq i32 %a, 0
  br i1 %cmp2, label %C, label %D

C:
  %val1 = sub i32 %b, %a
  ret i32 %val1

D:
  %val2 = mul i32 %a, %b
  ret i32 %val2
}
