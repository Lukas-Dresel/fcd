; ModuleID = 'test'
target datalayout = "e-n8:16:32:64-p0:64:64:64-p1:64:64:64"
target triple = "x86_64-unknown-unknown"

%struct.x86_config = type { i32, i64, i32, i32, i32 }
%struct.x86_regs = type { %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg }
%union.x86_qword_reg = type { i64 }
%main.returns = type { i64, i64 }
%__stack_chk_fail.returns = type { i64, i64 }

@config = private constant %struct.x86_config { i32 64, i64 8, i32 41, i32 44, i32 36 }

define void @frame_dummy(i64 %rip, i64 %rsp) !fcd.vaddr !2 !fcd.output !3 !fcd.recoverable !3 !fcd.stackptr !4 {
entry:
  %0 = add i64 %rsp, -8
  %1 = inttoptr i64 %0 to i64*
  store i64 %rip, i64* %1, align 4, !fcd.prgmem !3
  ret void
}

define void @0(%struct.x86_regs*) {
  call void @fcd.placeholder.15(%struct.x86_regs* %0)
  ret void
}

declare void @x86_call_intrin(%struct.x86_config*, %struct.x86_regs*, i64) #0

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #1

; Function Attrs: noreturn
declare void @x86_jump_intrin(%struct.x86_config*, %struct.x86_regs*, i64) #2

define void @__libc_csu_fini(i64 %rip, i64 %rsp) !fcd.vaddr !5 !fcd.output !3 !fcd.recoverable !3 !fcd.stackptr !4 {
entry:
  %0 = add i64 %rsp, -8
  %1 = inttoptr i64 %0 to i64*
  store i64 %rip, i64* %1, align 4, !fcd.prgmem !3
  ret void
}

define void @1(%struct.x86_regs*) {
  call void @fcd.placeholder.17(%struct.x86_regs* %0)
  ret void
}

define void @register_tm_clones(i64 %rip, i64 %rsp) !fcd.vaddr !6 !fcd.output !3 !fcd.recoverable !3 !fcd.stackptr !4 {
entry:
  %0 = add i64 %rsp, -8
  %1 = inttoptr i64 %0 to i64*
  store i64 %rip, i64* %1, align 4, !fcd.prgmem !3
  ret void
}

define void @2(%struct.x86_regs*) {
  call void @fcd.placeholder.19(%struct.x86_regs* %0)
  ret void
}

define void @__libc_csu_init(i64 %rip, i64 %rsp, i64 %rdi, i64 %rsi, i64 %rdx) !fcd.vaddr !7 !fcd.output !3 !fcd.recoverable !3 !fcd.funver !4 !fcd.stackptr !4 {
entry:
  %0 = add i64 %rsp, -8
  %1 = inttoptr i64 %0 to i64*
  store i64 %rip, i64* %1, align 4, !fcd.prgmem !3
  %2 = add i64 %rsp, -64
  call void @_init(i64 4196017, i64 %2)
  br label %"4006c0"

"4006d6":                                         ; preds = %"4006c0"
  ret void

"4006c0":                                         ; preds = %"4006c0", %entry
  %registers.sroa.0.0 = phi i64 [ 0, %entry ], [ %8, %"4006c0" ]
  %3 = and i64 %rdi, 4294967295
  %4 = shl i64 %registers.sroa.0.0, 3
  %5 = add i64 %4, 6295056
  %6 = inttoptr i64 %5 to void (i64, i64, i64)**
  %7 = load void (i64, i64, i64)*, void (i64, i64, i64)** %6, align 8
  call void %7(i64 %3, i64 %rsi, i64 %rdx)
  %8 = add i64 %registers.sroa.0.0, 1
  %9 = icmp eq i64 %registers.sroa.0.0, 0
  br i1 %9, label %"4006d6", label %"4006c0"

; uselistorder directives
  uselistorder i64 %registers.sroa.0.0, { 1, 2, 0 }
}

define void @3(%struct.x86_regs*) {
  call void @fcd.placeholder.21(%struct.x86_regs* %0)
  ret void
}

define void @_init(i64 %rip, i64 %rsp) !fcd.vaddr !8 !fcd.output !3 !fcd.recoverable !3 !fcd.funver !4 !fcd.stackptr !4 {
entry:
  %0 = add i64 %rsp, -8
  %1 = inttoptr i64 %0 to i64*
  store i64 %rip, i64* %1, align 4, !fcd.prgmem !3
  %2 = load i64, i64* inttoptr (i64 6295544 to i64*), align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %"4004b5", label %"4004b0"

"4004b5":                                         ; preds = %entry, %"4004b0"
  ret void

"4004b0":                                         ; preds = %entry
  %4 = add i64 %rsp, -16
  call void @func_400510(i64 4195509, i64 %4)
  br label %"4004b5"

; uselistorder directives
  uselistorder i64 0, { 2, 0, 1 }
  uselistorder label %"4004b5", { 1, 0 }
}

define void @4(%struct.x86_regs*) {
  call void @fcd.placeholder.23(%struct.x86_regs* %0)
  ret void
}

define void @__do_global_dtors_aux(i64 %rip, i64 %rsp) !fcd.vaddr !9 !fcd.output !3 !fcd.recoverable !3 !fcd.funver !4 !fcd.stackptr !4 {
entry:
  %0 = add i64 %rsp, -8
  %1 = inttoptr i64 %0 to i64*
  store i64 %rip, i64* %1, align 4, !fcd.prgmem !3
  %2 = load i8, i8* inttoptr (i64 6295640 to i8*), align 8
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %"4005d9", label %"4005ea"

"4005ea":                                         ; preds = %entry, %"4005d9"
  ret void

"4005d9":                                         ; preds = %entry
  %4 = add i64 %rsp, -16
  call void @deregister_tm_clones(i64 4195810, i64 %4)
  store i8 1, i8* inttoptr (i64 6295640 to i8*), align 8, !fcd.prgmem !3
  br label %"4005ea"

; uselistorder directives
  uselistorder label %"4005ea", { 1, 0 }
}

define void @5(%struct.x86_regs*) {
  call void @fcd.placeholder.25(%struct.x86_regs* %0)
  ret void
}

define void @deregister_tm_clones(i64 %rip, i64 %rsp) !fcd.vaddr !10 !fcd.output !3 !fcd.recoverable !3 !fcd.stackptr !4 {
entry:
  %0 = add i64 %rsp, -8
  %1 = inttoptr i64 %0 to i64*
  store i64 %rip, i64* %1, align 4, !fcd.prgmem !3
  ret void
}

define void @6(%struct.x86_regs*) {
  call void @fcd.placeholder.27(%struct.x86_regs* %0)
  ret void
}

define void @_start(i64 %rip, i64 %rsp, i64 %rdx) !fcd.vaddr !11 !fcd.output !3 !fcd.recoverable !3 !fcd.funver !4 !fcd.stackptr !4 {
entry:
  %0 = add i64 %rsp, -8
  %1 = inttoptr i64 %0 to i64*
  store i64 %rip, i64* %1, align 4, !fcd.prgmem !3
  %2 = and i64 %rsp, -16
  %3 = add i64 %2, -8
  %4 = add i64 %2, -16
  %5 = inttoptr i64 %4 to i64*
  store i64 %3, i64* %5, align 16, !fcd.prgmem !3
  %6 = inttoptr i64 %4 to i64 addrspace(1)*
  %7 = load i64, i64 addrspace(1)* %6, align 16
  %8 = call i64 @__libc_start_main(i64 4195862, i64 %rip, i64 %rsp, i64 4195968, i64 4196080, i64 %rdx, i64 %7)
  tail call void @llvm.trap()
  unreachable

; uselistorder directives
  uselistorder i64 %rsp, { 2, 0, 1 }
}

define void @7(%struct.x86_regs*) {
  call void @fcd.placeholder.29(%struct.x86_regs* %0)
  ret void
}

define i64 @__libc_start_main(i64 %rdi, i64 %rsi, i64 %rdx, i64 %rcx, i64 %r8, i64 %r9, i64 %sp0) !fcd.output !3 {
  %1 = call i64 @fcd.placeholder.44(i64 %rdi, i64 %rsi, i64 %rdx, i64 %rcx, i64 %r8, i64 %r9, i64 %sp0)
  ret i64 %1
}

define void @8(%struct.x86_regs*) {
  call void @fcd.placeholder.31(%struct.x86_regs* %0)
  ret void
}

define void @_fini(i64 %rip, i64 %rsp) !fcd.vaddr !12 !fcd.output !3 !fcd.recoverable !3 !fcd.stackptr !4 {
entry:
  %0 = add i64 %rsp, -8
  %1 = inttoptr i64 %0 to i64*
  store i64 %rip, i64* %1, align 4, !fcd.prgmem !3
  ret void
}

define void @9(%struct.x86_regs*) {
  call void @fcd.placeholder.33(%struct.x86_regs* %0)
  ret void
}

define %main.returns @main(i64 %rip, i64 %rsp) !fcd.vaddr !13 !fcd.output !3 !fcd.recoverable !3 !fcd.funver !14 !fcd.stackptr !4 {
entry:
  %0 = add i64 %rsp, -8
  %1 = inttoptr i64 %0 to i64*
  store i64 %rip, i64* %1, align 4, !fcd.prgmem !3
  call void @llvm.trap()
  unreachable
}

define void @10(%struct.x86_regs*) {
  call void @fcd.placeholder.35(%struct.x86_regs* %0)
  ret void
}

define i64 @fgets(i64 %rdi, i64 %rsi, i64 %rdx) !fcd.output !3 {
  %1 = call i64 @fcd.placeholder.45(i64 %rdi, i64 %rsi, i64 %rdx)
  ret i64 %1
}

define void @11(%struct.x86_regs*) {
  call void @fcd.placeholder.37(%struct.x86_regs* %0)
  ret void
}

define i64 @puts(i64 %rdi) !fcd.output !3 {
  %1 = call i64 @fcd.placeholder.46(i64 %rdi)
  ret i64 %1
}

define void @12(%struct.x86_regs*) {
  call void @fcd.placeholder.39(%struct.x86_regs* %0)
  ret void
}

define %__stack_chk_fail.returns @__stack_chk_fail(i64 %rcx) !fcd.output !3 {
  %1 = call %__stack_chk_fail.returns @fcd.placeholder.47(i64 %rcx)
  ret %__stack_chk_fail.returns %1
}

define void @13(%struct.x86_regs*) {
  call void @fcd.placeholder.41(%struct.x86_regs* %0)
  ret void
}

define void @func_400510(i64 %rip, i64 %rsp) !fcd.vaddr !15 !fcd.output !3 !fcd.recoverable !3 !fcd.stackptr !4 {
entry:
  %0 = add i64 %rsp, -8
  %1 = inttoptr i64 %0 to i64*
  store i64 %rip, i64* %1, align 4, !fcd.prgmem !3
  %2 = load i64, i64* inttoptr (i64 6295544 to i64*), align 8
  call void @__indirect_jump(i64 %2)
  unreachable
}

define void @14(%struct.x86_regs*) {
  call void @fcd.placeholder.43(%struct.x86_regs* %0)
  ret void
}

; Function Attrs: noreturn
declare void @__indirect_jump(i64) #3

declare extern_weak void @fcd.placeholder(i64, i64)

declare extern_weak void @fcd.placeholder.15(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.16(i64, i64)

declare extern_weak void @fcd.placeholder.17(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.18(i64, i64)

declare extern_weak void @fcd.placeholder.19(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.20(i64, i64, i64, i64, i64)

declare extern_weak void @fcd.placeholder.21(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.22(i64, i64)

declare extern_weak void @fcd.placeholder.23(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.24(i64, i64)

declare extern_weak void @fcd.placeholder.25(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.26(i64, i64)

declare extern_weak void @fcd.placeholder.27(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.28(i64, i64, i64)

declare extern_weak void @fcd.placeholder.29(%struct.x86_regs*)

declare extern_weak i64 @fcd.placeholder.30(i64, i64, i64, i64, i64, i64, i64)

declare extern_weak void @fcd.placeholder.31(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.32(i64, i64)

declare extern_weak void @fcd.placeholder.33(%struct.x86_regs*)

declare extern_weak %main.returns @fcd.placeholder.34(i64, i64)

declare extern_weak void @fcd.placeholder.35(%struct.x86_regs*)

declare extern_weak i64 @fcd.placeholder.36(i64, i64, i64)

declare extern_weak void @fcd.placeholder.37(%struct.x86_regs*)

declare extern_weak i64 @fcd.placeholder.38(i64)

declare extern_weak void @fcd.placeholder.39(%struct.x86_regs*)

declare extern_weak %__stack_chk_fail.returns @fcd.placeholder.40(i64)

declare extern_weak void @fcd.placeholder.41(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.42(i64, i64)

declare extern_weak void @fcd.placeholder.43(%struct.x86_regs*)

declare extern_weak i64 @fcd.placeholder.44(i64, i64, i64, i64, i64, i64, i64)

declare extern_weak i64 @fcd.placeholder.45(i64, i64, i64)

declare extern_weak i64 @fcd.placeholder.46(i64)

declare extern_weak %__stack_chk_fail.returns @fcd.placeholder.47(i64)

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!main.returns.fcd.fields = !{!0, !1}
!__stack_chk_fail.returns.fcd.fields = !{!1, !0}

!0 = !{!"rax"}
!1 = !{!"rdx"}
!2 = !{i64 4195824}
!3 = !{i1 true}
!4 = !{i32 1}
!5 = !{i64 4196080}
!6 = !{i64 4195728}
!7 = !{i64 4195968}
!8 = !{i64 4195488}
!9 = !{i64 4195792}
!10 = !{i64 4195664}
!11 = !{i64 4195616}
!12 = !{i64 4196084}
!13 = !{i64 4195862}
!14 = !{i32 3}
!15 = !{i64 4195600}