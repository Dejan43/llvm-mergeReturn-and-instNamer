; ModuleID = 'tests/sum_mul.ll'
source_filename = "tests/sum_mul.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [5 x i8] c"Zero\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Positive: \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Negative: \00", align 1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z10computeSumii(i32 noundef %dd__Z10computeSumii_arg0, i32 noundef %dd__Z10computeSumii_arg1) #0 {
dd__Z10computeSumii_bb0:
  %dd__Z10computeSumii_alloca1 = alloca i32, align 4
  %dd__Z10computeSumii_alloca2 = alloca i32, align 4
  %dd__Z10computeSumii_alloca3 = alloca i32, align 4
  store i32 %dd__Z10computeSumii_arg0, ptr %dd__Z10computeSumii_alloca1, align 4
  store i32 %dd__Z10computeSumii_arg1, ptr %dd__Z10computeSumii_alloca2, align 4
  %dd__Z10computeSumii_load1 = load i32, ptr %dd__Z10computeSumii_alloca1, align 4
  %dd__Z10computeSumii_load2 = load i32, ptr %dd__Z10computeSumii_alloca2, align 4
  %dd__Z10computeSumii_add1 = add nsw i32 %dd__Z10computeSumii_load1, %dd__Z10computeSumii_load2
  store i32 %dd__Z10computeSumii_add1, ptr %dd__Z10computeSumii_alloca3, align 4
  %dd__Z10computeSumii_load3 = load i32, ptr %dd__Z10computeSumii_alloca3, align 4
  %dd__Z10computeSumii_icmp1 = icmp sgt i32 %dd__Z10computeSumii_load3, 10
  br i1 %dd__Z10computeSumii_icmp1, label %dd__Z10computeSumii_bb1, label %dd__Z10computeSumii_bb2

dd__Z10computeSumii_bb1:                          ; preds = %dd__Z10computeSumii_bb0
  %dd__Z10computeSumii_load4 = load i32, ptr %dd__Z10computeSumii_alloca3, align 4
  %dd__Z10computeSumii_sub1 = sub nsw i32 %dd__Z10computeSumii_load4, 5
  store i32 %dd__Z10computeSumii_sub1, ptr %dd__Z10computeSumii_alloca3, align 4
  br label %dd__Z10computeSumii_bb5

dd__Z10computeSumii_bb2:                          ; preds = %dd__Z10computeSumii_bb0
  %dd__Z10computeSumii_load5 = load i32, ptr %dd__Z10computeSumii_alloca3, align 4
  %dd__Z10computeSumii_icmp2 = icmp slt i32 %dd__Z10computeSumii_load5, 0
  br i1 %dd__Z10computeSumii_icmp2, label %dd__Z10computeSumii_bb3, label %dd__Z10computeSumii_bb4

dd__Z10computeSumii_bb3:                          ; preds = %dd__Z10computeSumii_bb2
  store i32 0, ptr %dd__Z10computeSumii_alloca3, align 4
  br label %dd__Z10computeSumii_bb4

dd__Z10computeSumii_bb4:                          ; preds = %dd__Z10computeSumii_bb3, %dd__Z10computeSumii_bb2
  br label %dd__Z10computeSumii_bb5

dd__Z10computeSumii_bb5:                          ; preds = %dd__Z10computeSumii_bb4, %dd__Z10computeSumii_bb1
  %dd__Z10computeSumii_load6 = load i32, ptr %dd__Z10computeSumii_alloca3, align 4
  ret i32 %dd__Z10computeSumii_load6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z8multiplyii(i32 noundef %dd__Z8multiplyii_arg0, i32 noundef %dd__Z8multiplyii_arg1) #0 {
dd__Z8multiplyii_bb0:
  %dd__Z8multiplyii_alloca1 = alloca i32, align 4
  %dd__Z8multiplyii_alloca2 = alloca i32, align 4
  %dd__Z8multiplyii_alloca3 = alloca i32, align 4
  %dd__Z8multiplyii_alloca4 = alloca i32, align 4
  store i32 %dd__Z8multiplyii_arg0, ptr %dd__Z8multiplyii_alloca1, align 4
  store i32 %dd__Z8multiplyii_arg1, ptr %dd__Z8multiplyii_alloca2, align 4
  store i32 1, ptr %dd__Z8multiplyii_alloca3, align 4
  store i32 0, ptr %dd__Z8multiplyii_alloca4, align 4
  br label %dd__Z8multiplyii_bb1

dd__Z8multiplyii_bb1:                             ; preds = %dd__Z8multiplyii_bb3, %dd__Z8multiplyii_bb0
  %dd__Z8multiplyii_load1 = load i32, ptr %dd__Z8multiplyii_alloca4, align 4
  %dd__Z8multiplyii_load2 = load i32, ptr %dd__Z8multiplyii_alloca2, align 4
  %dd__Z8multiplyii_icmp1 = icmp slt i32 %dd__Z8multiplyii_load1, %dd__Z8multiplyii_load2
  br i1 %dd__Z8multiplyii_icmp1, label %dd__Z8multiplyii_bb2, label %dd__Z8multiplyii_bb4

dd__Z8multiplyii_bb2:                             ; preds = %dd__Z8multiplyii_bb1
  %dd__Z8multiplyii_load3 = load i32, ptr %dd__Z8multiplyii_alloca1, align 4
  %dd__Z8multiplyii_load4 = load i32, ptr %dd__Z8multiplyii_alloca3, align 4
  %dd__Z8multiplyii_mul1 = mul nsw i32 %dd__Z8multiplyii_load4, %dd__Z8multiplyii_load3
  store i32 %dd__Z8multiplyii_mul1, ptr %dd__Z8multiplyii_alloca3, align 4
  br label %dd__Z8multiplyii_bb3

dd__Z8multiplyii_bb3:                             ; preds = %dd__Z8multiplyii_bb2
  %dd__Z8multiplyii_load5 = load i32, ptr %dd__Z8multiplyii_alloca4, align 4
  %dd__Z8multiplyii_add1 = add nsw i32 %dd__Z8multiplyii_load5, 1
  store i32 %dd__Z8multiplyii_add1, ptr %dd__Z8multiplyii_alloca4, align 4
  br label %dd__Z8multiplyii_bb1, !llvm.loop !6

dd__Z8multiplyii_bb4:                             ; preds = %dd__Z8multiplyii_bb1
  %dd__Z8multiplyii_load6 = load i32, ptr %dd__Z8multiplyii_alloca3, align 4
  ret i32 %dd__Z8multiplyii_load6
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z11printResulti(i32 noundef %dd__Z11printResulti_arg0) #1 {
dd__Z11printResulti_bb0:
  %dd__Z11printResulti_alloca1 = alloca i32, align 4
  store i32 %dd__Z11printResulti_arg0, ptr %dd__Z11printResulti_alloca1, align 4
  %dd__Z11printResulti_load1 = load i32, ptr %dd__Z11printResulti_alloca1, align 4
  %dd__Z11printResulti_icmp1 = icmp eq i32 %dd__Z11printResulti_load1, 0
  br i1 %dd__Z11printResulti_icmp1, label %dd__Z11printResulti_bb1, label %dd__Z11printResulti_bb2

dd__Z11printResulti_bb1:                          ; preds = %dd__Z11printResulti_bb0
  %dd__Z11printResulti_call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %dd__Z11printResulti_call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %dd__Z11printResulti_call1, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %dd__Z11printResulti_bb6

dd__Z11printResulti_bb2:                          ; preds = %dd__Z11printResulti_bb0
  %dd__Z11printResulti_load2 = load i32, ptr %dd__Z11printResulti_alloca1, align 4
  %dd__Z11printResulti_icmp2 = icmp sgt i32 %dd__Z11printResulti_load2, 0
  br i1 %dd__Z11printResulti_icmp2, label %dd__Z11printResulti_bb3, label %dd__Z11printResulti_bb4

dd__Z11printResulti_bb3:                          ; preds = %dd__Z11printResulti_bb2
  %dd__Z11printResulti_call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1)
  %dd__Z11printResulti_load3 = load i32, ptr %dd__Z11printResulti_alloca1, align 4
  %dd__Z11printResulti_call4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %dd__Z11printResulti_call3, i32 noundef %dd__Z11printResulti_load3)
  %dd__Z11printResulti_call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %dd__Z11printResulti_call4, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %dd__Z11printResulti_bb5

dd__Z11printResulti_bb4:                          ; preds = %dd__Z11printResulti_bb2
  %dd__Z11printResulti_call6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2)
  %dd__Z11printResulti_load4 = load i32, ptr %dd__Z11printResulti_alloca1, align 4
  %dd__Z11printResulti_call7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %dd__Z11printResulti_call6, i32 noundef %dd__Z11printResulti_load4)
  %dd__Z11printResulti_call8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %dd__Z11printResulti_call7, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %dd__Z11printResulti_bb5

dd__Z11printResulti_bb5:                          ; preds = %dd__Z11printResulti_bb4, %dd__Z11printResulti_bb3
  br label %dd__Z11printResulti_bb6

dd__Z11printResulti_bb6:                          ; preds = %dd__Z11printResulti_bb5, %dd__Z11printResulti_bb1
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #3 {
dd_main_bb0:
  %dd_main_alloca1 = alloca i32, align 4
  %dd_main_alloca2 = alloca i32, align 4
  %dd_main_alloca3 = alloca i32, align 4
  store i32 0, ptr %dd_main_alloca1, align 4
  %dd_main_call1 = call noundef i32 @_Z10computeSumii(i32 noundef 7, i32 noundef 8)
  store i32 %dd_main_call1, ptr %dd_main_alloca2, align 4
  %dd_main_call2 = call noundef i32 @_Z8multiplyii(i32 noundef 3, i32 noundef 4)
  store i32 %dd_main_call2, ptr %dd_main_alloca3, align 4
  %dd_main_load1 = load i32, ptr %dd_main_alloca2, align 4
  %dd_main_load2 = load i32, ptr %dd_main_alloca3, align 4
  %dd_main_add1 = add nsw i32 %dd_main_load1, %dd_main_load2
  call void @_Z11printResulti(i32 noundef %dd_main_add1)
  ret i32 0
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
