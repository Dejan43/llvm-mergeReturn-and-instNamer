; ModuleID = '../tests/test1.ll'
source_filename = "../tests/test1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z16multiple_returnsi(i32 noundef %dd__Z16multiple_returnsi_arg0) #0 {
dd__Z16multiple_returnsi_bb0:
  %dd__Z16multiple_returnsi_alloca1 = alloca i32, align 4
  %dd__Z16multiple_returnsi_alloca2 = alloca i32, align 4
  store i32 %dd__Z16multiple_returnsi_arg0, ptr %dd__Z16multiple_returnsi_alloca2, align 4
  %dd__Z16multiple_returnsi_load1 = load i32, ptr %dd__Z16multiple_returnsi_alloca2, align 4
  %dd__Z16multiple_returnsi_icmp1 = icmp sgt i32 %dd__Z16multiple_returnsi_load1, 10
  br i1 %dd__Z16multiple_returnsi_icmp1, label %dd__Z16multiple_returnsi_bb1, label %dd__Z16multiple_returnsi_bb2

dd__Z16multiple_returnsi_bb1:                     ; preds = %dd__Z16multiple_returnsi_bb0
  store i32 42, ptr %dd__Z16multiple_returnsi_alloca1, align 4
  br label %dd__Z16multiple_returnsi_bb5

dd__Z16multiple_returnsi_bb2:                     ; preds = %dd__Z16multiple_returnsi_bb0
  %dd__Z16multiple_returnsi_load2 = load i32, ptr %dd__Z16multiple_returnsi_alloca2, align 4
  %dd__Z16multiple_returnsi_icmp2 = icmp slt i32 %dd__Z16multiple_returnsi_load2, 0
  br i1 %dd__Z16multiple_returnsi_icmp2, label %dd__Z16multiple_returnsi_bb3, label %dd__Z16multiple_returnsi_bb4

dd__Z16multiple_returnsi_bb3:                     ; preds = %dd__Z16multiple_returnsi_bb2
  store i32 -1, ptr %dd__Z16multiple_returnsi_alloca1, align 4
  br label %dd__Z16multiple_returnsi_bb5

dd__Z16multiple_returnsi_bb4:                     ; preds = %dd__Z16multiple_returnsi_bb2
  %dd__Z16multiple_returnsi_load3 = load i32, ptr %dd__Z16multiple_returnsi_alloca2, align 4
  %dd__Z16multiple_returnsi_mul1 = mul nsw i32 %dd__Z16multiple_returnsi_load3, 2
  store i32 %dd__Z16multiple_returnsi_mul1, ptr %dd__Z16multiple_returnsi_alloca1, align 4
  br label %dd__Z16multiple_returnsi_bb5

dd__Z16multiple_returnsi_bb5:                     ; preds = %dd__Z16multiple_returnsi_bb4, %dd__Z16multiple_returnsi_bb3, %dd__Z16multiple_returnsi_bb1
  %dd__Z16multiple_returnsi_load4 = load i32, ptr %dd__Z16multiple_returnsi_alloca1, align 4
  ret i32 %dd__Z16multiple_returnsi_load4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z21void_multiple_returnsi(i32 noundef %dd__Z21void_multiple_returnsi_arg0) #0 {
dd__Z21void_multiple_returnsi_bb0:
  %dd__Z21void_multiple_returnsi_alloca1 = alloca i32, align 4
  store i32 %dd__Z21void_multiple_returnsi_arg0, ptr %dd__Z21void_multiple_returnsi_alloca1, align 4
  %dd__Z21void_multiple_returnsi_load1 = load i32, ptr %dd__Z21void_multiple_returnsi_alloca1, align 4
  %dd__Z21void_multiple_returnsi_icmp1 = icmp eq i32 %dd__Z21void_multiple_returnsi_load1, 0
  br i1 %dd__Z21void_multiple_returnsi_icmp1, label %dd__Z21void_multiple_returnsi_bb1, label %dd__Z21void_multiple_returnsi_bb2

dd__Z21void_multiple_returnsi_bb1:                ; preds = %dd__Z21void_multiple_returnsi_bb0
  br label %dd__Z21void_multiple_returnsi_bb5

dd__Z21void_multiple_returnsi_bb2:                ; preds = %dd__Z21void_multiple_returnsi_bb0
  %dd__Z21void_multiple_returnsi_load2 = load i32, ptr %dd__Z21void_multiple_returnsi_alloca1, align 4
  %dd__Z21void_multiple_returnsi_icmp2 = icmp sgt i32 %dd__Z21void_multiple_returnsi_load2, 100
  br i1 %dd__Z21void_multiple_returnsi_icmp2, label %dd__Z21void_multiple_returnsi_bb3, label %dd__Z21void_multiple_returnsi_bb4

dd__Z21void_multiple_returnsi_bb3:                ; preds = %dd__Z21void_multiple_returnsi_bb2
  br label %dd__Z21void_multiple_returnsi_bb5

dd__Z21void_multiple_returnsi_bb4:                ; preds = %dd__Z21void_multiple_returnsi_bb2
  br label %dd__Z21void_multiple_returnsi_bb5

dd__Z21void_multiple_returnsi_bb5:                ; preds = %dd__Z21void_multiple_returnsi_bb4, %dd__Z21void_multiple_returnsi_bb3, %dd__Z21void_multiple_returnsi_bb1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z13single_returni(i32 noundef %dd__Z13single_returni_arg0) #0 {
dd__Z13single_returni_bb0:
  %dd__Z13single_returni_alloca1 = alloca i32, align 4
  store i32 %dd__Z13single_returni_arg0, ptr %dd__Z13single_returni_alloca1, align 4
  %dd__Z13single_returni_load1 = load i32, ptr %dd__Z13single_returni_alloca1, align 4
  %dd__Z13single_returni_mul1 = mul nsw i32 %dd__Z13single_returni_load1, 3
  ret i32 %dd__Z13single_returni_mul1
}

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #1 {
dd_main_bb0:
  %dd_main_alloca1 = alloca i32, align 4
  store i32 0, ptr %dd_main_alloca1, align 4
  %dd_main_call1 = call noundef i32 @_Z16multiple_returnsi(i32 noundef 22)
  call void @_Z21void_multiple_returnsi(i32 noundef 100)
  %dd_main_call2 = call noundef i32 @_Z16multiple_returnsi(i32 noundef 22)
  %dd_main_call3 = call noundef i32 @_Z13single_returni(i32 noundef %dd_main_call2)
  ret i32 0
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.0 (https://github.com/llvm/llvm-project.git 758329dc7cd3b0da835a4f865b89003263050080)"}
