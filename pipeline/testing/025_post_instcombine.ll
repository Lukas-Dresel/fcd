; ModuleID = 'test'
target datalayout = "e-n8:16:32:64-p0:64:64:64-p1:64:64:64"
target triple = "x86_64-unknown-unknown"

%struct.x86_regs = type { %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg, %union.x86_qword_reg }
%union.x86_qword_reg = type { i64 }
%main.returns = type { i64, i64 }
%movdqa.return = type {}
%movdqa.return.0 = type {}
%pxor.return = type {}
%movaps.return = type {}
%movdqa.return.1 = type {}
%pxor.return.2 = type {}
%movaps.return.3 = type {}
%movdqa.return.4 = type {}
%pxor.return.5 = type {}
%movaps.return.6 = type {}
%movdqa.return.7 = type {}
%pxor.return.8 = type {}
%movaps.return.9 = type {}
%movdqa.return.10 = type {}
%pxor.return.11 = type {}
%pxor.return.12 = type {}
%movaps.return.13 = type {}
%movaps.return.14 = type {}
%__stack_chk_fail.returns = type { i64, i64 }

define void @__libc_csu_init(i64 %rip, i64 %rdi, i64 %rsi, i64 %rdx) !fcd.vaddr !2 !fcd.output !3 !fcd.recoverable !3 {
entry:
  call void @_init(i64 4196113)
  %0 = and i64 %rdi, 4294967295
  %1 = load void (i64, i64, i64)*, void (i64, i64, i64)** inttoptr (i64 6295056 to void (i64, i64, i64)**), align 16
  call void %1(i64 %0, i64 %rsi, i64 %rdx)
  ret void
}

define void @0(%struct.x86_regs*) {
  call void @fcd.placeholder.50(%struct.x86_regs* %0)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #0

define void @_init(i64 %rip) !fcd.vaddr !4 !fcd.output !3 !fcd.recoverable !3 {
entry:
  %0 = load i64, i64* inttoptr (i64 6295544 to i64*), align 8
  %1 = icmp eq i64 %0, 0
  br i1 %1, label %"4004b5", label %"4004b0"

"4004b5":                                         ; preds = %entry, %"4004b0"
  ret void

"4004b0":                                         ; preds = %entry
  call void @func_400510(i64 4195509)
  br label %"4004b5"
}

define void @1(%struct.x86_regs*) {
  call void @fcd.placeholder.52(%struct.x86_regs* %0)
  ret void
}

define void @__libc_csu_fini(i64 %rip) !fcd.vaddr !5 !fcd.output !3 !fcd.recoverable !3 {
entry:
  ret void
}

define void @2(%struct.x86_regs*) {
  call void @fcd.placeholder.54(%struct.x86_regs* %0)
  ret void
}

define void @register_tm_clones(i64 %rip) !fcd.vaddr !6 !fcd.output !3 !fcd.recoverable !3 {
entry:
  ret void
}

define void @3(%struct.x86_regs*) {
  call void @fcd.placeholder.56(%struct.x86_regs* %0)
  ret void
}

define void @_start(i64 %rip, i64 %rsp, i64 %rdx) !fcd.vaddr !7 !fcd.output !3 !fcd.recoverable !3 !fcd.funver !8 !fcd.stackptr !8 {
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
  %8 = call i64 @__libc_start_main(i64 4195616, i64 %rip, i64 %rsp, i64 4196064, i64 4196176, i64 %rdx, i64 %7)
  tail call void @llvm.trap()
  unreachable
}

define void @4(%struct.x86_regs*) {
  call void @fcd.placeholder.58(%struct.x86_regs* %0)
  ret void
}

define i64 @__libc_start_main(i64 %rdi, i64 %rsi, i64 %rdx, i64 %rcx, i64 %r8, i64 %r9, i64 %sp0) !fcd.output !3 {
  %1 = call i64 @fcd.placeholder.79(i64 %rdi, i64 %rsi, i64 %rdx, i64 %rcx, i64 %r8, i64 %r9, i64 %sp0)
  ret i64 %1
}

define void @5(%struct.x86_regs*) {
  call void @fcd.placeholder.60(%struct.x86_regs* %0)
  ret void
}

define void @__do_global_dtors_aux(i64 %rip) !fcd.vaddr !9 !fcd.output !3 !fcd.recoverable !3 {
entry:
  %0 = load i8, i8* inttoptr (i64 6295640 to i8*), align 8
  %1 = icmp eq i8 %0, 0
  br i1 %1, label %"400699", label %"4006aa"

"4006aa":                                         ; preds = %entry, %"400699"
  ret void

"400699":                                         ; preds = %entry
  call void @deregister_tm_clones(i64 4196002)
  store i8 1, i8* inttoptr (i64 6295640 to i8*), align 8, !fcd.prgmem !3
  br label %"4006aa"
}

define void @6(%struct.x86_regs*) {
  call void @fcd.placeholder.62(%struct.x86_regs* %0)
  ret void
}

define void @deregister_tm_clones(i64 %rip) !fcd.vaddr !10 !fcd.output !3 !fcd.recoverable !3 {
entry:
  ret void
}

define void @7(%struct.x86_regs*) {
  call void @fcd.placeholder.64(%struct.x86_regs* %0)
  ret void
}

define %main.returns @main(i64 %rip) !fcd.vaddr !11 !fcd.output !3 !fcd.recoverable !3 {
entry:
  call void @llvm.trap()
  unreachable
}

define void @8(%struct.x86_regs*) {
  call void @fcd.placeholder.66(%struct.x86_regs* %0)
  ret void
}

define i64 @fgets(i64 %rdi, i64 %rsi, i64 %rdx) !fcd.output !3 {
  %1 = call i64 @fcd.placeholder.80(i64 %rdi, i64 %rsi, i64 %rdx)
  ret i64 %1
}

define void @9(%struct.x86_regs*) {
  call void @fcd.placeholder.68(%struct.x86_regs* %0)
  ret void
}

define %movdqa.return @fcd.asm() !fcd.asm !12 {
  %1 = call %movdqa.return @fcd.placeholder.10()
  ret %movdqa.return %1
}

declare extern_weak %movdqa.return @fcd.placeholder.10()

define %movdqa.return.0 @fcd.asm.11() !fcd.asm !13 {
  %1 = call %movdqa.return.0 @fcd.placeholder.12()
  ret %movdqa.return.0 %1
}

declare extern_weak %movdqa.return.0 @fcd.placeholder.12()

define %pxor.return @fcd.asm.13() !fcd.asm !14 {
  %1 = call %pxor.return @fcd.placeholder.14()
  ret %pxor.return %1
}

declare extern_weak %pxor.return @fcd.placeholder.14()

define %movaps.return @fcd.asm.15() !fcd.asm !15 {
  %1 = call %movaps.return @fcd.placeholder.16()
  ret %movaps.return %1
}

declare extern_weak %movaps.return @fcd.placeholder.16()

define %movdqa.return.1 @fcd.asm.17() !fcd.asm !16 {
  %1 = call %movdqa.return.1 @fcd.placeholder.18()
  ret %movdqa.return.1 %1
}

declare extern_weak %movdqa.return.1 @fcd.placeholder.18()

define %pxor.return.2 @fcd.asm.19() !fcd.asm !14 {
  %1 = call %pxor.return.2 @fcd.placeholder.20()
  ret %pxor.return.2 %1
}

declare extern_weak %pxor.return.2 @fcd.placeholder.20()

define %movaps.return.3 @fcd.asm.21() !fcd.asm !17 {
  %1 = call %movaps.return.3 @fcd.placeholder.22()
  ret %movaps.return.3 %1
}

declare extern_weak %movaps.return.3 @fcd.placeholder.22()

define %movdqa.return.4 @fcd.asm.23() !fcd.asm !18 {
  %1 = call %movdqa.return.4 @fcd.placeholder.24()
  ret %movdqa.return.4 %1
}

declare extern_weak %movdqa.return.4 @fcd.placeholder.24()

define %pxor.return.5 @fcd.asm.25() !fcd.asm !14 {
  %1 = call %pxor.return.5 @fcd.placeholder.26()
  ret %pxor.return.5 %1
}

declare extern_weak %pxor.return.5 @fcd.placeholder.26()

define %movaps.return.6 @fcd.asm.27() !fcd.asm !19 {
  %1 = call %movaps.return.6 @fcd.placeholder.28()
  ret %movaps.return.6 %1
}

declare extern_weak %movaps.return.6 @fcd.placeholder.28()

define %movdqa.return.7 @fcd.asm.29() !fcd.asm !20 {
  %1 = call %movdqa.return.7 @fcd.placeholder.30()
  ret %movdqa.return.7 %1
}

declare extern_weak %movdqa.return.7 @fcd.placeholder.30()

define %pxor.return.8 @fcd.asm.31() !fcd.asm !14 {
  %1 = call %pxor.return.8 @fcd.placeholder.32()
  ret %pxor.return.8 %1
}

declare extern_weak %pxor.return.8 @fcd.placeholder.32()

define %movaps.return.9 @fcd.asm.33() !fcd.asm !21 {
  %1 = call %movaps.return.9 @fcd.placeholder.34()
  ret %movaps.return.9 %1
}

declare extern_weak %movaps.return.9 @fcd.placeholder.34()

define %movdqa.return.10 @fcd.asm.35() !fcd.asm !22 {
  %1 = call %movdqa.return.10 @fcd.placeholder.36()
  ret %movdqa.return.10 %1
}

declare extern_weak %movdqa.return.10 @fcd.placeholder.36()

define %pxor.return.11 @fcd.asm.37() !fcd.asm !14 {
  %1 = call %pxor.return.11 @fcd.placeholder.38()
  ret %pxor.return.11 %1
}

declare extern_weak %pxor.return.11 @fcd.placeholder.38()

define %pxor.return.12 @fcd.asm.39() !fcd.asm !23 {
  %1 = call %pxor.return.12 @fcd.placeholder.40()
  ret %pxor.return.12 %1
}

declare extern_weak %pxor.return.12 @fcd.placeholder.40()

define %movaps.return.13 @fcd.asm.41() !fcd.asm !24 {
  %1 = call %movaps.return.13 @fcd.placeholder.42()
  ret %movaps.return.13 %1
}

declare extern_weak %movaps.return.13 @fcd.placeholder.42()

define %movaps.return.14 @fcd.asm.43() !fcd.asm !25 {
  %1 = call %movaps.return.14 @fcd.placeholder.44()
  ret %movaps.return.14 %1
}

declare extern_weak %movaps.return.14 @fcd.placeholder.44()

define i64 @puts(i64 %rdi) !fcd.output !3 {
  %1 = call i64 @fcd.placeholder.81(i64 %rdi)
  ret i64 %1
}

define void @10(%struct.x86_regs*) {
  call void @fcd.placeholder.70(%struct.x86_regs* %0)
  ret void
}

define %__stack_chk_fail.returns @__stack_chk_fail(i64 %rcx) !fcd.output !3 {
  %1 = call %__stack_chk_fail.returns @fcd.placeholder.82(i64 %rcx)
  ret %__stack_chk_fail.returns %1
}

define void @11(%struct.x86_regs*) {
  call void @fcd.placeholder.72(%struct.x86_regs* %0)
  ret void
}

define void @_fini(i64 %rip) !fcd.vaddr !26 !fcd.output !3 !fcd.recoverable !3 {
entry:
  ret void
}

define void @12(%struct.x86_regs*) {
  call void @fcd.placeholder.74(%struct.x86_regs* %0)
  ret void
}

define void @frame_dummy(i64 %rip) !fcd.vaddr !27 !fcd.output !3 !fcd.recoverable !3 {
entry:
  ret void
}

define void @13(%struct.x86_regs*) {
  call void @fcd.placeholder.76(%struct.x86_regs* %0)
  ret void
}

define void @func_400510(i64 %rip) !fcd.vaddr !28 !fcd.output !3 !fcd.recoverable !3 {
entry:
  %0 = load i64, i64* inttoptr (i64 6295544 to i64*), align 8
  call void @__indirect_jump(i64 %0)
  unreachable
}

define void @14(%struct.x86_regs*) {
  call void @fcd.placeholder.78(%struct.x86_regs* %0)
  ret void
}

; Function Attrs: noreturn
declare void @__indirect_jump(i64) #1

declare extern_weak void @fcd.placeholder.50(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.52(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.54(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.56(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.58(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.60(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.62(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.64(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.66(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.68(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.70(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.72(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.74(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.76(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.78(%struct.x86_regs*)

declare extern_weak i64 @fcd.placeholder.79(i64, i64, i64, i64, i64, i64, i64)

declare extern_weak i64 @fcd.placeholder.80(i64, i64, i64)

declare extern_weak i64 @fcd.placeholder.81(i64)

declare extern_weak %__stack_chk_fail.returns @fcd.placeholder.82(i64)

attributes #0 = { noreturn nounwind }
attributes #1 = { noreturn }

!movdqa.return.fcd.fields = !{}
!movdqa.return.0.fcd.fields = !{}
!pxor.return.fcd.fields = !{}
!movaps.return.fcd.fields = !{}
!movdqa.return.1.fcd.fields = !{}
!pxor.return.2.fcd.fields = !{}
!movaps.return.3.fcd.fields = !{}
!movdqa.return.4.fcd.fields = !{}
!pxor.return.5.fcd.fields = !{}
!movaps.return.6.fcd.fields = !{}
!movdqa.return.7.fcd.fields = !{}
!pxor.return.8.fcd.fields = !{}
!movaps.return.9.fcd.fields = !{}
!movdqa.return.10.fcd.fields = !{}
!pxor.return.11.fcd.fields = !{}
!pxor.return.12.fcd.fields = !{}
!movaps.return.13.fcd.fields = !{}
!movaps.return.14.fcd.fields = !{}
!main.returns.fcd.fields = !{!0, !1}
!__stack_chk_fail.returns.fcd.fields = !{!1, !0}

!0 = !{!"rax"}
!1 = !{!"rdx"}
!2 = !{i64 4196064}
!3 = !{i1 true}
!4 = !{i64 4195488}
!5 = !{i64 4196176}
!6 = !{i64 4195920}
!7 = !{i64 4195808}
!8 = !{i32 1}
!9 = !{i64 4195984}
!10 = !{i64 4195856}
!11 = !{i64 4195616}
!12 = !{!"movdqa xmm0, xmmword ptr [rip + 0x220]"}
!13 = !{!"movdqa xmm1, xmmword ptr [rsp]"}
!14 = !{!"pxor xmm1, xmm0"}
!15 = !{!"movaps xmmword ptr [rsp], xmm1"}
!16 = !{!"movdqa xmm1, xmmword ptr [rsp + 0x10]"}
!17 = !{!"movaps xmmword ptr [rsp + 0x10], xmm1"}
!18 = !{!"movdqa xmm1, xmmword ptr [rsp + 0x20]"}
!19 = !{!"movaps xmmword ptr [rsp + 0x20], xmm1"}
!20 = !{!"movdqa xmm1, xmmword ptr [rsp + 0x30]"}
!21 = !{!"movaps xmmword ptr [rsp + 0x30], xmm1"}
!22 = !{!"movdqa xmm1, xmmword ptr [rsp + 0x40]"}
!23 = !{!"pxor xmm0, xmmword ptr [rsp + 0x50]"}
!24 = !{!"movaps xmmword ptr [rsp + 0x40], xmm1"}
!25 = !{!"movaps xmmword ptr [rsp + 0x50], xmm0"}
!26 = !{i64 4196180}
!27 = !{i64 4196016}
!28 = !{i64 4195600}
