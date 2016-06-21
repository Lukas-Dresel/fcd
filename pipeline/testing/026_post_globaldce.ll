; ModuleID = 'test'
target datalayout = "e-n8:16:32:64-p0:64:64:64-p1:64:64:64"
target triple = "x86_64-unknown-unknown"

%struct.x86_regs = type { %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg }
%union.x86_qword_reg = type { i64 }
%main.returns = type { i64, i64 }
%__stack_chk_fail.returns = type { i64, i64 }

define void @frame_dummy(i64 %rip) !fcd.vaddr !2 !fcd.output !3 !fcd.recoverable !3 {
entry:
  ret void
}

define void @0(%struct.x86_regs*) {
  call void @fcd.placeholder.15(%struct.x86_regs* %0)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #0

define void @__libc_csu_fini(i64 %rip) !fcd.vaddr !4 !fcd.output !3 !fcd.recoverable !3 {
entry:
  ret void
}

define void @1(%struct.x86_regs*) {
  call void @fcd.placeholder.17(%struct.x86_regs* %0)
  ret void
}

define void @register_tm_clones(i64 %rip) !fcd.vaddr !5 !fcd.output !3 !fcd.recoverable !3 {
entry:
  ret void
}

define void @2(%struct.x86_regs*) {
  call void @fcd.placeholder.19(%struct.x86_regs* %0)
  ret void
}

define void @__libc_csu_init(i64 %rip, i64 %rdi, i64 %rsi, i64 %rdx) !fcd.vaddr !6 !fcd.output !3 !fcd.recoverable !3 {
entry:
  call void @_init(i64 4196017)
  %0 = and i64 %rdi, 4294967295
  %1 = load void (i64, i64, i64)*, void (i64, i64, i64)** inttoptr (i64 6295056 to void (i64, i64, i64)**), align 16
  call void %1(i64 %0, i64 %rsi, i64 %rdx)
  ret void
}

define void @3(%struct.x86_regs*) {
  call void @fcd.placeholder.21(%struct.x86_regs* %0)
  ret void
}

define void @_init(i64 %rip) !fcd.vaddr !7 !fcd.output !3 !fcd.recoverable !3 {
entry:
  %0 = load i64, i64* inttoptr (i64 6295544 to i64*), align 8
  %1 = icmp eq i64 %0, 0
  br i1 %1, label %"4004b5", label %"4004b0"

"4004b5":                                         ; preds = %entry, %"4004b0"
  ret void

"4004b0":                                         ; preds = %entry
  call void @func_400510(i64 4195509)
  br label %"4004b5"

; uselistorder directives
  uselistorder label %"4004b5", { 1, 0 }
}

define void @4(%struct.x86_regs*) {
  call void @fcd.placeholder.23(%struct.x86_regs* %0)
  ret void
}

define void @__do_global_dtors_aux(i64 %rip) !fcd.vaddr !8 !fcd.output !3 !fcd.recoverable !3 {
entry:
  %0 = load i8, i8* inttoptr (i64 6295640 to i8*), align 8
  %1 = icmp eq i8 %0, 0
  br i1 %1, label %"4005d9", label %"4005ea"

"4005ea":                                         ; preds = %entry, %"4005d9"
  ret void

"4005d9":                                         ; preds = %entry
  call void @deregister_tm_clones(i64 4195810)
  store i8 1, i8* inttoptr (i64 6295640 to i8*), align 8, !fcd.prgmem !3
  br label %"4005ea"

; uselistorder directives
  uselistorder label %"4005ea", { 1, 0 }
}

define void @5(%struct.x86_regs*) {
  call void @fcd.placeholder.25(%struct.x86_regs* %0)
  ret void
}

define void @deregister_tm_clones(i64 %rip) !fcd.vaddr !9 !fcd.output !3 !fcd.recoverable !3 {
entry:
  ret void
}

define void @6(%struct.x86_regs*) {
  call void @fcd.placeholder.27(%struct.x86_regs* %0)
  ret void
}

define void @_start(i64 %rip, i64 %rsp, i64 %rdx) !fcd.vaddr !10 !fcd.output !3 !fcd.recoverable !3 !fcd.funver !11 !fcd.stackptr !11 {
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

define void @_fini(i64 %rip) !fcd.vaddr !12 !fcd.output !3 !fcd.recoverable !3 {
entry:
  ret void
}

define void @9(%struct.x86_regs*) {
  call void @fcd.placeholder.33(%struct.x86_regs* %0)
  ret void
}

define %main.returns @main(i64 %rip) !fcd.vaddr !13 !fcd.output !3 !fcd.recoverable !3 {
entry:
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

define void @func_400510(i64 %rip) !fcd.vaddr !14 !fcd.output !3 !fcd.recoverable !3 {
entry:
  %0 = load i64, i64* inttoptr (i64 6295544 to i64*), align 8
  call void @__indirect_jump(i64 %0)
  unreachable
}

define void @14(%struct.x86_regs*) {
  call void @fcd.placeholder.43(%struct.x86_regs* %0)
  ret void
}

; Function Attrs: noreturn
declare void @__indirect_jump(i64) #1

declare extern_weak void @fcd.placeholder.15(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.17(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.19(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.21(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.23(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.25(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.27(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.29(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.31(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.33(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.35(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.37(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.39(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.41(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.43(%struct.x86_regs*)

declare extern_weak i64 @fcd.placeholder.44(i64, i64, i64, i64, i64, i64, i64)

declare extern_weak i64 @fcd.placeholder.45(i64, i64, i64)

declare extern_weak i64 @fcd.placeholder.46(i64)

declare extern_weak %__stack_chk_fail.returns @fcd.placeholder.47(i64)

attributes #0 = { noreturn nounwind }
attributes #1 = { noreturn }

!main.returns.fcd.fields = !{!0, !1}
!__stack_chk_fail.returns.fcd.fields = !{!1, !0}

!0 = !{!"rax"}
!1 = !{!"rdx"}
!2 = !{i64 4195824}
!3 = !{i1 true}
!4 = !{i64 4196080}
!5 = !{i64 4195728}
!6 = !{i64 4195968}
!7 = !{i64 4195488}
!8 = !{i64 4195792}
!9 = !{i64 4195664}
!10 = !{i64 4195616}
!11 = !{i32 1}
!12 = !{i64 4196084}
!13 = !{i64 4195862}
!14 = !{i64 4195600}