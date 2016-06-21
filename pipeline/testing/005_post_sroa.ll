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
  %2 = load i64, i64* inttoptr (i64 6295072 to i64*), align 32, !fcd.prgmem !3
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %"4005fb", label %"400600"

"400600":                                         ; preds = %entry
  br label %"4005fb"

"4005fb":                                         ; preds = %entry, %"400600"
  %4 = add i64 %rsp, -16
  %5 = inttoptr i64 %4 to i64*
  store i64 undef, i64* %5, align 4, !fcd.prgmem !3
  %6 = load i64, i64* %1, align 4, !fcd.prgmem !3
  ret void
                                                  ; No predecessors!
  call void @fcd.placeholder(i64 %rip, i64 %rsp)
  ret void

; uselistorder directives
  uselistorder i64 %rsp, { 2, 0, 1 }
  uselistorder i64 %rip, { 1, 0 }
  uselistorder label %"4005fb", { 1, 0 }
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
                                                  ; No predecessors!
  call void @fcd.placeholder.16(i64 %rip, i64 %rsp)
  ret void

; uselistorder directives
  uselistorder i64 %rsp, { 1, 0 }
  uselistorder i64 %rip, { 1, 0 }
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
  %2 = add i64 %rsp, -16
  %3 = inttoptr i64 %2 to i64*
  store i64 undef, i64* %3, align 4, !fcd.prgmem !3
  %4 = load i64, i64* %1, align 4, !fcd.prgmem !3
  ret void
                                                  ; No predecessors!
  call void @fcd.placeholder.18(i64 %rip, i64 %rsp)
  ret void

; uselistorder directives
  uselistorder i64 %rsp, { 2, 0, 1 }
  uselistorder i64 %rip, { 1, 0 }
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
  %2 = add i64 %rsp, -16
  %3 = inttoptr i64 %2 to i64*
  store i64 undef, i64* %3, align 4, !fcd.prgmem !3
  %4 = add i64 %rsp, -24
  %5 = inttoptr i64 %4 to i64*
  store i64 undef, i64* %5, align 4, !fcd.prgmem !3
  %6 = trunc i64 %rdi to i32
  %7 = zext i32 %6 to i64
  %8 = add i64 %rsp, -32
  %9 = inttoptr i64 %8 to i64*
  store i64 undef, i64* %9, align 4, !fcd.prgmem !3
  %10 = add i64 %rsp, -40
  %11 = inttoptr i64 %10 to i64*
  store i64 undef, i64* %11, align 4, !fcd.prgmem !3
  %12 = add i64 %rsp, -48
  %13 = inttoptr i64 %12 to i64*
  store i64 undef, i64* %13, align 4, !fcd.prgmem !3
  %14 = add i64 %rsp, -56
  %15 = inttoptr i64 %14 to i64*
  store i64 undef, i64* %15, align 4, !fcd.prgmem !3
  %16 = add i64 %rsp, -64
  call void @_init(i64 4196017, i64 %16)
  %17 = icmp eq i64 1, 0
  br i1 %17, label %"4006d6", label %"4006b6"

"4006d6":                                         ; preds = %"4006c0", %entry
  %18 = add i64 %16, 8
  %19 = inttoptr i64 %18 to i64*
  %20 = load i64, i64* %19, align 4, !fcd.prgmem !3
  %21 = add i64 %16, 16
  %22 = inttoptr i64 %21 to i64*
  %23 = load i64, i64* %22, align 4, !fcd.prgmem !3
  %24 = add i64 %16, 24
  %25 = inttoptr i64 %24 to i64*
  %26 = load i64, i64* %25, align 4, !fcd.prgmem !3
  %27 = add i64 %16, 32
  %28 = inttoptr i64 %27 to i64*
  %29 = load i64, i64* %28, align 4, !fcd.prgmem !3
  %30 = add i64 %16, 40
  %31 = inttoptr i64 %30 to i64*
  %32 = load i64, i64* %31, align 4, !fcd.prgmem !3
  %33 = add i64 %16, 48
  %34 = inttoptr i64 %33 to i64*
  %35 = load i64, i64* %34, align 4, !fcd.prgmem !3
  %36 = add i64 %16, 56
  %37 = inttoptr i64 %36 to i64*
  %38 = load i64, i64* %37, align 4, !fcd.prgmem !3
  %39 = add i64 %16, 64
  ret void

"4006b6":                                         ; preds = %entry
  br label %"4006c0"

"4006c0":                                         ; preds = %"4006c0", %"4006b6"
  %registers.sroa.0.0 = phi i64 [ 0, %"4006b6" ], [ %48, %"4006c0" ]
  %40 = phi i64 [ %48, %"4006c0" ], [ 0, %"4006b6" ]
  %41 = trunc i64 %7 to i32
  %42 = zext i32 %41 to i64
  %43 = shl i64 %40, 3
  %44 = add i64 6295056, %43
  %45 = inttoptr i64 %44 to i64*
  %46 = load i64, i64* %45, align 4, !fcd.prgmem !3
  %47 = inttoptr i64 %46 to void (i64, i64, i64)*
  call void %47(i64 %42, i64 %rsi, i64 %rdx)
  %48 = add i64 %registers.sroa.0.0, 1
  %49 = icmp eq i64 %48, 1
  br i1 %49, label %"4006d6", label %"4006c0"
                                                  ; No predecessors!
  call void @fcd.placeholder.20(i64 %rip, i64 %rsp, i64 %rdi, i64 %rsi, i64 %rdx)
  ret void

; uselistorder directives
  uselistorder i64 %48, { 1, 0, 2 }
  uselistorder i64 %rdx, { 1, 0 }
  uselistorder i64 %rsi, { 1, 0 }
  uselistorder i64 %rdi, { 1, 0 }
  uselistorder i64 %rsp, { 8, 0, 1, 2, 3, 4, 5, 6, 7 }
  uselistorder i64 %rip, { 1, 0 }
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
  %2 = add i64 %rsp, -16
  %3 = load i64, i64* inttoptr (i64 6295544 to i64*), align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %"4004b5", label %"4004b0"

"4004b5":                                         ; preds = %entry, %"4004b0"
  %5 = phi i64 [ %2, %entry ], [ %2, %"4004b0" ]
  %6 = add i64 %5, 8
  %7 = inttoptr i64 %6 to i64*
  %8 = load i64, i64* %7, align 4, !fcd.prgmem !3
  %9 = add i64 %5, 16
  ret void

"4004b0":                                         ; preds = %entry
  call void @func_400510(i64 4195509, i64 %2)
  br label %"4004b5"
                                                  ; No predecessors!
  call void @fcd.placeholder.22(i64 %rip, i64 %rsp)
  ret void

; uselistorder directives
  uselistorder i64 %5, { 1, 0 }
  uselistorder i64 %2, { 1, 0, 2 }
  uselistorder i64 %rsp, { 2, 0, 1 }
  uselistorder i64 %rip, { 1, 0 }
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
  %4 = phi i64 [ %rip, %entry ], [ %.pre, %"4005d9" ]
  %5 = phi i64 [ %0, %entry ], [ %11, %"4005d9" ]
  %6 = add i64 %5, 8
  ret void

"4005d9":                                         ; preds = %entry
  %7 = add i64 %rsp, -16
  %8 = inttoptr i64 %7 to i64*
  store i64 undef, i64* %8, align 4, !fcd.prgmem !3
  call void @deregister_tm_clones(i64 4195810, i64 %7)
  %9 = inttoptr i64 %7 to i64*
  %10 = load i64, i64* %9, align 4, !fcd.prgmem !3
  %11 = add i64 %7, 8
  store i8 1, i8* inttoptr (i64 6295640 to i8*), align 8, !fcd.prgmem !3
  %.phi.trans.insert = inttoptr i64 %11 to i64*
  %.pre = load i64, i64* %.phi.trans.insert, align 4
  br label %"4005ea"
                                                  ; No predecessors!
  call void @fcd.placeholder.24(i64 %rip, i64 %rsp)
  ret void

; uselistorder directives
  uselistorder i64 %7, { 1, 0, 2, 3 }
  uselistorder i64 8, { 2, 3, 0, 1, 4 }
  uselistorder i64 %rsp, { 2, 0, 1 }
  uselistorder i64 %rip, { 2, 0, 1 }
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
  %2 = add i64 %rsp, -16
  %3 = inttoptr i64 %2 to i64*
  store i64 undef, i64* %3, align 4, !fcd.prgmem !3
  %4 = load i64, i64* %1, align 4, !fcd.prgmem !3
  ret void
                                                  ; No predecessors!
  call void @fcd.placeholder.26(i64 %rip, i64 %rsp)
  ret void

; uselistorder directives
  uselistorder i64 %rsp, { 2, 0, 1 }
  uselistorder i64 %rip, { 1, 0 }
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
  %4 = inttoptr i64 %3 to i64*
  store i64 undef, i64* %4, align 8, !fcd.prgmem !3
  %5 = add i64 %2, -16
  %6 = inttoptr i64 %5 to i64*
  store i64 %3, i64* %6, align 16, !fcd.prgmem !3
  %7 = add i64 %5, 0
  %8 = inttoptr i64 %7 to i64 addrspace(1)*
  %9 = load i64, i64 addrspace(1)* %8
  %10 = call i64 @__libc_start_main(i64 4195862, i64 %rip, i64 %rsp, i64 4195968, i64 4196080, i64 %rdx, i64 %9)
  tail call void @llvm.trap()
  unreachable
                                                  ; No predecessors!
  call void @fcd.placeholder.28(i64 %rip, i64 %rsp, i64 %rdx)
  ret void

; uselistorder directives
  uselistorder i64 %rdx, { 1, 0 }
  uselistorder i64 %rsp, { 3, 2, 0, 1 }
  uselistorder i64 %rip, { 2, 0, 1 }
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
                                                  ; No predecessors!
  call void @fcd.placeholder.32(i64 %rip, i64 %rsp)
  ret void

; uselistorder directives
  uselistorder i64 %rsp, { 1, 0 }
  uselistorder i64 %rip, { 1, 0 }
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
  %2 = add i64 %rsp, -128
  %3 = add i64 undef, 40
  %4 = inttoptr i64 %3 to i64*
  %5 = load i64, i64* %4, align 4
  %6 = add i64 %rsp, -24
  %7 = inttoptr i64 %6 to i64*
  store i64 %5, i64* %7, align 4, !fcd.prgmem !3
  %8 = load i64, i64* inttoptr (i64 6295632 to i64*), align 16, !fcd.prgmem !3
  %9 = call i64 @fgets(i64 %2, i64 99, i64 %8)
  %10 = add i64 %2, 100
  br label %"400646"

"400646":                                         ; preds = %"400646", %entry
  %.in = phi i64 [ %14, %"400646" ], [ %2, %entry ]
  %11 = inttoptr i64 %.in to i8*
  %12 = load i8, i8* %11, align 1, !fcd.prgmem !3
  %13 = xor i8 %12, 66
  store i8 %13, i8* %11, align 1, !fcd.prgmem !3
  %14 = add i64 %.in, 1
  %15 = icmp eq i64 %14, %10
  br i1 %15, label %"400652", label %"400646"

"400652":                                         ; preds = %"400646"
  %16 = add i64 %2, 99
  %17 = inttoptr i64 %16 to i8*
  store i8 0, i8* %17, align 1, !fcd.prgmem !3
  %18 = call i64 @puts(i64 %2)
  %19 = add i64 %2, 104
  %20 = inttoptr i64 %19 to i64*
  %21 = load i64, i64* %20, align 4
  %22 = add i64 undef, 40
  %23 = inttoptr i64 %22 to i64*
  %24 = load i64, i64* %23, align 4, !fcd.prgmem !3
  %25 = xor i64 %24, %21
  %26 = icmp eq i64 %24, %21
  br i1 %26, label %"400679", label %"400674"

"400679":                                         ; preds = %"400652", %"400674"
  %registers.sroa.11.0 = phi i64 [ %10, %"400652" ], [ %rdx7, %"400674" ]
  %registers.sroa.0.0 = phi i64 [ 0, %"400652" ], [ %rax, %"400674" ]
  %27 = phi i64 [ %2, %"400652" ], [ %2, %"400674" ]
  %28 = add i64 %27, 120
  %29 = inttoptr i64 %28 to i64*
  %30 = load i64, i64* %29, align 4, !fcd.prgmem !3
  %31 = add i64 %27, 128
  %set.rax = insertvalue %main.returns zeroinitializer, i64 %registers.sroa.0.0, 0
  %set.rdx = insertvalue %main.returns %set.rax, i64 %registers.sroa.11.0, 1
  ret %main.returns %set.rdx

"400674":                                         ; preds = %"400652"
  %32 = call %__stack_chk_fail.returns @__stack_chk_fail(i64 %25)
  %rdx7 = extractvalue %__stack_chk_fail.returns %32, 0
  %rax = extractvalue %__stack_chk_fail.returns %32, 1
  br label %"400679"
                                                  ; No predecessors!
  %34 = call %main.returns @fcd.placeholder.34(i64 %rip, i64 %rsp)
  %35 = load i64, i64* undef
  %set.rax1 = insertvalue %main.returns zeroinitializer, i64 %35, 0
  %36 = load i64, i64* undef
  %set.rdx2 = insertvalue %main.returns %set.rax1, i64 %36, 1
  ret %main.returns %set.rdx2

; uselistorder directives
  uselistorder i64 %14, { 1, 0 }
  uselistorder i64 %2, { 0, 1, 2, 3, 5, 4, 6, 7 }
  uselistorder i64 0, { 0, 2, 4, 3, 1, 5, 6 }
  uselistorder i64 1, { 2, 0, 3, 1 }
  uselistorder i64 99, { 1, 0 }
  uselistorder i64 40, { 1, 2, 0 }
  uselistorder i64 %rsp, { 3, 0, 1, 2 }
  uselistorder i64 %rip, { 1, 0 }
  uselistorder label %"400679", { 1, 0 }
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
  %2 = load i64, i64* inttoptr (i64 6295544 to i64*), align 8, !fcd.prgmem !3
  %3 = inttoptr i64 %2 to i64
  call void @__indirect_jump(i64 %3)
  unreachable
                                                  ; No predecessors!
  call void @fcd.placeholder.42(i64 %rip, i64 %rsp)
  ret void

; uselistorder directives
  uselistorder i64 %rsp, { 1, 0 }
  uselistorder i64 %rip, { 1, 0 }
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