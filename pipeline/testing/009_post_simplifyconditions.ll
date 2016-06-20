; ModuleID = 'test'
target datalayout = "e-n8:16:32:64-p0:64:64:64-p1:64:64:64"
target triple = "x86_64-unknown-unknown"

%struct.x86_config = type { i32, i64, i32, i32, i32 }
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

@config = private constant %struct.x86_config { i32 64, i64 8, i32 41, i32 44, i32 36 }

define void @__libc_csu_init(i64 %rip, i64 %rsp, i64 %rdi, i64 %rsi, i64 %rdx) !fcd.vaddr !2 !fcd.output !3 !fcd.recoverable !3 !fcd.funver !4 !fcd.stackptr !4 {
entry:
  %0 = add i64 %rsp, -8
  %1 = inttoptr i64 %0 to i64*
  store i64 %rip, i64* %1, align 4, !fcd.prgmem !3
  %2 = add i64 %rsp, -64
  call void @_init(i64 4196113, i64 %2)
  br i1 false, label %"400736", label %"400716"

"400736":                                         ; preds = %"400720", %entry
  ret void

"400716":                                         ; preds = %entry
  br label %"400720"

"400720":                                         ; preds = %"400720", %"400716"
  %registers.sroa.0.0 = phi i64 [ 0, %"400716" ], [ %9, %"400720" ]
  %3 = phi i64 [ 0, %"400716" ], [ %9, %"400720" ]
  %4 = and i64 %rdi, 4294967295
  %5 = shl i64 %3, 3
  %6 = add i64 %5, 6295056
  %7 = inttoptr i64 %6 to void (i64, i64, i64)**
  %8 = load void (i64, i64, i64)*, void (i64, i64, i64)** %7, align 8
  call void %8(i64 %4, i64 %rsi, i64 %rdx)
  %9 = add i64 %registers.sroa.0.0, 1
  %10 = icmp eq i64 %registers.sroa.0.0, 0
  br i1 %10, label %"400736", label %"400720"
                                                  ; No predecessors!
  ret void

; uselistorder directives
  uselistorder i64 %9, { 1, 0 }
}

define void @0(%struct.x86_regs*) {
  call void @fcd.placeholder.50(%struct.x86_regs* %0)
  ret void
}

declare void @x86_call_intrin(%struct.x86_config*, %struct.x86_regs*, i64) #0

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #1

; Function Attrs: noreturn
declare void @x86_jump_intrin(%struct.x86_config*, %struct.x86_regs*, i64) #2

define void @_init(i64 %rip, i64 %rsp) !fcd.vaddr !5 !fcd.output !3 !fcd.recoverable !3 !fcd.funver !4 !fcd.stackptr !4 {
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
                                                  ; No predecessors!
  ret void

; uselistorder directives
  uselistorder label %"4004b5", { 1, 0 }
}

define void @1(%struct.x86_regs*) {
  call void @fcd.placeholder.52(%struct.x86_regs* %0)
  ret void
}

define void @__libc_csu_fini(i64 %rip, i64 %rsp) !fcd.vaddr !6 !fcd.output !3 !fcd.recoverable !3 !fcd.stackptr !4 {
entry:
  %0 = add i64 %rsp, -8
  %1 = inttoptr i64 %0 to i64*
  store i64 %rip, i64* %1, align 4, !fcd.prgmem !3
  ret void
                                                  ; No predecessors!
  ret void
}

define void @2(%struct.x86_regs*) {
  call void @fcd.placeholder.54(%struct.x86_regs* %0)
  ret void
}

define void @register_tm_clones(i64 %rip, i64 %rsp) !fcd.vaddr !7 !fcd.output !3 !fcd.recoverable !3 !fcd.stackptr !4 {
entry:
  %0 = add i64 %rsp, -8
  %1 = inttoptr i64 %0 to i64*
  store i64 %rip, i64* %1, align 4, !fcd.prgmem !3
  ret void
                                                  ; No predecessors!
  ret void
}

define void @3(%struct.x86_regs*) {
  call void @fcd.placeholder.56(%struct.x86_regs* %0)
  ret void
}

define void @_start(i64 %rip, i64 %rsp, i64 %rdx) !fcd.vaddr !8 !fcd.output !3 !fcd.recoverable !3 !fcd.funver !4 !fcd.stackptr !4 {
entry:
  %0 = add i64 %rsp, -8
  %1 = inttoptr i64 %0 to i64*
  store i64 %rip, i64* %1, align 4, !fcd.prgmem !3
  %2 = and i64 %rsp, -16
  %3 = add i64 %2, -8
  %4 = add i64 %2, -16
  %5 = inttoptr i64 %4 to i64*
  store i64 %3, i64* %5, align 16, !fcd.prgmem !3
  %6 = add i64 %2, -16
  %7 = inttoptr i64 %6 to i64 addrspace(1)*
  %8 = load i64, i64 addrspace(1)* %7, align 16
  %9 = call i64 @__libc_start_main(i64 4195616, i64 %rip, i64 %rsp, i64 4196064, i64 4196176, i64 %rdx, i64 %8)
  tail call void @llvm.trap()
  unreachable
                                                  ; No predecessors!
  ret void

; uselistorder directives
  uselistorder i64 %rsp, { 2, 0, 1 }
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

define void @__do_global_dtors_aux(i64 %rip, i64 %rsp) !fcd.vaddr !9 !fcd.output !3 !fcd.recoverable !3 !fcd.funver !4 !fcd.stackptr !4 {
entry:
  %0 = add i64 %rsp, -8
  %1 = inttoptr i64 %0 to i64*
  store i64 %rip, i64* %1, align 4, !fcd.prgmem !3
  %2 = load i8, i8* inttoptr (i64 6295640 to i8*), align 8
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %"400699", label %"4006aa"

"4006aa":                                         ; preds = %entry, %"400699"
  ret void

"400699":                                         ; preds = %entry
  %4 = add i64 %rsp, -16
  call void @deregister_tm_clones(i64 4196002, i64 %4)
  store i8 1, i8* inttoptr (i64 6295640 to i8*), align 8, !fcd.prgmem !3
  br label %"4006aa"
                                                  ; No predecessors!
  ret void

; uselistorder directives
  uselistorder i64 -16, { 1, 0, 2, 3, 4 }
  uselistorder label %"4006aa", { 1, 0 }
}

define void @6(%struct.x86_regs*) {
  call void @fcd.placeholder.62(%struct.x86_regs* %0)
  ret void
}

define void @deregister_tm_clones(i64 %rip, i64 %rsp) !fcd.vaddr !10 !fcd.output !3 !fcd.recoverable !3 !fcd.stackptr !4 {
entry:
  %0 = add i64 %rsp, -8
  %1 = inttoptr i64 %0 to i64*
  store i64 %rip, i64* %1, align 4, !fcd.prgmem !3
  ret void
                                                  ; No predecessors!
  ret void
}

define void @7(%struct.x86_regs*) {
  call void @fcd.placeholder.64(%struct.x86_regs* %0)
  ret void
}

define %main.returns @main(i64 %rip, i64 %rsp) !fcd.vaddr !11 !fcd.output !3 !fcd.recoverable !3 !fcd.funver !12 !fcd.stackptr !4 {
entry:
  %0 = add i64 %rsp, -8
  %1 = inttoptr i64 %0 to i64*
  store i64 %rip, i64* %1, align 4, !fcd.prgmem !3
  %2 = add i64 %rsp, -128
  %3 = load i64, i64* inttoptr (i64 6295632 to i64*), align 16, !fcd.prgmem !3
  store i64 undef, i64* null, align 536870912
  %4 = call i64 @fgets(i64 %2, i64 99, i64 %3)
  %5 = call %movdqa.return @fcd.asm()
  %6 = add i64 %rsp, -32
  %7 = inttoptr i64 %6 to i8*
  %8 = load i8, i8* %7, align 1, !fcd.prgmem !3
  %9 = xor i8 %8, 66
  store i8 %9, i8* %7, align 1, !fcd.prgmem !3
  %10 = add i64 %rsp, -31
  %11 = inttoptr i64 %10 to i8*
  %12 = load i8, i8* %11, align 1, !fcd.prgmem !3
  %13 = xor i8 %12, 66
  store i8 %13, i8* %11, align 1, !fcd.prgmem !3
  %14 = call %movdqa.return.0 @fcd.asm.11()
  %15 = add i64 %rsp, -30
  %16 = inttoptr i64 %15 to i8*
  %17 = load i8, i8* %16, align 1, !fcd.prgmem !3
  %18 = xor i8 %17, 66
  store i8 %18, i8* %16, align 1, !fcd.prgmem !3
  %19 = add i64 %rsp, -29
  %20 = inttoptr i64 %19 to i8*
  store i8 0, i8* %20, align 1, !fcd.prgmem !3
  %21 = call %pxor.return @fcd.asm.13()
  %22 = call %movaps.return @fcd.asm.15()
  %23 = call %movdqa.return.1 @fcd.asm.17()
  %24 = call %pxor.return.2 @fcd.asm.19()
  %25 = call %movaps.return.3 @fcd.asm.21()
  %26 = call %movdqa.return.4 @fcd.asm.23()
  %27 = call %pxor.return.5 @fcd.asm.25()
  %28 = call %movaps.return.6 @fcd.asm.27()
  %29 = call %movdqa.return.7 @fcd.asm.29()
  %30 = call %pxor.return.8 @fcd.asm.31()
  %31 = call %movaps.return.9 @fcd.asm.33()
  %32 = call %movdqa.return.10 @fcd.asm.35()
  %33 = call %pxor.return.11 @fcd.asm.37()
  %34 = call %pxor.return.12 @fcd.asm.39()
  %35 = call %movaps.return.13 @fcd.asm.41()
  %36 = call %movaps.return.14 @fcd.asm.43()
  %37 = call i64 @puts(i64 %2)
  store i64 undef, i64* null, align 536870912
  br i1 true, label %"4005d0", label %"4005d7"

"4005d7":                                         ; preds = %entry
  unreachable

"4005d0":                                         ; preds = %entry
  %set.rdx = insertvalue %main.returns zeroinitializer, i64 %3, 1
  ret %main.returns %set.rdx
                                                  ; No predecessors!
  ret %main.returns undef
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

define %movdqa.return @fcd.asm() !fcd.asm !13 {
  %1 = call %movdqa.return @fcd.placeholder.10()
  ret %movdqa.return %1
}

declare extern_weak %movdqa.return @fcd.placeholder.10()

define %movdqa.return.0 @fcd.asm.11() !fcd.asm !14 {
  %1 = call %movdqa.return.0 @fcd.placeholder.12()
  ret %movdqa.return.0 %1
}

declare extern_weak %movdqa.return.0 @fcd.placeholder.12()

define %pxor.return @fcd.asm.13() !fcd.asm !15 {
  %1 = call %pxor.return @fcd.placeholder.14()
  ret %pxor.return %1
}

declare extern_weak %pxor.return @fcd.placeholder.14()

define %movaps.return @fcd.asm.15() !fcd.asm !16 {
  %1 = call %movaps.return @fcd.placeholder.16()
  ret %movaps.return %1
}

declare extern_weak %movaps.return @fcd.placeholder.16()

define %movdqa.return.1 @fcd.asm.17() !fcd.asm !17 {
  %1 = call %movdqa.return.1 @fcd.placeholder.18()
  ret %movdqa.return.1 %1
}

declare extern_weak %movdqa.return.1 @fcd.placeholder.18()

define %pxor.return.2 @fcd.asm.19() !fcd.asm !15 {
  %1 = call %pxor.return.2 @fcd.placeholder.20()
  ret %pxor.return.2 %1
}

declare extern_weak %pxor.return.2 @fcd.placeholder.20()

define %movaps.return.3 @fcd.asm.21() !fcd.asm !18 {
  %1 = call %movaps.return.3 @fcd.placeholder.22()
  ret %movaps.return.3 %1
}

declare extern_weak %movaps.return.3 @fcd.placeholder.22()

define %movdqa.return.4 @fcd.asm.23() !fcd.asm !19 {
  %1 = call %movdqa.return.4 @fcd.placeholder.24()
  ret %movdqa.return.4 %1
}

declare extern_weak %movdqa.return.4 @fcd.placeholder.24()

define %pxor.return.5 @fcd.asm.25() !fcd.asm !15 {
  %1 = call %pxor.return.5 @fcd.placeholder.26()
  ret %pxor.return.5 %1
}

declare extern_weak %pxor.return.5 @fcd.placeholder.26()

define %movaps.return.6 @fcd.asm.27() !fcd.asm !20 {
  %1 = call %movaps.return.6 @fcd.placeholder.28()
  ret %movaps.return.6 %1
}

declare extern_weak %movaps.return.6 @fcd.placeholder.28()

define %movdqa.return.7 @fcd.asm.29() !fcd.asm !21 {
  %1 = call %movdqa.return.7 @fcd.placeholder.30()
  ret %movdqa.return.7 %1
}

declare extern_weak %movdqa.return.7 @fcd.placeholder.30()

define %pxor.return.8 @fcd.asm.31() !fcd.asm !15 {
  %1 = call %pxor.return.8 @fcd.placeholder.32()
  ret %pxor.return.8 %1
}

declare extern_weak %pxor.return.8 @fcd.placeholder.32()

define %movaps.return.9 @fcd.asm.33() !fcd.asm !22 {
  %1 = call %movaps.return.9 @fcd.placeholder.34()
  ret %movaps.return.9 %1
}

declare extern_weak %movaps.return.9 @fcd.placeholder.34()

define %movdqa.return.10 @fcd.asm.35() !fcd.asm !23 {
  %1 = call %movdqa.return.10 @fcd.placeholder.36()
  ret %movdqa.return.10 %1
}

declare extern_weak %movdqa.return.10 @fcd.placeholder.36()

define %pxor.return.11 @fcd.asm.37() !fcd.asm !15 {
  %1 = call %pxor.return.11 @fcd.placeholder.38()
  ret %pxor.return.11 %1
}

declare extern_weak %pxor.return.11 @fcd.placeholder.38()

define %pxor.return.12 @fcd.asm.39() !fcd.asm !24 {
  %1 = call %pxor.return.12 @fcd.placeholder.40()
  ret %pxor.return.12 %1
}

declare extern_weak %pxor.return.12 @fcd.placeholder.40()

define %movaps.return.13 @fcd.asm.41() !fcd.asm !25 {
  %1 = call %movaps.return.13 @fcd.placeholder.42()
  ret %movaps.return.13 %1
}

declare extern_weak %movaps.return.13 @fcd.placeholder.42()

define %movaps.return.14 @fcd.asm.43() !fcd.asm !26 {
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

define void @_fini(i64 %rip, i64 %rsp) !fcd.vaddr !27 !fcd.output !3 !fcd.recoverable !3 !fcd.stackptr !4 {
entry:
  %0 = add i64 %rsp, -8
  %1 = inttoptr i64 %0 to i64*
  store i64 %rip, i64* %1, align 4, !fcd.prgmem !3
  ret void
                                                  ; No predecessors!
  ret void
}

define void @12(%struct.x86_regs*) {
  call void @fcd.placeholder.74(%struct.x86_regs* %0)
  ret void
}

define void @frame_dummy(i64 %rip, i64 %rsp) !fcd.vaddr !28 !fcd.output !3 !fcd.recoverable !3 !fcd.stackptr !4 {
entry:
  %0 = add i64 %rsp, -8
  %1 = inttoptr i64 %0 to i64*
  store i64 %rip, i64* %1, align 4, !fcd.prgmem !3
  %2 = load i64, i64* inttoptr (i64 6295072 to i64*), align 32, !fcd.prgmem !3
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %"4006bb", label %"4006c0"

"4006c0":                                         ; preds = %entry
  br label %"4006bb"

"4006bb":                                         ; preds = %entry, %"4006c0"
  ret void
                                                  ; No predecessors!
  ret void

; uselistorder directives
  uselistorder i64 0, { 4, 3, 0, 1, 2 }
  uselistorder label %"4006bb", { 1, 0 }
}

define void @13(%struct.x86_regs*) {
  call void @fcd.placeholder.76(%struct.x86_regs* %0)
  ret void
}

define void @func_400510(i64 %rip, i64 %rsp) !fcd.vaddr !29 !fcd.output !3 !fcd.recoverable !3 !fcd.stackptr !4 {
entry:
  %0 = add i64 %rsp, -8
  %1 = inttoptr i64 %0 to i64*
  store i64 %rip, i64* %1, align 4, !fcd.prgmem !3
  %2 = load i64, i64* inttoptr (i64 6295544 to i64*), align 8
  call void @__indirect_jump(i64 %2)
  unreachable
                                                  ; No predecessors!
  ret void
}

define void @14(%struct.x86_regs*) {
  call void @fcd.placeholder.78(%struct.x86_regs* %0)
  ret void
}

; Function Attrs: noreturn
declare void @__indirect_jump(i64) #3

declare extern_weak void @fcd.placeholder(i64, i64, i64, i64, i64)

declare extern_weak void @fcd.placeholder.50(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.51(i64, i64)

declare extern_weak void @fcd.placeholder.52(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.53(i64, i64)

declare extern_weak void @fcd.placeholder.54(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.55(i64, i64)

declare extern_weak void @fcd.placeholder.56(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.57(i64, i64, i64)

declare extern_weak void @fcd.placeholder.58(%struct.x86_regs*)

declare extern_weak i64 @fcd.placeholder.59(i64, i64, i64, i64, i64, i64, i64)

declare extern_weak void @fcd.placeholder.60(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.61(i64, i64)

declare extern_weak void @fcd.placeholder.62(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.63(i64, i64)

declare extern_weak void @fcd.placeholder.64(%struct.x86_regs*)

declare extern_weak %main.returns @fcd.placeholder.65(i64, i64)

declare extern_weak void @fcd.placeholder.66(%struct.x86_regs*)

declare extern_weak i64 @fcd.placeholder.67(i64, i64, i64)

declare extern_weak void @fcd.placeholder.68(%struct.x86_regs*)

declare extern_weak i64 @fcd.placeholder.69(i64)

declare extern_weak void @fcd.placeholder.70(%struct.x86_regs*)

declare extern_weak %__stack_chk_fail.returns @fcd.placeholder.71(i64)

declare extern_weak void @fcd.placeholder.72(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.73(i64, i64)

declare extern_weak void @fcd.placeholder.74(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.75(i64, i64)

declare extern_weak void @fcd.placeholder.76(%struct.x86_regs*)

declare extern_weak void @fcd.placeholder.77(i64, i64)

declare extern_weak void @fcd.placeholder.78(%struct.x86_regs*)

declare extern_weak i64 @fcd.placeholder.79(i64, i64, i64, i64, i64, i64, i64)

declare extern_weak i64 @fcd.placeholder.80(i64, i64, i64)

declare extern_weak i64 @fcd.placeholder.81(i64)

declare extern_weak %__stack_chk_fail.returns @fcd.placeholder.82(i64)

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

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
!4 = !{i32 1}
!5 = !{i64 4195488}
!6 = !{i64 4196176}
!7 = !{i64 4195920}
!8 = !{i64 4195808}
!9 = !{i64 4195984}
!10 = !{i64 4195856}
!11 = !{i64 4195616}
!12 = !{i32 3}
!13 = !{!"movdqa xmm0, xmmword ptr [rip + 0x220]"}
!14 = !{!"movdqa xmm1, xmmword ptr [rsp]"}
!15 = !{!"pxor xmm1, xmm0"}
!16 = !{!"movaps xmmword ptr [rsp], xmm1"}
!17 = !{!"movdqa xmm1, xmmword ptr [rsp + 0x10]"}
!18 = !{!"movaps xmmword ptr [rsp + 0x10], xmm1"}
!19 = !{!"movdqa xmm1, xmmword ptr [rsp + 0x20]"}
!20 = !{!"movaps xmmword ptr [rsp + 0x20], xmm1"}
!21 = !{!"movdqa xmm1, xmmword ptr [rsp + 0x30]"}
!22 = !{!"movaps xmmword ptr [rsp + 0x30], xmm1"}
!23 = !{!"movdqa xmm1, xmmword ptr [rsp + 0x40]"}
!24 = !{!"pxor xmm0, xmmword ptr [rsp + 0x50]"}
!25 = !{!"movaps xmmword ptr [rsp + 0x40], xmm1"}
!26 = !{!"movaps xmmword ptr [rsp + 0x50], xmm0"}
!27 = !{i64 4196180}
!28 = !{i64 4196016}
!29 = !{i64 4195600}