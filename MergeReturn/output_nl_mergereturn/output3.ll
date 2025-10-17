; ModuleID = '../tests/mr_test3.ll'
source_filename = "../tests/mr_test3.ll"

define i32 @three_returns(i32 %a, i32 %b) {
entry:
  %cmp1 = icmp sgt i32 %a, %b
  br i1 %cmp1, label %A, label %B

A:                                                ; preds = %entry
  %sum = add i32 %a, %b
  br label %merged.exit

B:                                                ; preds = %entry
  %cmp2 = icmp eq i32 %a, 0
  br i1 %cmp2, label %C, label %D

C:                                                ; preds = %B
  %val1 = sub i32 %b, %a
  br label %merged.exit

D:                                                ; preds = %B
  %val2 = mul i32 %a, %b
  br label %merged.exit

merged.exit:                                      ; preds = %D, %C, %A
  %ret.phi = phi i32 [ %sum, %A ], [ %val1, %C ], [ %val2, %D ]
  ret i32 %ret.phi
}
