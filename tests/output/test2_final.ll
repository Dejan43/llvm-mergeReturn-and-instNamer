; ModuleID = 'tests/test2.ll'
source_filename = "tests/test2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@_ZSt3cin = external global %"class.std::basic_istream", align 8

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z18complex_conditionsiii(i32 noundef %dd__Z18complex_conditionsiii_arg0, i32 noundef %dd__Z18complex_conditionsiii_arg1, i32 noundef %dd__Z18complex_conditionsiii_arg2) #0 {
dd__Z18complex_conditionsiii_bb0:
  %dd__Z18complex_conditionsiii_alloca1 = alloca i32, align 4
  %dd__Z18complex_conditionsiii_alloca2 = alloca i32, align 4
  %dd__Z18complex_conditionsiii_alloca3 = alloca i32, align 4
  %dd__Z18complex_conditionsiii_alloca4 = alloca i32, align 4
  store i32 %dd__Z18complex_conditionsiii_arg0, ptr %dd__Z18complex_conditionsiii_alloca2, align 4
  store i32 %dd__Z18complex_conditionsiii_arg1, ptr %dd__Z18complex_conditionsiii_alloca3, align 4
  store i32 %dd__Z18complex_conditionsiii_arg2, ptr %dd__Z18complex_conditionsiii_alloca4, align 4
  %dd__Z18complex_conditionsiii_load1 = load i32, ptr %dd__Z18complex_conditionsiii_alloca2, align 4
  %dd__Z18complex_conditionsiii_load2 = load i32, ptr %dd__Z18complex_conditionsiii_alloca3, align 4
  %dd__Z18complex_conditionsiii_icmp1 = icmp sgt i32 %dd__Z18complex_conditionsiii_load1, %dd__Z18complex_conditionsiii_load2
  br i1 %dd__Z18complex_conditionsiii_icmp1, label %dd__Z18complex_conditionsiii_bb1, label %dd__Z18complex_conditionsiii_bb4

dd__Z18complex_conditionsiii_bb1:                 ; preds = %dd__Z18complex_conditionsiii_bb0
  %dd__Z18complex_conditionsiii_load3 = load i32, ptr %dd__Z18complex_conditionsiii_alloca3, align 4
  %dd__Z18complex_conditionsiii_load4 = load i32, ptr %dd__Z18complex_conditionsiii_alloca4, align 4
  %dd__Z18complex_conditionsiii_icmp2 = icmp sgt i32 %dd__Z18complex_conditionsiii_load3, %dd__Z18complex_conditionsiii_load4
  br i1 %dd__Z18complex_conditionsiii_icmp2, label %dd__Z18complex_conditionsiii_bb2, label %dd__Z18complex_conditionsiii_bb3

dd__Z18complex_conditionsiii_bb2:                 ; preds = %dd__Z18complex_conditionsiii_bb1
  store i32 1, ptr %dd__Z18complex_conditionsiii_alloca1, align 4
  br label %dd__Z18complex_conditionsiii_bb9

dd__Z18complex_conditionsiii_bb3:                 ; preds = %dd__Z18complex_conditionsiii_bb1
  store i32 2, ptr %dd__Z18complex_conditionsiii_alloca1, align 4
  br label %dd__Z18complex_conditionsiii_bb9

dd__Z18complex_conditionsiii_bb4:                 ; preds = %dd__Z18complex_conditionsiii_bb0
  %dd__Z18complex_conditionsiii_load5 = load i32, ptr %dd__Z18complex_conditionsiii_alloca2, align 4
  %dd__Z18complex_conditionsiii_load6 = load i32, ptr %dd__Z18complex_conditionsiii_alloca4, align 4
  %dd__Z18complex_conditionsiii_icmp3 = icmp eq i32 %dd__Z18complex_conditionsiii_load5, %dd__Z18complex_conditionsiii_load6
  br i1 %dd__Z18complex_conditionsiii_icmp3, label %dd__Z18complex_conditionsiii_bb5, label %dd__Z18complex_conditionsiii_bb6

dd__Z18complex_conditionsiii_bb5:                 ; preds = %dd__Z18complex_conditionsiii_bb4
  store i32 3, ptr %dd__Z18complex_conditionsiii_alloca1, align 4
  br label %dd__Z18complex_conditionsiii_bb9

dd__Z18complex_conditionsiii_bb6:                 ; preds = %dd__Z18complex_conditionsiii_bb4
  %dd__Z18complex_conditionsiii_load7 = load i32, ptr %dd__Z18complex_conditionsiii_alloca3, align 4
  %dd__Z18complex_conditionsiii_load8 = load i32, ptr %dd__Z18complex_conditionsiii_alloca4, align 4
  %dd__Z18complex_conditionsiii_icmp4 = icmp eq i32 %dd__Z18complex_conditionsiii_load7, %dd__Z18complex_conditionsiii_load8
  br i1 %dd__Z18complex_conditionsiii_icmp4, label %dd__Z18complex_conditionsiii_bb7, label %dd__Z18complex_conditionsiii_bb8

dd__Z18complex_conditionsiii_bb7:                 ; preds = %dd__Z18complex_conditionsiii_bb6
  store i32 4, ptr %dd__Z18complex_conditionsiii_alloca1, align 4
  br label %dd__Z18complex_conditionsiii_bb9

dd__Z18complex_conditionsiii_bb8:                 ; preds = %dd__Z18complex_conditionsiii_bb6
  store i32 5, ptr %dd__Z18complex_conditionsiii_alloca1, align 4
  br label %dd__Z18complex_conditionsiii_bb9

dd__Z18complex_conditionsiii_bb9:                 ; preds = %dd__Z18complex_conditionsiii_bb8, %dd__Z18complex_conditionsiii_bb7, %dd__Z18complex_conditionsiii_bb5, %dd__Z18complex_conditionsiii_bb3, %dd__Z18complex_conditionsiii_bb2
  %dd__Z18complex_conditionsiii_load9 = load i32, ptr %dd__Z18complex_conditionsiii_alloca1, align 4
  ret i32 %dd__Z18complex_conditionsiii_load9
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z10with_loopsi(i32 noundef %dd__Z10with_loopsi_arg0) #0 {
dd__Z10with_loopsi_bb0:
  %dd__Z10with_loopsi_alloca1 = alloca i32, align 4
  %dd__Z10with_loopsi_alloca2 = alloca i32, align 4
  %dd__Z10with_loopsi_alloca3 = alloca i32, align 4
  store i32 %dd__Z10with_loopsi_arg0, ptr %dd__Z10with_loopsi_alloca2, align 4
  store i32 0, ptr %dd__Z10with_loopsi_alloca3, align 4
  br label %dd__Z10with_loopsi_bb1

dd__Z10with_loopsi_bb1:                           ; preds = %dd__Z10with_loopsi_bb7, %dd__Z10with_loopsi_bb0
  %dd__Z10with_loopsi_load1 = load i32, ptr %dd__Z10with_loopsi_alloca3, align 4
  %dd__Z10with_loopsi_load2 = load i32, ptr %dd__Z10with_loopsi_alloca2, align 4
  %dd__Z10with_loopsi_icmp1 = icmp slt i32 %dd__Z10with_loopsi_load1, %dd__Z10with_loopsi_load2
  br i1 %dd__Z10with_loopsi_icmp1, label %dd__Z10with_loopsi_bb2, label %dd__Z10with_loopsi_bb8

dd__Z10with_loopsi_bb2:                           ; preds = %dd__Z10with_loopsi_bb1
  %dd__Z10with_loopsi_load3 = load i32, ptr %dd__Z10with_loopsi_alloca3, align 4
  %dd__Z10with_loopsi_icmp2 = icmp eq i32 %dd__Z10with_loopsi_load3, 5
  br i1 %dd__Z10with_loopsi_icmp2, label %dd__Z10with_loopsi_bb3, label %dd__Z10with_loopsi_bb4

dd__Z10with_loopsi_bb3:                           ; preds = %dd__Z10with_loopsi_bb2
  store i32 100, ptr %dd__Z10with_loopsi_alloca1, align 4
  br label %dd__Z10with_loopsi_bb9

dd__Z10with_loopsi_bb4:                           ; preds = %dd__Z10with_loopsi_bb2
  %dd__Z10with_loopsi_load4 = load i32, ptr %dd__Z10with_loopsi_alloca3, align 4
  %dd__Z10with_loopsi_load5 = load i32, ptr %dd__Z10with_loopsi_alloca3, align 4
  %dd__Z10with_loopsi_mul1 = mul nsw i32 %dd__Z10with_loopsi_load4, %dd__Z10with_loopsi_load5
  %dd__Z10with_loopsi_load6 = load i32, ptr %dd__Z10with_loopsi_alloca2, align 4
  %dd__Z10with_loopsi_icmp3 = icmp sgt i32 %dd__Z10with_loopsi_mul1, %dd__Z10with_loopsi_load6
  br i1 %dd__Z10with_loopsi_icmp3, label %dd__Z10with_loopsi_bb5, label %dd__Z10with_loopsi_bb6

dd__Z10with_loopsi_bb5:                           ; preds = %dd__Z10with_loopsi_bb4
  store i32 200, ptr %dd__Z10with_loopsi_alloca1, align 4
  br label %dd__Z10with_loopsi_bb9

dd__Z10with_loopsi_bb6:                           ; preds = %dd__Z10with_loopsi_bb4
  br label %dd__Z10with_loopsi_bb7

dd__Z10with_loopsi_bb7:                           ; preds = %dd__Z10with_loopsi_bb6
  %dd__Z10with_loopsi_load7 = load i32, ptr %dd__Z10with_loopsi_alloca3, align 4
  %dd__Z10with_loopsi_add1 = add nsw i32 %dd__Z10with_loopsi_load7, 1
  store i32 %dd__Z10with_loopsi_add1, ptr %dd__Z10with_loopsi_alloca3, align 4
  br label %dd__Z10with_loopsi_bb1, !llvm.loop !6

dd__Z10with_loopsi_bb8:                           ; preds = %dd__Z10with_loopsi_bb1
  store i32 300, ptr %dd__Z10with_loopsi_alloca1, align 4
  br label %dd__Z10with_loopsi_bb9

dd__Z10with_loopsi_bb9:                           ; preds = %dd__Z10with_loopsi_bb8, %dd__Z10with_loopsi_bb5, %dd__Z10with_loopsi_bb3
  %dd__Z10with_loopsi_load8 = load i32, ptr %dd__Z10with_loopsi_alloca1, align 4
  ret i32 %dd__Z10with_loopsi_load8
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #1 {
dd_main_bb0:
  %dd_main_alloca1 = alloca i32, align 4
  %dd_main_alloca2 = alloca i32, align 4
  %dd_main_alloca3 = alloca i32, align 4
  %dd_main_alloca4 = alloca i32, align 4
  store i32 0, ptr %dd_main_alloca1, align 4
  %dd_main_call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %dd_main_alloca2)
  %dd_main_call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %dd_main_call1, ptr noundef nonnull align 4 dereferenceable(4) %dd_main_alloca3)
  %dd_main_call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %dd_main_call2, ptr noundef nonnull align 4 dereferenceable(4) %dd_main_alloca4)
  %dd_main_call4 = call noundef i32 @_Z18complex_conditionsiii(i32 noundef 1, i32 noundef 2, i32 noundef 3)
  %dd_main_load1 = load i32, ptr %dd_main_alloca2, align 4
  %dd_main_call5 = call noundef i32 @_Z10with_loopsi(i32 noundef %dd_main_load1)
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.0 (https://github.com/llvm/llvm-project.git 758329dc7cd3b0da835a4f865b89003263050080)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
