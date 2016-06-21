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
  %registers = alloca %struct.x86_regs, !fcd.registers !3
  %0 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp = load i64, i64* %0
  %1 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  store i64 %rip, i64* %1
  %2 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  store i64 %rsp, i64* %2
  %3 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !5, !alias.scope !9
  %5 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !5, !alias.scope !12
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8, align 4, !fcd.prgmem !3
  store i64 %7, i64* %5, align 8, !tbaa !5, !alias.scope !17
  %9 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 6, i32 0
  store i64 6295072, i64* %9, align 8, !tbaa !5, !alias.scope !20, !noalias !29
  %10 = load i64, i64* inttoptr (i64 6295072 to i64*), align 32, !fcd.prgmem !3
  %11 = icmp eq i64 %10, 0
  store i64 4195835, i64* %3, align 4
  %.pre29 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 1, i32 0
  br i1 %11, label %"4005fb", label %"400600"

"400600":                                         ; preds = %entry
  store i64 0, i64* %.pre29, align 8, !tbaa !5, !alias.scope !32, !noalias !41
  store i64 4195850, i64* %3, align 4
  br label %"4005fb"

"4005fb":                                         ; preds = %entry, %"400600"
  %12 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 5, i32 0
  %13 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 7, i32 0
  %14 = load i64, i64* %13, align 8, !tbaa !5, !alias.scope !44, !noalias !51
  %15 = add i64 %6, -16
  %16 = inttoptr i64 %15 to i64*
  store i64 %14, i64* %16, align 4, !fcd.prgmem !3
  store i64 0, i64* %.pre29, align 8, !tbaa !5, !alias.scope !53, !noalias !60
  store i64 0, i64* %12, align 8, !tbaa !5, !alias.scope !62, !noalias !69
  %17 = load i64, i64* %8, align 4, !fcd.prgmem !3
  store i64 %6, i64* %5, align 8, !tbaa !5, !alias.scope !71
  store i64 %17, i64* %3, align 8, !tbaa !5, !alias.scope !76
  ret void
                                                  ; No predecessors!
  call void @fcd.placeholder(i64 %rip, i64 %rsp)
  ret void

; uselistorder directives
  uselistorder i64 %6, { 1, 0, 2 }
  uselistorder i64* %5, { 0, 2, 1 }
  uselistorder i64* %3, { 0, 2, 3, 1 }
  uselistorder %struct.x86_regs* %registers, { 7, 6, 8, 5, 4, 3, 0, 1, 2 }
  uselistorder i64 %rsp, { 1, 0 }
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

define void @__libc_csu_fini(i64 %rip, i64 %rsp) !fcd.vaddr !79 !fcd.output !3 !fcd.recoverable !3 !fcd.stackptr !4 {
entry:
  %registers = alloca %struct.x86_regs, !fcd.registers !3
  %0 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp = load i64, i64* %0
  %1 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  store i64 %rip, i64* %1
  %2 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  store i64 %rsp, i64* %2
  %3 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !5, !alias.scope !80
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8, align 4, !fcd.prgmem !3
  ret void
                                                  ; No predecessors!
  call void @fcd.placeholder.16(i64 %rip, i64 %rsp)
  ret void

; uselistorder directives
  uselistorder %struct.x86_regs* %registers, { 4, 3, 0, 1, 2 }
  uselistorder i64 %rsp, { 1, 0 }
  uselistorder i64 %rip, { 1, 0 }
}

define void @1(%struct.x86_regs*) {
  call void @fcd.placeholder.17(%struct.x86_regs* %0)
  ret void
}

define void @register_tm_clones(i64 %rip, i64 %rsp) !fcd.vaddr !85 !fcd.output !3 !fcd.recoverable !3 !fcd.stackptr !4 {
entry:
  %registers = alloca %struct.x86_regs, !fcd.registers !3
  %0 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp = load i64, i64* %0
  %1 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  store i64 %rip, i64* %1
  %2 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  store i64 %rsp, i64* %2
  %3 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !5, !alias.scope !86
  %5 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !5, !alias.scope !89
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8, align 4, !fcd.prgmem !3
  %9 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 5, i32 0
  %10 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 7, i32 0
  %11 = load i64, i64* %10, align 8, !tbaa !5, !alias.scope !94, !noalias !101
  %12 = add i64 %6, -16
  %13 = inttoptr i64 %12 to i64*
  store i64 %11, i64* %13, align 4, !fcd.prgmem !3
  %14 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 1, i32 0
  store i64 0, i64* %14, align 8, !tbaa !5, !alias.scope !103, !noalias !110
  store i64 0, i64* %9, align 8, !tbaa !5, !alias.scope !112, !noalias !119
  %15 = load i64, i64* %8, align 4, !fcd.prgmem !3
  store i64 %15, i64* %3, align 8, !tbaa !5, !alias.scope !121
  ret void
                                                  ; No predecessors!
  call void @fcd.placeholder.18(i64 %rip, i64 %rsp)
  ret void

; uselistorder directives
  uselistorder %struct.x86_regs* %registers, { 7, 6, 5, 4, 3, 0, 1, 2 }
  uselistorder i64 %rsp, { 1, 0 }
  uselistorder i64 %rip, { 1, 0 }
}

define void @2(%struct.x86_regs*) {
  call void @fcd.placeholder.19(%struct.x86_regs* %0)
  ret void
}

define void @__libc_csu_init(i64 %rip, i64 %rsp, i64 %rdi, i64 %rsi, i64 %rdx) !fcd.vaddr !124 !fcd.output !3 !fcd.recoverable !3 !fcd.funver !4 !fcd.stackptr !4 {
entry:
  %registers = alloca %struct.x86_regs, !fcd.registers !3
  %0 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp4 = load i64, i64* %0
  %1 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  store i64 %rip, i64* %1
  %2 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  store i64 %rsp, i64* %2
  %3 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 6, i32 0
  store i64 %rdi, i64* %3
  %4 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 5, i32 0
  store i64 %rsi, i64* %4
  %5 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 4, i32 0
  store i64 %rdx, i64* %5
  %6 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !5, !alias.scope !125
  %8 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %9 = load i64, i64* %8, align 8, !tbaa !5, !alias.scope !128
  %10 = add i64 %9, -8
  %11 = inttoptr i64 %10 to i64*
  store i64 %7, i64* %11, align 4, !fcd.prgmem !3
  %12 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 17, i32 0
  %13 = load i64, i64* %12, align 8, !tbaa !5, !alias.scope !133, !noalias !140
  %14 = add i64 %9, -16
  %15 = inttoptr i64 %14 to i64*
  store i64 %13, i64* %15, align 4, !fcd.prgmem !3
  %16 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 16, i32 0
  %17 = load i64, i64* %16, align 8, !tbaa !5, !alias.scope !142, !noalias !149
  %18 = add i64 %9, -24
  %19 = inttoptr i64 %18 to i64*
  store i64 %17, i64* %19, align 4, !fcd.prgmem !3
  %20 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 6, i32 0
  %21 = bitcast i64* %20 to i32*
  %22 = load i32, i32* %21, align 4, !tbaa !151, !alias.scope !153, !noalias !162
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %12, align 8, !tbaa !5, !alias.scope !165, !noalias !172
  %24 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 15, i32 0
  %25 = load i64, i64* %24, align 8, !tbaa !5, !alias.scope !174, !noalias !181
  %26 = add i64 %9, -32
  %27 = inttoptr i64 %26 to i64*
  store i64 %25, i64* %27, align 4, !fcd.prgmem !3
  %28 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 14, i32 0
  %29 = load i64, i64* %28, align 8, !tbaa !5, !alias.scope !183, !noalias !190
  %30 = add i64 %9, -40
  %31 = inttoptr i64 %30 to i64*
  store i64 %29, i64* %31, align 4, !fcd.prgmem !3
  store i64 6295056, i64* %28, align 8, !tbaa !5, !alias.scope !192, !noalias !199
  %32 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 7, i32 0
  %33 = load i64, i64* %32, align 8, !tbaa !5, !alias.scope !201, !noalias !208
  %34 = add i64 %9, -48
  %35 = inttoptr i64 %34 to i64*
  store i64 %33, i64* %35, align 4, !fcd.prgmem !3
  %36 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 2, i32 0
  %37 = load i64, i64* %36, align 8, !tbaa !5, !alias.scope !210, !noalias !217
  %38 = add i64 %9, -56
  %39 = inttoptr i64 %38 to i64*
  store i64 %37, i64* %39, align 4, !fcd.prgmem !3
  %40 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 5, i32 0
  %41 = load i64, i64* %40, align 8, !tbaa !5, !alias.scope !219, !noalias !228
  store i64 %41, i64* %16, align 8, !tbaa !5, !alias.scope !231, !noalias !238
  %42 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 4, i32 0
  %43 = load i64, i64* %42, align 8, !tbaa !5, !alias.scope !240, !noalias !249
  store i64 %43, i64* %24, align 8, !tbaa !5, !alias.scope !252, !noalias !259
  %44 = add i64 %9, -64
  store i64 %44, i64* %8, align 8, !tbaa !5, !alias.scope !261, !noalias !268
  store i64 1, i64* %32, align 8, !tbaa !5, !alias.scope !270, !noalias !277
  store i64 4196017, i64* %6, align 4
  %45 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp5 = load i64, i64* %45
  %46 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  %rip6 = load i64, i64* %46
  %47 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %rsp7 = load i64, i64* %47
  call void @_init(i64 %rip6, i64 %rsp7)
  %48 = load i64, i64* %32, align 8, !tbaa !5, !alias.scope !279, !noalias !294
  %49 = icmp eq i64 %48, 0
  store i64 4196022, i64* %6, align 4
  br i1 %49, label %"4006d6", label %"4006b6"

"4006d6":                                         ; preds = %"4006c0", %entry
  %50 = load i64, i64* %8, align 8, !tbaa !5, !alias.scope !297, !noalias !304
  %51 = add i64 %50, 8
  %52 = inttoptr i64 %51 to i64*
  %53 = load i64, i64* %52, align 4, !fcd.prgmem !3
  %54 = add i64 %50, 16
  store i64 %53, i64* %36, align 8, !tbaa !5, !alias.scope !306, !noalias !313
  %55 = inttoptr i64 %54 to i64*
  %56 = load i64, i64* %55, align 4, !fcd.prgmem !3
  %57 = add i64 %50, 24
  store i64 %56, i64* %32, align 8, !tbaa !5, !alias.scope !315, !noalias !322
  %58 = inttoptr i64 %57 to i64*
  %59 = load i64, i64* %58, align 4, !fcd.prgmem !3
  %60 = add i64 %50, 32
  store i64 %59, i64* %28, align 8, !tbaa !5, !alias.scope !324, !noalias !331
  %61 = inttoptr i64 %60 to i64*
  %62 = load i64, i64* %61, align 4, !fcd.prgmem !3
  %63 = add i64 %50, 40
  store i64 %62, i64* %24, align 8, !tbaa !5, !alias.scope !333, !noalias !340
  %64 = inttoptr i64 %63 to i64*
  %65 = load i64, i64* %64, align 4, !fcd.prgmem !3
  %66 = add i64 %50, 48
  store i64 %65, i64* %16, align 8, !tbaa !5, !alias.scope !342, !noalias !349
  %67 = inttoptr i64 %66 to i64*
  %68 = load i64, i64* %67, align 4, !fcd.prgmem !3
  %69 = add i64 %50, 56
  store i64 %68, i64* %12, align 8, !tbaa !5, !alias.scope !351, !noalias !358
  %70 = inttoptr i64 %69 to i64*
  %71 = load i64, i64* %70, align 4, !fcd.prgmem !3
  %72 = add i64 %50, 64
  store i64 %72, i64* %8, align 8, !tbaa !5, !alias.scope !360
  store i64 %71, i64* %6, align 8, !tbaa !5, !alias.scope !365
  ret void

"4006b6":                                         ; preds = %entry
  store i64 0, i64* %36, align 8, !tbaa !5, !alias.scope !368, !noalias !375
  store i64 4196032, i64* %6, align 4
  br label %"4006c0"

"4006c0":                                         ; preds = %"4006c0", %"4006b6"
  %73 = phi i64 [ %90, %"4006c0" ], [ 0, %"4006b6" ]
  %74 = load i64, i64* %24, align 8, !tbaa !5, !alias.scope !377, !noalias !386
  store i64 %74, i64* %42, align 8, !tbaa !5, !alias.scope !389, !noalias !396
  %75 = load i64, i64* %16, align 8, !tbaa !5, !alias.scope !398, !noalias !407
  store i64 %75, i64* %40, align 8, !tbaa !5, !alias.scope !410, !noalias !417
  %76 = bitcast i64* %12 to i32*
  %77 = load i32, i32* %76, align 4, !tbaa !151, !alias.scope !419, !noalias !428
  %78 = zext i32 %77 to i64
  store i64 %78, i64* %20, align 8, !tbaa !5, !alias.scope !431, !noalias !438
  store i64 4196045, i64* %6, align 4
  %79 = shl i64 %73, 3
  %80 = load i64, i64* %28, align 8, !tbaa !5, !alias.scope !440, !noalias !449
  %81 = add i64 %80, %79
  %82 = inttoptr i64 %81 to i64*
  %83 = load i64, i64* %82, align 4, !fcd.prgmem !3
  %84 = inttoptr i64 %83 to void (i64, i64, i64)*
  %85 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp = load i64, i64* %85
  %86 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 6, i32 0
  %rdi1 = load i64, i64* %86
  %87 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 5, i32 0
  %rsi2 = load i64, i64* %87
  %88 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 4, i32 0
  %rdx3 = load i64, i64* %88
  call void %84(i64 %rdi1, i64 %rsi2, i64 %rdx3)
  %89 = load i64, i64* %36, align 8, !tbaa !5, !alias.scope !453, !noalias !460
  %90 = add i64 %89, 1
  store i64 %90, i64* %36, align 8, !tbaa !5, !alias.scope !462, !noalias !469
  %91 = load i64, i64* %32, align 8, !tbaa !5, !alias.scope !471, !noalias !478
  %92 = icmp eq i64 %90, %91
  store i64 4196054, i64* %6, align 4
  br i1 %92, label %"4006d6", label %"4006c0"
                                                  ; No predecessors!
  call void @fcd.placeholder.20(i64 %rip, i64 %rsp, i64 %rdi, i64 %rsi, i64 %rdx)
  ret void

; uselistorder directives
  uselistorder i64* %36, { 1, 2, 3, 0, 4 }
  uselistorder i64* %32, { 1, 0, 2, 3, 4 }
  uselistorder i64* %28, { 1, 0, 2, 3 }
  uselistorder i64* %24, { 1, 0, 2, 3 }
  uselistorder i64* %16, { 1, 0, 2, 3 }
  uselistorder i64* %12, { 1, 0, 2, 3 }
  uselistorder i64* %6, { 2, 3, 4, 0, 5, 6, 1 }
  uselistorder %struct.x86_regs* %registers, { 23, 22, 21, 20, 0, 1, 2, 18, 17, 16, 15, 14, 13, 19, 12, 11, 10, 9, 3, 4, 5, 6, 7, 8 }
  uselistorder i64 %rdx, { 1, 0 }
  uselistorder i64 %rsi, { 1, 0 }
  uselistorder i64 %rdi, { 1, 0 }
  uselistorder i64 %rsp, { 1, 0 }
  uselistorder i64 %rip, { 1, 0 }
}

define void @3(%struct.x86_regs*) {
  call void @fcd.placeholder.21(%struct.x86_regs* %0)
  ret void
}

define void @_init(i64 %rip, i64 %rsp) !fcd.vaddr !480 !fcd.output !3 !fcd.recoverable !3 !fcd.funver !4 !fcd.stackptr !4 {
entry:
  %registers = alloca %struct.x86_regs, !fcd.registers !3
  %0 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp = load i64, i64* %0
  %1 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  store i64 %rip, i64* %1
  %2 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  store i64 %rsp, i64* %2
  %3 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !5, !alias.scope !481
  %5 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !5, !alias.scope !484
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8, align 4, !fcd.prgmem !3
  %9 = add i64 %6, -16
  store i64 %9, i64* %5, align 8, !tbaa !5, !alias.scope !489, !noalias !496
  %10 = load i64, i64* inttoptr (i64 6295544 to i64*), align 8
  %11 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 1, i32 0
  store i64 %10, i64* %11, align 8, !tbaa !5, !alias.scope !498, !noalias !507
  %12 = icmp eq i64 %10, 0
  store i64 4195504, i64* %3, align 4
  br i1 %12, label %"4004b5", label %"4004b0"

"4004b5":                                         ; preds = %entry, %"4004b0"
  %13 = phi i64 [ %9, %entry ], [ %.pre, %"4004b0" ]
  %14 = add i64 %13, 8
  %15 = inttoptr i64 %14 to i64*
  %16 = load i64, i64* %15, align 4, !fcd.prgmem !3
  %17 = add i64 %13, 16
  store i64 %17, i64* %5, align 8, !tbaa !5, !alias.scope !510
  store i64 %16, i64* %3, align 8, !tbaa !5, !alias.scope !515
  ret void

"4004b0":                                         ; preds = %entry
  store i64 4195509, i64* %3, align 4
  %18 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp1 = load i64, i64* %18
  %19 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  %rip2 = load i64, i64* %19
  %20 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %rsp3 = load i64, i64* %20
  call void @func_400510(i64 %rip2, i64 %rsp3)
  %.pre = load i64, i64* %5, align 8, !tbaa !5, !alias.scope !518, !noalias !525
  br label %"4004b5"
                                                  ; No predecessors!
  call void @fcd.placeholder.22(i64 %rip, i64 %rsp)
  ret void

; uselistorder directives
  uselistorder i64 %13, { 1, 0 }
  uselistorder i64* %5, { 1, 0, 2, 3 }
  uselistorder i64* %3, { 2, 0, 3, 1 }
  uselistorder %struct.x86_regs* %registers, { 0, 1, 2, 8, 7, 6, 3, 4, 5 }
  uselistorder i64 %rsp, { 1, 0 }
  uselistorder i64 %rip, { 1, 0 }
  uselistorder label %"4004b5", { 1, 0 }
}

define void @4(%struct.x86_regs*) {
  call void @fcd.placeholder.23(%struct.x86_regs* %0)
  ret void
}

define void @__do_global_dtors_aux(i64 %rip, i64 %rsp) !fcd.vaddr !527 !fcd.output !3 !fcd.recoverable !3 !fcd.funver !4 !fcd.stackptr !4 {
entry:
  %registers = alloca %struct.x86_regs, !fcd.registers !3
  %0 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp = load i64, i64* %0
  %1 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  store i64 %rip, i64* %1
  %2 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  store i64 %rsp, i64* %2
  %3 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !5, !alias.scope !528
  %5 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !5, !alias.scope !531
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8, align 4, !fcd.prgmem !3
  store i64 %7, i64* %5, align 8, !tbaa !5, !alias.scope !536
  %9 = load i8, i8* inttoptr (i64 6295640 to i8*), align 8
  %10 = icmp eq i8 %9, 0
  store i64 4195801, i64* %3, align 4
  br i1 %10, label %"4005d9", label %"4005ea"

"4005ea":                                         ; preds = %entry, %"4005d9"
  %11 = phi i64 [ %4, %entry ], [ %.pre, %"4005d9" ]
  %12 = phi i64 [ %7, %entry ], [ %24, %"4005d9" ]
  %13 = add i64 %12, 8
  store i64 %13, i64* %5, align 8, !tbaa !5, !alias.scope !539
  store i64 %11, i64* %3, align 8, !tbaa !5, !alias.scope !544
  ret void

"4005d9":                                         ; preds = %entry
  %14 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 7, i32 0
  %15 = load i64, i64* %14, align 8, !tbaa !5, !alias.scope !547, !noalias !554
  %16 = add i64 %6, -16
  %17 = inttoptr i64 %16 to i64*
  store i64 %15, i64* %17, align 4, !fcd.prgmem !3
  store i64 %16, i64* %5, align 8, !tbaa !5, !alias.scope !556
  store i64 %16, i64* %14, align 8, !tbaa !5, !alias.scope !561, !noalias !570
  store i64 4195810, i64* %3, align 4
  %18 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp1 = load i64, i64* %18
  %19 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  %rip2 = load i64, i64* %19
  %20 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %rsp3 = load i64, i64* %20
  call void @deregister_tm_clones(i64 %rip2, i64 %rsp3)
  %21 = load i64, i64* %5, align 8, !tbaa !5, !alias.scope !573
  %22 = inttoptr i64 %21 to i64*
  %23 = load i64, i64* %22, align 4, !fcd.prgmem !3
  %24 = add i64 %21, 8
  store i64 %24, i64* %5, align 8, !tbaa !5, !alias.scope !578
  store i64 %23, i64* %14, align 8, !tbaa !5, !alias.scope !581, !noalias !588
  store i64 4195818, i64* %3, align 4
  store i8 1, i8* inttoptr (i64 6295640 to i8*), align 8, !fcd.prgmem !3
  %.phi.trans.insert = inttoptr i64 %24 to i64*
  %.pre = load i64, i64* %.phi.trans.insert, align 4
  br label %"4005ea"
                                                  ; No predecessors!
  call void @fcd.placeholder.24(i64 %rip, i64 %rsp)
  ret void

; uselistorder directives
  uselistorder i64 %24, { 0, 2, 1 }
  uselistorder i64 %21, { 1, 0 }
  uselistorder i64* %5, { 1, 2, 3, 0, 5, 4 }
  uselistorder i64* %3, { 2, 3, 0, 4, 1 }
  uselistorder %struct.x86_regs* %registers, { 0, 1, 2, 8, 7, 6, 3, 4, 5 }
  uselistorder i64 8, { 2, 3, 0, 1, 4 }
  uselistorder i64 %rsp, { 1, 0 }
  uselistorder i64 %rip, { 1, 0 }
  uselistorder label %"4005ea", { 1, 0 }
}

define void @5(%struct.x86_regs*) {
  call void @fcd.placeholder.25(%struct.x86_regs* %0)
  ret void
}

define void @deregister_tm_clones(i64 %rip, i64 %rsp) !fcd.vaddr !590 !fcd.output !3 !fcd.recoverable !3 !fcd.stackptr !4 {
entry:
  %registers = alloca %struct.x86_regs, !fcd.registers !3
  %0 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp = load i64, i64* %0
  %1 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  store i64 %rip, i64* %1
  %2 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  store i64 %rsp, i64* %2
  %3 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !5, !alias.scope !591
  %5 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !5, !alias.scope !594
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8, align 4, !fcd.prgmem !3
  %9 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 1, i32 0
  %10 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 7, i32 0
  %11 = load i64, i64* %10, align 8, !tbaa !5, !alias.scope !599, !noalias !606
  %12 = add i64 %6, -16
  %13 = inttoptr i64 %12 to i64*
  store i64 %11, i64* %13, align 4, !fcd.prgmem !3
  store i64 7, i64* %9, align 8, !tbaa !5, !alias.scope !608, !noalias !615
  %14 = load i64, i64* %8, align 4, !fcd.prgmem !3
  store i64 %14, i64* %3, align 8, !tbaa !5, !alias.scope !617
  ret void
                                                  ; No predecessors!
  call void @fcd.placeholder.26(i64 %rip, i64 %rsp)
  ret void

; uselistorder directives
  uselistorder %struct.x86_regs* %registers, { 6, 5, 4, 3, 0, 1, 2 }
  uselistorder i64 %rsp, { 1, 0 }
  uselistorder i64 %rip, { 1, 0 }
}

define void @6(%struct.x86_regs*) {
  call void @fcd.placeholder.27(%struct.x86_regs* %0)
  ret void
}

define void @_start(i64 %rip, i64 %rsp, i64 %rdx) !fcd.vaddr !620 !fcd.output !3 !fcd.recoverable !3 !fcd.funver !4 !fcd.stackptr !4 {
entry:
  %registers = alloca %struct.x86_regs, !fcd.registers !3
  %0 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp = load i64, i64* %0
  %1 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  store i64 %rip, i64* %1
  %2 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  store i64 %rsp, i64* %2
  %3 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 4, i32 0
  store i64 %rdx, i64* %3
  %4 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !5, !alias.scope !621
  %6 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !5, !alias.scope !624
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 4, !fcd.prgmem !3
  %10 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 7, i32 0
  store i64 0, i64* %10, align 8, !tbaa !5, !alias.scope !629, !noalias !636
  %11 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 4, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !5, !alias.scope !638, !noalias !647
  %13 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 11, i32 0
  store i64 %12, i64* %13, align 8, !tbaa !5, !alias.scope !650, !noalias !657
  %14 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 5, i32 0
  store i64 %5, i64* %14, align 8, !tbaa !5, !alias.scope !659, !noalias !666
  store i64 %7, i64* %11, align 8, !tbaa !5, !alias.scope !668, !noalias !677
  %15 = and i64 %7, -16
  %16 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 1, i32 0
  %17 = load i64, i64* %16, align 8, !tbaa !5, !alias.scope !680, !noalias !687
  %18 = add i64 %15, -8
  %19 = inttoptr i64 %18 to i64*
  store i64 %17, i64* %19, align 8, !fcd.prgmem !3
  %20 = add i64 %15, -16
  %21 = inttoptr i64 %20 to i64*
  store i64 %18, i64* %21, align 16, !fcd.prgmem !3
  store i64 %20, i64* %6, align 8, !tbaa !5, !alias.scope !689
  %22 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 10, i32 0
  store i64 4196080, i64* %22, align 8, !tbaa !5, !alias.scope !694, !noalias !703
  %23 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 3, i32 0
  store i64 4195968, i64* %23, align 8, !tbaa !5, !alias.scope !706, !noalias !715
  %24 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 6, i32 0
  store i64 4195862, i64* %24, align 8, !tbaa !5, !alias.scope !718, !noalias !727
  store i64 4195657, i64* %4, align 4
  %25 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp1 = load i64, i64* %25
  %26 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 6, i32 0
  %rdi = load i64, i64* %26
  %27 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 5, i32 0
  %rsi = load i64, i64* %27
  %28 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 4, i32 0
  %rdx2 = load i64, i64* %28
  %29 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 3, i32 0
  %rcx = load i64, i64* %29
  %30 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 10, i32 0
  %r8 = load i64, i64* %30
  %31 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 11, i32 0
  %r9 = load i64, i64* %31
  %32 = add i64 %sp1, 0
  %33 = inttoptr i64 %32 to i64 addrspace(1)*
  %34 = load i64, i64 addrspace(1)* %33
  %35 = call i64 @__libc_start_main(i64 %rdi, i64 %rsi, i64 %rdx2, i64 %rcx, i64 %r8, i64 %r9, i64 %34)
  %36 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 1, i32 0
  store i64 %35, i64* %36
  store i64 4195658, i64* %4, align 4
  tail call void @llvm.trap()
  unreachable
                                                  ; No predecessors!
  call void @fcd.placeholder.28(i64 %rip, i64 %rsp, i64 %rdx)
  ret void

; uselistorder directives
  uselistorder i64* %4, { 1, 2, 0 }
  uselistorder %struct.x86_regs* %registers, { 0, 1, 2, 3, 4, 5, 6, 7, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 8, 9, 10, 11 }
  uselistorder i64 %rdx, { 1, 0 }
  uselistorder i64 %rsp, { 1, 0 }
  uselistorder i64 %rip, { 1, 0 }
}

define void @7(%struct.x86_regs*) {
  call void @fcd.placeholder.29(%struct.x86_regs* %0)
  ret void
}

define i64 @__libc_start_main(i64 %rdi, i64 %rsi, i64 %rdx, i64 %rcx, i64 %r8, i64 %r9, i64 %sp0) !fcd.vaddr !730 !fcd.output !3 !fcd.recoverable !3 !fcd.importname !731 {
entry:
  %registers = alloca %struct.x86_regs, !fcd.registers !3
  %0 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp = load i64, i64* %0
  %1 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 6, i32 0
  store i64 %rdi, i64* %1
  %2 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 5, i32 0
  store i64 %rsi, i64* %2
  %3 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 4, i32 0
  store i64 %rdx, i64* %3
  %4 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 3, i32 0
  store i64 %rcx, i64* %4
  %5 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 10, i32 0
  store i64 %r8, i64* %5
  %6 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 11, i32 0
  store i64 %r9, i64* %6
  %7 = add i64 %sp, 0
  %8 = inttoptr i64 %7 to i64 addrspace(1)*
  store i64 %sp0, i64 addrspace(1)* %8
  %9 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  %10 = load i64, i64* %9, align 8, !tbaa !5, !alias.scope !732
  %11 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !5, !alias.scope !735
  %13 = add i64 %12, -8
  %14 = inttoptr i64 %13 to i64*
  store i64 %10, i64* %14, align 4, !fcd.prgmem !3
  store i64 %13, i64* %11, align 8, !tbaa !5, !alias.scope !740
  store i64 4195574, i64* %9, align 4
  %15 = load i64, i64* inttoptr (i64 6295592 to i64*), align 8, !fcd.prgmem !3
  %16 = inttoptr i64 %15 to i64
  call void @__indirect_jump(i64 %16)
  unreachable
                                                  ; No predecessors!
  %18 = call i64 @fcd.placeholder.30(i64 %rdi, i64 %rsi, i64 %rdx, i64 %rcx, i64 %r8, i64 %r9, i64 %sp0)
  %19 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 1, i32 0
  %20 = load i64, i64* %19
  ret i64 %20

; uselistorder directives
  uselistorder i64* %11, { 1, 0 }
  uselistorder i64* %9, { 1, 0 }
  uselistorder %struct.x86_regs* %registers, { 0, 9, 8, 1, 2, 3, 4, 5, 6, 7 }
  uselistorder i64 %sp0, { 1, 0 }
  uselistorder i64 %r9, { 1, 0 }
  uselistorder i64 %r8, { 1, 0 }
  uselistorder i64 %rcx, { 1, 0 }
  uselistorder i64 %rdx, { 1, 0 }
  uselistorder i64 %rsi, { 1, 0 }
  uselistorder i64 %rdi, { 1, 0 }
}

define void @8(%struct.x86_regs*) {
  call void @fcd.placeholder.31(%struct.x86_regs* %0)
  ret void
}

define void @_fini(i64 %rip, i64 %rsp) !fcd.vaddr !743 !fcd.output !3 !fcd.recoverable !3 !fcd.stackptr !4 {
entry:
  %registers = alloca %struct.x86_regs, !fcd.registers !3
  %0 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp = load i64, i64* %0
  %1 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  store i64 %rip, i64* %1
  %2 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  store i64 %rsp, i64* %2
  %3 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !5, !alias.scope !744
  %5 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !5, !alias.scope !747
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8, align 4, !fcd.prgmem !3
  ret void
                                                  ; No predecessors!
  call void @fcd.placeholder.32(i64 %rip, i64 %rsp)
  ret void

; uselistorder directives
  uselistorder %struct.x86_regs* %registers, { 4, 3, 0, 1, 2 }
  uselistorder i64 %rsp, { 1, 0 }
  uselistorder i64 %rip, { 1, 0 }
}

define void @9(%struct.x86_regs*) {
  call void @fcd.placeholder.33(%struct.x86_regs* %0)
  ret void
}

define %main.returns @main(i64 %rip, i64 %rsp) !fcd.vaddr !752 !fcd.output !3 !fcd.recoverable !3 !fcd.funver !753 !fcd.stackptr !4 {
entry:
  %registers = alloca %struct.x86_regs, !fcd.registers !3
  %0 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp = load i64, i64* %0
  %1 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  store i64 %rip, i64* %1
  %2 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  store i64 %rsp, i64* %2
  %3 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !5, !alias.scope !754
  %5 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !5, !alias.scope !757
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8, align 4, !fcd.prgmem !3
  %9 = add i64 %6, -128
  store i64 %9, i64* %5, align 8, !tbaa !5, !alias.scope !762, !noalias !769
  store i64 4195875, i64* %3, align 4
  %10 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 21, i32 0
  %11 = load i64, i64* %10, align 8, !tbaa !5, !alias.scope !771, !noalias !782
  %12 = add i64 %11, 40
  %13 = inttoptr i64 %12 to i64*
  %14 = load i64, i64* %13, align 4
  %15 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 1, i32 0
  %16 = add i64 %6, -24
  %17 = inttoptr i64 %16 to i64*
  store i64 %14, i64* %17, align 4, !fcd.prgmem !3
  store i64 0, i64* %15, align 8, !tbaa !5, !alias.scope !787, !noalias !794
  %18 = load i64, i64* inttoptr (i64 6295632 to i64*), align 16, !fcd.prgmem !3
  %19 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 4, i32 0
  store i64 %18, i64* %19, align 8, !tbaa !5, !alias.scope !796, !noalias !805
  %20 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 5, i32 0
  store i64 99, i64* %20, align 8, !tbaa !5, !alias.scope !808, !noalias !817
  %21 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 6, i32 0
  store i64 %9, i64* %21, align 8, !tbaa !5, !alias.scope !820, !noalias !829
  store i64 4195902, i64* %3, align 4
  %22 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp3 = load i64, i64* %22
  %23 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 6, i32 0
  %rdi = load i64, i64* %23
  %24 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 5, i32 0
  %rsi = load i64, i64* %24
  %25 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 4, i32 0
  %rdx = load i64, i64* %25
  %26 = call i64 @fgets(i64 %rdi, i64 %rsi, i64 %rdx)
  %27 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 1, i32 0
  store i64 %26, i64* %27
  %28 = load i64, i64* %5, align 8, !tbaa !5, !alias.scope !832, !noalias !845
  store i64 %28, i64* %15, align 8, !tbaa !5, !alias.scope !846, !noalias !853
  store i64 4195910, i64* %3, align 4
  %29 = add i64 %28, 100
  store i64 %29, i64* %19, align 8, !tbaa !5, !alias.scope !856, !noalias !863
  br label %"400646"

"400646":                                         ; preds = %"400646", %entry
  %.in = phi i64 [ %33, %"400646" ], [ %28, %entry ]
  %30 = inttoptr i64 %.in to i8*
  %31 = load i8, i8* %30, align 1, !fcd.prgmem !3
  %32 = xor i8 %31, 66
  store i8 %32, i8* %30, align 1, !fcd.prgmem !3
  %33 = add i64 %.in, 1
  store i64 %33, i64* %15, align 8, !tbaa !5, !alias.scope !865, !noalias !872
  %34 = icmp eq i64 %33, %29
  store i64 4195922, i64* %3, align 4
  br i1 %34, label %"400652", label %"400646"

"400652":                                         ; preds = %"400646"
  %35 = add i64 %28, 99
  %36 = inttoptr i64 %35 to i8*
  store i8 0, i8* %36, align 1, !fcd.prgmem !3
  store i64 %28, i64* %21, align 8, !tbaa !5, !alias.scope !874, !noalias !883
  store i64 4195935, i64* %3, align 4
  %37 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp4 = load i64, i64* %37
  %38 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 6, i32 0
  %rdi5 = load i64, i64* %38
  %39 = call i64 @puts(i64 %rdi5)
  %40 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 1, i32 0
  store i64 %39, i64* %40
  store i64 0, i64* %15, align 8, !tbaa !5, !alias.scope !886, !noalias !895
  store i64 4195945, i64* %3, align 4
  %41 = load i64, i64* %5, align 8, !tbaa !5, !alias.scope !898, !noalias !909
  %42 = add i64 %41, 104
  %43 = inttoptr i64 %42 to i64*
  %44 = load i64, i64* %43, align 4
  %45 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 3, i32 0
  %46 = load i64, i64* %10, align 8, !tbaa !5, !alias.scope !914, !noalias !925
  %47 = add i64 %46, 40
  %48 = inttoptr i64 %47 to i64*
  %49 = load i64, i64* %48, align 4, !fcd.prgmem !3
  %50 = xor i64 %49, %44
  %51 = icmp eq i64 %49, %44
  store i64 %50, i64* %45, align 8, !tbaa !5, !alias.scope !931, !noalias !938
  store i64 4195956, i64* %3, align 4
  br i1 %51, label %"400679", label %"400674"

"400679":                                         ; preds = %"400652", %"400674"
  %52 = phi i64 [ %41, %"400652" ], [ %.pre, %"400674" ]
  %53 = add i64 %52, 120
  %54 = inttoptr i64 %53 to i64*
  %55 = load i64, i64* %54, align 4, !fcd.prgmem !3
  %56 = add i64 %52, 128
  store i64 %56, i64* %5, align 8, !tbaa !5, !alias.scope !940
  store i64 %55, i64* %3, align 8, !tbaa !5, !alias.scope !945
  %57 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 1, i32 0
  %58 = load i64, i64* %57
  %set.rax = insertvalue %main.returns zeroinitializer, i64 %58, 0
  %59 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 4, i32 0
  %60 = load i64, i64* %59
  %set.rdx = insertvalue %main.returns %set.rax, i64 %60, 1
  ret %main.returns %set.rdx

"400674":                                         ; preds = %"400652"
  store i64 4195961, i64* %3, align 4
  %61 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp6 = load i64, i64* %61
  %62 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 3, i32 0
  %rcx = load i64, i64* %62
  %63 = call %__stack_chk_fail.returns @__stack_chk_fail(i64 %rcx)
  %rdx7 = extractvalue %__stack_chk_fail.returns %63, 0
  %64 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 4, i32 0
  store i64 %rdx7, i64* %64
  %rax = extractvalue %__stack_chk_fail.returns %63, 1
  %65 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 1, i32 0
  store i64 %rax, i64* %65
  %.pre = load i64, i64* %5, align 8, !tbaa !5, !alias.scope !948, !noalias !955
  br label %"400679"
                                                  ; No predecessors!
  %67 = call %main.returns @fcd.placeholder.34(i64 %rip, i64 %rsp)
  %68 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 1, i32 0
  %69 = load i64, i64* %68
  %set.rax1 = insertvalue %main.returns zeroinitializer, i64 %69, 0
  %70 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 4, i32 0
  %71 = load i64, i64* %70
  %set.rdx2 = insertvalue %main.returns %set.rax1, i64 %71, 1
  ret %main.returns %set.rdx2

; uselistorder directives
  uselistorder i64 %33, { 1, 2, 0 }
  uselistorder i64 %28, { 2, 1, 0, 3, 4 }
  uselistorder i64* %5, { 1, 0, 2, 3, 4, 5 }
  uselistorder i64* %3, { 2, 0, 3, 4, 5, 6, 7, 8, 9, 1 }
  uselistorder %struct.x86_regs* %registers, { 12, 13, 0, 1, 2, 3, 14, 15, 26, 4, 5, 6, 7, 8, 9, 10, 11, 25, 24, 23, 22, 21, 20, 19, 16, 17, 18 }
  uselistorder i64 40, { 1, 2, 0 }
  uselistorder i64 %rsp, { 1, 0 }
  uselistorder i64 %rip, { 1, 0 }
  uselistorder label %"400679", { 1, 0 }
}

define void @10(%struct.x86_regs*) {
  call void @fcd.placeholder.35(%struct.x86_regs* %0)
  ret void
}

define i64 @fgets(i64 %rdi, i64 %rsi, i64 %rdx) !fcd.vaddr !957 !fcd.output !3 !fcd.recoverable !3 !fcd.importname !958 {
entry:
  %registers = alloca %struct.x86_regs, !fcd.registers !3
  %0 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp = load i64, i64* %0
  %1 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 6, i32 0
  store i64 %rdi, i64* %1
  %2 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 5, i32 0
  store i64 %rsi, i64* %2
  %3 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 4, i32 0
  store i64 %rdx, i64* %3
  %4 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !5, !alias.scope !959
  %6 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !5, !alias.scope !962
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 4, !fcd.prgmem !3
  store i64 %8, i64* %6, align 8, !tbaa !5, !alias.scope !967
  store i64 4195590, i64* %4, align 4
  %10 = load i64, i64* inttoptr (i64 6295600 to i64*), align 16, !fcd.prgmem !3
  %11 = inttoptr i64 %10 to i64
  call void @__indirect_jump(i64 %11)
  unreachable
                                                  ; No predecessors!
  %13 = call i64 @fcd.placeholder.36(i64 %rdi, i64 %rsi, i64 %rdx)
  %14 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 1, i32 0
  %15 = load i64, i64* %14
  ret i64 %15

; uselistorder directives
  uselistorder i64* %6, { 1, 0 }
  uselistorder i64* %4, { 1, 0 }
  uselistorder %struct.x86_regs* %registers, { 0, 6, 5, 1, 2, 3, 4 }
  uselistorder i32 5, { 0, 1, 6, 2, 3, 7, 5, 8, 4, 9, 10 }
  uselistorder i64 %rdx, { 1, 0 }
  uselistorder i64 %rsi, { 1, 0 }
  uselistorder i64 %rdi, { 1, 0 }
}

define void @11(%struct.x86_regs*) {
  call void @fcd.placeholder.37(%struct.x86_regs* %0)
  ret void
}

define i64 @puts(i64 %rdi) !fcd.vaddr !970 !fcd.output !3 !fcd.recoverable !3 !fcd.importname !971 {
entry:
  %registers = alloca %struct.x86_regs, !fcd.registers !3
  %0 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp = load i64, i64* %0
  %1 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 6, i32 0
  store i64 %rdi, i64* %1
  %2 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  %3 = load i64, i64* %2, align 8, !tbaa !5, !alias.scope !972
  %4 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !5, !alias.scope !975
  %6 = add i64 %5, -8
  %7 = inttoptr i64 %6 to i64*
  store i64 %3, i64* %7, align 4, !fcd.prgmem !3
  store i64 %6, i64* %4, align 8, !tbaa !5, !alias.scope !980
  store i64 4195542, i64* %2, align 4
  %8 = load i64, i64* inttoptr (i64 6295576 to i64*), align 8, !fcd.prgmem !3
  %9 = inttoptr i64 %8 to i64
  call void @__indirect_jump(i64 %9)
  unreachable
                                                  ; No predecessors!
  %11 = call i64 @fcd.placeholder.38(i64 %rdi)
  %12 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 1, i32 0
  %13 = load i64, i64* %12
  ret i64 %13

; uselistorder directives
  uselistorder i64* %4, { 1, 0 }
  uselistorder i64* %2, { 1, 0 }
  uselistorder %struct.x86_regs* %registers, { 0, 4, 3, 1, 2 }
  uselistorder i32 6, { 0, 2, 1, 3, 8, 4, 5, 9, 7, 10, 6, 11 }
  uselistorder i64 %rdi, { 1, 0 }
}

define void @12(%struct.x86_regs*) {
  call void @fcd.placeholder.39(%struct.x86_regs* %0)
  ret void
}

define %__stack_chk_fail.returns @__stack_chk_fail(i64 %rcx) !fcd.vaddr !983 !fcd.output !3 !fcd.recoverable !3 !fcd.importname !984 {
entry:
  %registers = alloca %struct.x86_regs, !fcd.registers !3
  %0 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp = load i64, i64* %0
  %1 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 3, i32 0
  store i64 %rcx, i64* %1
  %2 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  %3 = load i64, i64* %2, align 8, !tbaa !5, !alias.scope !985
  %4 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !5, !alias.scope !988
  %6 = add i64 %5, -8
  %7 = inttoptr i64 %6 to i64*
  store i64 %3, i64* %7, align 4, !fcd.prgmem !3
  store i64 %6, i64* %4, align 8, !tbaa !5, !alias.scope !993
  store i64 4195558, i64* %2, align 4
  %8 = load i64, i64* inttoptr (i64 6295584 to i64*), align 32, !fcd.prgmem !3
  %9 = inttoptr i64 %8 to i64
  call void @__indirect_jump(i64 %9)
  unreachable
                                                  ; No predecessors!
  %11 = call %__stack_chk_fail.returns @fcd.placeholder.40(i64 %rcx)
  %12 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 4, i32 0
  %13 = load i64, i64* %12
  %set.rdx = insertvalue %__stack_chk_fail.returns zeroinitializer, i64 %13, 0
  %14 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 1, i32 0
  %15 = load i64, i64* %14
  %set.rax = insertvalue %__stack_chk_fail.returns %set.rdx, i64 %15, 1
  ret %__stack_chk_fail.returns %set.rax

; uselistorder directives
  uselistorder i64* %4, { 1, 0 }
  uselistorder i64* %2, { 1, 0 }
  uselistorder %struct.x86_regs* %registers, { 0, 1, 5, 4, 2, 3 }
  uselistorder i32 4, { 0, 2, 4, 1, 5, 3, 11, 6, 7, 12, 8, 10, 13, 9 }
  uselistorder i32 3, { 0, 1, 4, 2, 3, 5 }
  uselistorder i64 %rcx, { 1, 0 }
}

define void @13(%struct.x86_regs*) {
  call void @fcd.placeholder.41(%struct.x86_regs* %0)
  ret void
}

define void @func_400510(i64 %rip, i64 %rsp) !fcd.vaddr !996 !fcd.output !3 !fcd.recoverable !3 !fcd.stackptr !4 {
entry:
  %registers = alloca %struct.x86_regs, !fcd.registers !3
  %0 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp = load i64, i64* %0
  %1 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  store i64 %rip, i64* %1
  %2 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  store i64 %rsp, i64* %2
  %3 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !5, !alias.scope !997
  %5 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !5, !alias.scope !1000
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8, align 4, !fcd.prgmem !3
  store i64 %7, i64* %5, align 8, !tbaa !5, !alias.scope !1005
  store i64 4195606, i64* %3, align 4
  %9 = load i64, i64* inttoptr (i64 6295544 to i64*), align 8, !fcd.prgmem !3
  %10 = inttoptr i64 %9 to i64
  call void @__indirect_jump(i64 %10)
  unreachable
                                                  ; No predecessors!
  call void @fcd.placeholder.42(i64 %rip, i64 %rsp)
  ret void

; uselistorder directives
  uselistorder i64* %5, { 1, 0 }
  uselistorder i64* %3, { 1, 0 }
  uselistorder %struct.x86_regs* %registers, { 4, 3, 0, 1, 2 }
  uselistorder void (i64)* @__indirect_jump, { 0, 3, 2, 1, 4 }
  uselistorder i32 9, { 18, 0, 15, 16, 17, 21, 2, 22, 3, 14, 23, 4, 20, 5, 6, 24, 7, 1, 19, 8, 9, 25, 10, 26, 11, 27, 12, 28, 13 }
  uselistorder i32 0, { 94, 147, 0, 1, 2, 6, 7, 95, 144, 8, 9, 14, 96, 145, 15, 16, 20, 97, 146, 21, 22, 23, 24, 30, 31, 10, 11, 12, 13, 32, 33, 98, 17, 18, 19, 25, 26, 27, 28, 29, 99, 100, 101, 102, 103, 104, 150, 34, 35, 36, 105, 151, 37, 38, 39, 40, 106, 143, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 107, 108, 109, 110, 111, 112, 113, 114, 115, 152, 56, 57, 58, 59, 116, 117, 118, 149, 60, 61, 62, 63, 64, 65, 119, 120, 153, 66, 67, 68, 3, 4, 5, 121, 122, 148, 69, 70, 71, 90, 91, 92, 93, 72, 73, 74, 124, 125, 126, 127, 128, 129, 123, 130, 131, 132, 154, 75, 76, 77, 78, 79, 80, 133, 134, 135, 136, 155, 81, 82, 83, 137, 156, 84, 85, 86, 139, 140, 138, 141, 142, 157, 87, 88, 89 }
  uselistorder i32 8, { 37, 0, 1, 38, 4, 39, 6, 40, 8, 5, 7, 9, 41, 10, 11, 42, 12, 13, 43, 14, 15, 44, 16, 17, 45, 18, 19, 20, 21, 46, 22, 23, 2, 3, 47, 24, 25, 36, 26, 27, 48, 28, 29, 49, 30, 31, 50, 32, 33, 51, 34, 35 }
  uselistorder i64 0, { 96, 157, 0, 1, 2, 6, 7, 97, 154, 8, 9, 14, 98, 155, 15, 16, 20, 99, 156, 21, 22, 23, 24, 30, 31, 10, 11, 12, 13, 32, 33, 100, 161, 17, 18, 19, 25, 26, 27, 28, 29, 101, 102, 103, 104, 105, 106, 107, 162, 34, 35, 36, 108, 163, 37, 38, 39, 40, 109, 153, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 110, 111, 112, 113, 114, 115, 116, 118, 117, 119, 164, 58, 59, 60, 61, 120, 121, 122, 160, 62, 63, 64, 65, 66, 67, 123, 124, 165, 68, 69, 70, 3, 4, 5, 158, 125, 126, 159, 71, 72, 73, 92, 93, 94, 95, 127, 129, 166, 74, 75, 76, 130, 131, 132, 133, 134, 135, 128, 136, 137, 138, 167, 77, 78, 79, 80, 81, 82, 139, 140, 141, 142, 143, 144, 168, 83, 84, 85, 145, 169, 86, 87, 88, 147, 148, 149, 150, 170, 146, 171, 151, 152, 172, 89, 90, 91 }
  uselistorder i32 1, { 0, 1, 2, 4, 5, 7, 8, 10, 3, 11, 6, 9, 25, 12, 13, 14, 15, 16, 26, 17, 27, 18, 19, 28, 20, 21, 29, 22, 23, 30, 24 }
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
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!11 = distinct !{!11, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!12 = !{!13, !15}
!13 = distinct !{!13, !14, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!14 = distinct !{!14, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!15 = distinct !{!15, !16, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!16 = distinct !{!16, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!17 = !{!18, !15}
!18 = distinct !{!18, !19, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!19 = distinct !{!19, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!20 = !{!21, !23, !25, !27}
!21 = distinct !{!21, !22, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!22 = distinct !{!22, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!23 = distinct !{!23, !24, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!24 = distinct !{!24, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!25 = distinct !{!25, !26, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!26 = distinct !{!26, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!27 = distinct !{!27, !28, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!28 = distinct !{!28, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!29 = !{!30, !31}
!30 = distinct !{!30, !26, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!31 = distinct !{!31, !28, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!32 = !{!33, !35, !37, !39}
!33 = distinct !{!33, !34, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!34 = distinct !{!34, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!35 = distinct !{!35, !36, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!36 = distinct !{!36, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!37 = distinct !{!37, !38, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!38 = distinct !{!38, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!39 = distinct !{!39, !40, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!40 = distinct !{!40, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!41 = !{!42, !43}
!42 = distinct !{!42, !38, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!43 = distinct !{!43, !40, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!44 = !{!45, !47, !49}
!45 = distinct !{!45, !46, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!46 = distinct !{!46, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!47 = distinct !{!47, !48, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!48 = distinct !{!48, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!49 = distinct !{!49, !50, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!50 = distinct !{!50, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!51 = !{!52}
!52 = distinct !{!52, !50, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!53 = !{!54, !56, !58}
!54 = distinct !{!54, !55, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!55 = distinct !{!55, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!56 = distinct !{!56, !57, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!57 = distinct !{!57, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!58 = distinct !{!58, !59, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!59 = distinct !{!59, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!60 = !{!61}
!61 = distinct !{!61, !59, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!62 = !{!63, !65, !67}
!63 = distinct !{!63, !64, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!64 = distinct !{!64, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!65 = distinct !{!65, !66, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!66 = distinct !{!66, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!67 = distinct !{!67, !68, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!68 = distinct !{!68, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!69 = !{!70}
!70 = distinct !{!70, !68, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!71 = !{!72, !74}
!72 = distinct !{!72, !73, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!73 = distinct !{!73, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!74 = distinct !{!74, !75, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm: %regs"}
!75 = distinct !{!75, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!78 = distinct !{!78, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!79 = !{i64 4196080}
!80 = !{!81, !83}
!81 = distinct !{!81, !82, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!82 = distinct !{!82, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!83 = distinct !{!83, !84, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!84 = distinct !{!84, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!85 = !{i64 4195728}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!88 = distinct !{!88, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!89 = !{!90, !92}
!90 = distinct !{!90, !91, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!91 = distinct !{!91, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!92 = distinct !{!92, !93, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!93 = distinct !{!93, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!94 = !{!95, !97, !99}
!95 = distinct !{!95, !96, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!96 = distinct !{!96, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!97 = distinct !{!97, !98, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!98 = distinct !{!98, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!99 = distinct !{!99, !100, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!100 = distinct !{!100, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!101 = !{!102}
!102 = distinct !{!102, !100, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!103 = !{!104, !106, !108}
!104 = distinct !{!104, !105, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!105 = distinct !{!105, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!106 = distinct !{!106, !107, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!107 = distinct !{!107, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!108 = distinct !{!108, !109, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!109 = distinct !{!109, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!110 = !{!111}
!111 = distinct !{!111, !109, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!112 = !{!113, !115, !117}
!113 = distinct !{!113, !114, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!114 = distinct !{!114, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!115 = distinct !{!115, !116, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!116 = distinct !{!116, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!117 = distinct !{!117, !118, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!118 = distinct !{!118, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!119 = !{!120}
!120 = distinct !{!120, !118, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!123 = distinct !{!123, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!124 = !{i64 4195968}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!127 = distinct !{!127, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!128 = !{!129, !131}
!129 = distinct !{!129, !130, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!130 = distinct !{!130, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!131 = distinct !{!131, !132, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!132 = distinct !{!132, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!133 = !{!134, !136, !138}
!134 = distinct !{!134, !135, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!135 = distinct !{!135, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!136 = distinct !{!136, !137, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!137 = distinct !{!137, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!138 = distinct !{!138, !139, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!139 = distinct !{!139, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!140 = !{!141}
!141 = distinct !{!141, !139, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!142 = !{!143, !145, !147}
!143 = distinct !{!143, !144, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!144 = distinct !{!144, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!145 = distinct !{!145, !146, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!146 = distinct !{!146, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!147 = distinct !{!147, !148, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!148 = distinct !{!148, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!149 = !{!150}
!150 = distinct !{!150, !148, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!151 = !{!152, !152, i64 0}
!152 = !{!"int", !7, i64 0}
!153 = !{!154, !156, !158, !160}
!154 = distinct !{!154, !155, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!155 = distinct !{!155, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!156 = distinct !{!156, !157, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!157 = distinct !{!157, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!158 = distinct !{!158, !159, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!159 = distinct !{!159, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!160 = distinct !{!160, !161, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!161 = distinct !{!161, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!162 = !{!163, !164}
!163 = distinct !{!163, !159, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!164 = distinct !{!164, !161, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!165 = !{!166, !168, !170, !160}
!166 = distinct !{!166, !167, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!167 = distinct !{!167, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!168 = distinct !{!168, !169, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!169 = distinct !{!169, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!170 = distinct !{!170, !171, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!171 = distinct !{!171, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!172 = !{!173, !164}
!173 = distinct !{!173, !171, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!174 = !{!175, !177, !179}
!175 = distinct !{!175, !176, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!176 = distinct !{!176, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!177 = distinct !{!177, !178, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!178 = distinct !{!178, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!179 = distinct !{!179, !180, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!180 = distinct !{!180, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!181 = !{!182}
!182 = distinct !{!182, !180, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!183 = !{!184, !186, !188}
!184 = distinct !{!184, !185, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!185 = distinct !{!185, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!186 = distinct !{!186, !187, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!187 = distinct !{!187, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!188 = distinct !{!188, !189, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!189 = distinct !{!189, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!190 = !{!191}
!191 = distinct !{!191, !189, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!192 = !{!193, !195, !197}
!193 = distinct !{!193, !194, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!194 = distinct !{!194, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!195 = distinct !{!195, !196, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!196 = distinct !{!196, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!197 = distinct !{!197, !198, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!198 = distinct !{!198, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!199 = !{!200}
!200 = distinct !{!200, !198, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!201 = !{!202, !204, !206}
!202 = distinct !{!202, !203, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!203 = distinct !{!203, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!204 = distinct !{!204, !205, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!205 = distinct !{!205, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!206 = distinct !{!206, !207, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!207 = distinct !{!207, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!208 = !{!209}
!209 = distinct !{!209, !207, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!210 = !{!211, !213, !215}
!211 = distinct !{!211, !212, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!212 = distinct !{!212, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!213 = distinct !{!213, !214, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!214 = distinct !{!214, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!215 = distinct !{!215, !216, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!216 = distinct !{!216, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!217 = !{!218}
!218 = distinct !{!218, !216, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!219 = !{!220, !222, !224, !226}
!220 = distinct !{!220, !221, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!221 = distinct !{!221, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!222 = distinct !{!222, !223, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!223 = distinct !{!223, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!224 = distinct !{!224, !225, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!225 = distinct !{!225, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!226 = distinct !{!226, !227, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!227 = distinct !{!227, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!228 = !{!229, !230}
!229 = distinct !{!229, !225, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!230 = distinct !{!230, !227, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!231 = !{!232, !234, !236, !226}
!232 = distinct !{!232, !233, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!233 = distinct !{!233, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!234 = distinct !{!234, !235, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!235 = distinct !{!235, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!236 = distinct !{!236, !237, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!237 = distinct !{!237, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!238 = !{!239, !230}
!239 = distinct !{!239, !237, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!240 = !{!241, !243, !245, !247}
!241 = distinct !{!241, !242, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!242 = distinct !{!242, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!243 = distinct !{!243, !244, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!244 = distinct !{!244, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!245 = distinct !{!245, !246, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!246 = distinct !{!246, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!247 = distinct !{!247, !248, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!248 = distinct !{!248, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!249 = !{!250, !251}
!250 = distinct !{!250, !246, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!251 = distinct !{!251, !248, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!252 = !{!253, !255, !257, !247}
!253 = distinct !{!253, !254, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!254 = distinct !{!254, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!255 = distinct !{!255, !256, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!256 = distinct !{!256, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!257 = distinct !{!257, !258, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!258 = distinct !{!258, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!259 = !{!260, !251}
!260 = distinct !{!260, !258, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!261 = !{!262, !264, !266}
!262 = distinct !{!262, !263, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!263 = distinct !{!263, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!264 = distinct !{!264, !265, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!265 = distinct !{!265, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!266 = distinct !{!266, !267, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!267 = distinct !{!267, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!268 = !{!269}
!269 = distinct !{!269, !267, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!270 = !{!271, !273, !275}
!271 = distinct !{!271, !272, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!272 = distinct !{!272, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!273 = distinct !{!273, !274, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!274 = distinct !{!274, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!275 = distinct !{!275, !276, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!276 = distinct !{!276, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!277 = !{!278}
!278 = distinct !{!278, !276, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!279 = !{!280, !282, !284, !286, !288, !290, !292}
!280 = distinct !{!280, !281, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!281 = distinct !{!281, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!282 = distinct !{!282, !283, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!283 = distinct !{!283, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!284 = distinct !{!284, !285, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs: %regs"}
!285 = distinct !{!285, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs"}
!286 = distinct !{!286, !287, !"_ZL20x86_logical_operatorIZ8x86_testE3$_2EmP8x86_regsP13x86_flags_regPK6cs_x86OT_: %regs"}
!287 = distinct !{!287, !"_ZL20x86_logical_operatorIZ8x86_testE3$_2EmP8x86_regsP13x86_flags_regPK6cs_x86OT_"}
!288 = distinct !{!288, !289, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!289 = distinct !{!289, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!290 = distinct !{!290, !291, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!291 = distinct !{!291, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!292 = distinct !{!292, !293, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!293 = distinct !{!293, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!294 = !{!295, !296}
!295 = distinct !{!295, !287, !"_ZL20x86_logical_operatorIZ8x86_testE3$_2EmP8x86_regsP13x86_flags_regPK6cs_x86OT_: %flags"}
!296 = distinct !{!296, !287, !"_ZL20x86_logical_operatorIZ8x86_testE3$_2EmP8x86_regsP13x86_flags_regPK6cs_x86OT_: %inst"}
!297 = !{!298, !300, !302}
!298 = distinct !{!298, !299, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!299 = distinct !{!299, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!300 = distinct !{!300, !301, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!301 = distinct !{!301, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!302 = distinct !{!302, !303, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs: %regs"}
!303 = distinct !{!303, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs"}
!304 = !{!305}
!305 = distinct !{!305, !303, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs: %destination"}
!306 = !{!307, !309, !311}
!307 = distinct !{!307, !308, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!308 = distinct !{!308, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!309 = distinct !{!309, !310, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!310 = distinct !{!310, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!311 = distinct !{!311, !312, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!312 = distinct !{!312, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!313 = !{!314}
!314 = distinct !{!314, !312, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!315 = !{!316, !318, !320}
!316 = distinct !{!316, !317, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!317 = distinct !{!317, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!318 = distinct !{!318, !319, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!319 = distinct !{!319, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!320 = distinct !{!320, !321, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!321 = distinct !{!321, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!322 = !{!323}
!323 = distinct !{!323, !321, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!324 = !{!325, !327, !329}
!325 = distinct !{!325, !326, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!326 = distinct !{!326, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!327 = distinct !{!327, !328, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!328 = distinct !{!328, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!329 = distinct !{!329, !330, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!330 = distinct !{!330, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!331 = !{!332}
!332 = distinct !{!332, !330, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!333 = !{!334, !336, !338}
!334 = distinct !{!334, !335, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!335 = distinct !{!335, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!336 = distinct !{!336, !337, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!337 = distinct !{!337, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!338 = distinct !{!338, !339, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!339 = distinct !{!339, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!340 = !{!341}
!341 = distinct !{!341, !339, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!342 = !{!343, !345, !347}
!343 = distinct !{!343, !344, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!344 = distinct !{!344, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!345 = distinct !{!345, !346, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!346 = distinct !{!346, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!347 = distinct !{!347, !348, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!348 = distinct !{!348, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!349 = !{!350}
!350 = distinct !{!350, !348, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!351 = !{!352, !354, !356}
!352 = distinct !{!352, !353, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!353 = distinct !{!353, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!354 = distinct !{!354, !355, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!355 = distinct !{!355, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!356 = distinct !{!356, !357, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!357 = distinct !{!357, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!358 = !{!359}
!359 = distinct !{!359, !357, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!360 = !{!361, !363}
!361 = distinct !{!361, !362, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!362 = distinct !{!362, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!363 = distinct !{!363, !364, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm: %regs"}
!364 = distinct !{!364, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm"}
!365 = !{!366}
!366 = distinct !{!366, !367, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!367 = distinct !{!367, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!368 = !{!369, !371, !373}
!369 = distinct !{!369, !370, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!370 = distinct !{!370, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!371 = distinct !{!371, !372, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!372 = distinct !{!372, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!373 = distinct !{!373, !374, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!374 = distinct !{!374, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!375 = !{!376}
!376 = distinct !{!376, !374, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!377 = !{!378, !380, !382, !384}
!378 = distinct !{!378, !379, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!379 = distinct !{!379, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!380 = distinct !{!380, !381, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!381 = distinct !{!381, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!382 = distinct !{!382, !383, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!383 = distinct !{!383, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!384 = distinct !{!384, !385, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!385 = distinct !{!385, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!386 = !{!387, !388}
!387 = distinct !{!387, !383, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!388 = distinct !{!388, !385, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!389 = !{!390, !392, !394, !384}
!390 = distinct !{!390, !391, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!391 = distinct !{!391, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!392 = distinct !{!392, !393, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!393 = distinct !{!393, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!394 = distinct !{!394, !395, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!395 = distinct !{!395, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!396 = !{!397, !388}
!397 = distinct !{!397, !395, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!398 = !{!399, !401, !403, !405}
!399 = distinct !{!399, !400, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!400 = distinct !{!400, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!401 = distinct !{!401, !402, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!402 = distinct !{!402, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!403 = distinct !{!403, !404, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!404 = distinct !{!404, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!405 = distinct !{!405, !406, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!406 = distinct !{!406, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!407 = !{!408, !409}
!408 = distinct !{!408, !404, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!409 = distinct !{!409, !406, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!410 = !{!411, !413, !415, !405}
!411 = distinct !{!411, !412, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!412 = distinct !{!412, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!413 = distinct !{!413, !414, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!414 = distinct !{!414, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!415 = distinct !{!415, !416, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!416 = distinct !{!416, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!417 = !{!418, !409}
!418 = distinct !{!418, !416, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!419 = !{!420, !422, !424, !426}
!420 = distinct !{!420, !421, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!421 = distinct !{!421, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!422 = distinct !{!422, !423, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!423 = distinct !{!423, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!424 = distinct !{!424, !425, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!425 = distinct !{!425, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!426 = distinct !{!426, !427, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!427 = distinct !{!427, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!428 = !{!429, !430}
!429 = distinct !{!429, !425, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!430 = distinct !{!430, !427, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!431 = !{!432, !434, !436, !426}
!432 = distinct !{!432, !433, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!433 = distinct !{!433, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!434 = distinct !{!434, !435, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!435 = distinct !{!435, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!436 = distinct !{!436, !437, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!437 = distinct !{!437, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!438 = !{!439, !430}
!439 = distinct !{!439, !437, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!440 = !{!441, !443, !445, !447}
!441 = distinct !{!441, !442, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!442 = distinct !{!442, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!443 = distinct !{!443, !444, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: %regs"}
!444 = distinct !{!444, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op"}
!445 = distinct !{!445, !446, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op: %regs"}
!446 = distinct !{!446, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op"}
!447 = distinct !{!447, !448, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!448 = distinct !{!448, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!449 = !{!450, !451, !452}
!450 = distinct !{!450, !444, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: %op"}
!451 = distinct !{!451, !446, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op: %op"}
!452 = distinct !{!452, !448, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!453 = !{!454, !456, !458}
!454 = distinct !{!454, !455, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!455 = distinct !{!455, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!456 = distinct !{!456, !457, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!457 = distinct !{!457, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!458 = distinct !{!458, !459, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs: %regs"}
!459 = distinct !{!459, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs"}
!460 = !{!461}
!461 = distinct !{!461, !459, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs: %destination"}
!462 = !{!463, !465, !467}
!463 = distinct !{!463, !464, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!464 = distinct !{!464, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!465 = distinct !{!465, !466, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!466 = distinct !{!466, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!467 = distinct !{!467, !468, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!468 = distinct !{!468, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!469 = !{!470}
!470 = distinct !{!470, !468, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!471 = !{!472, !474, !476}
!472 = distinct !{!472, !473, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!473 = distinct !{!473, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!474 = distinct !{!474, !475, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!475 = distinct !{!475, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!476 = distinct !{!476, !477, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!477 = distinct !{!477, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!478 = !{!479}
!479 = distinct !{!479, !477, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!480 = !{i64 4195488}
!481 = !{!482}
!482 = distinct !{!482, !483, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!483 = distinct !{!483, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!484 = !{!485, !487}
!485 = distinct !{!485, !486, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!486 = distinct !{!486, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!487 = distinct !{!487, !488, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!488 = distinct !{!488, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!489 = !{!490, !492, !494}
!490 = distinct !{!490, !491, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!491 = distinct !{!491, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!492 = distinct !{!492, !493, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!493 = distinct !{!493, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!494 = distinct !{!494, !495, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!495 = distinct !{!495, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!496 = !{!497}
!497 = distinct !{!497, !495, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!498 = !{!499, !501, !503, !505}
!499 = distinct !{!499, !500, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!500 = distinct !{!500, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!501 = distinct !{!501, !502, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!502 = distinct !{!502, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!503 = distinct !{!503, !504, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!504 = distinct !{!504, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!505 = distinct !{!505, !506, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!506 = distinct !{!506, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!507 = !{!508, !509}
!508 = distinct !{!508, !504, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!509 = distinct !{!509, !506, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!510 = !{!511, !513}
!511 = distinct !{!511, !512, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!512 = distinct !{!512, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!513 = distinct !{!513, !514, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm: %regs"}
!514 = distinct !{!514, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm"}
!515 = !{!516}
!516 = distinct !{!516, !517, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!517 = distinct !{!517, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!518 = !{!519, !521, !523}
!519 = distinct !{!519, !520, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!520 = distinct !{!520, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!521 = distinct !{!521, !522, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!522 = distinct !{!522, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!523 = distinct !{!523, !524, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs: %regs"}
!524 = distinct !{!524, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs"}
!525 = !{!526}
!526 = distinct !{!526, !524, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs: %destination"}
!527 = !{i64 4195792}
!528 = !{!529}
!529 = distinct !{!529, !530, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!530 = distinct !{!530, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!531 = !{!532, !534}
!532 = distinct !{!532, !533, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!533 = distinct !{!533, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!534 = distinct !{!534, !535, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!535 = distinct !{!535, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!536 = !{!537, !534}
!537 = distinct !{!537, !538, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!538 = distinct !{!538, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!539 = !{!540, !542}
!540 = distinct !{!540, !541, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!541 = distinct !{!541, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!542 = distinct !{!542, !543, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm: %regs"}
!543 = distinct !{!543, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm"}
!544 = !{!545}
!545 = distinct !{!545, !546, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!546 = distinct !{!546, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!547 = !{!548, !550, !552}
!548 = distinct !{!548, !549, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!549 = distinct !{!549, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!550 = distinct !{!550, !551, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!551 = distinct !{!551, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!552 = distinct !{!552, !553, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!553 = distinct !{!553, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!554 = !{!555}
!555 = distinct !{!555, !553, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!556 = !{!557, !559}
!557 = distinct !{!557, !558, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!558 = distinct !{!558, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!559 = distinct !{!559, !560, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!560 = distinct !{!560, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!561 = !{!562, !564, !566, !568}
!562 = distinct !{!562, !563, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!563 = distinct !{!563, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!564 = distinct !{!564, !565, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!565 = distinct !{!565, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!566 = distinct !{!566, !567, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!567 = distinct !{!567, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!568 = distinct !{!568, !569, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!569 = distinct !{!569, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!570 = !{!571, !572}
!571 = distinct !{!571, !567, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!572 = distinct !{!572, !569, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!573 = !{!574, !576}
!574 = distinct !{!574, !575, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!575 = distinct !{!575, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!576 = distinct !{!576, !577, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm: %regs"}
!577 = distinct !{!577, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm"}
!578 = !{!579, !576}
!579 = distinct !{!579, !580, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!580 = distinct !{!580, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!581 = !{!582, !584, !586}
!582 = distinct !{!582, !583, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!583 = distinct !{!583, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!584 = distinct !{!584, !585, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!585 = distinct !{!585, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!586 = distinct !{!586, !587, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!587 = distinct !{!587, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!588 = !{!589}
!589 = distinct !{!589, !587, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!590 = !{i64 4195664}
!591 = !{!592}
!592 = distinct !{!592, !593, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!593 = distinct !{!593, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!594 = !{!595, !597}
!595 = distinct !{!595, !596, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!596 = distinct !{!596, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!597 = distinct !{!597, !598, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!598 = distinct !{!598, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!599 = !{!600, !602, !604}
!600 = distinct !{!600, !601, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!601 = distinct !{!601, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!602 = distinct !{!602, !603, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!603 = distinct !{!603, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!604 = distinct !{!604, !605, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!605 = distinct !{!605, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!606 = !{!607}
!607 = distinct !{!607, !605, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!608 = !{!609, !611, !613}
!609 = distinct !{!609, !610, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!610 = distinct !{!610, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!611 = distinct !{!611, !612, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!612 = distinct !{!612, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!613 = distinct !{!613, !614, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!614 = distinct !{!614, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!615 = !{!616}
!616 = distinct !{!616, !614, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!617 = !{!618}
!618 = distinct !{!618, !619, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!619 = distinct !{!619, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!620 = !{i64 4195616}
!621 = !{!622}
!622 = distinct !{!622, !623, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!623 = distinct !{!623, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!624 = !{!625, !627}
!625 = distinct !{!625, !626, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!626 = distinct !{!626, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!627 = distinct !{!627, !628, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!628 = distinct !{!628, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!629 = !{!630, !632, !634}
!630 = distinct !{!630, !631, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!631 = distinct !{!631, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!632 = distinct !{!632, !633, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!633 = distinct !{!633, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!634 = distinct !{!634, !635, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!635 = distinct !{!635, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!636 = !{!637}
!637 = distinct !{!637, !635, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!638 = !{!639, !641, !643, !645}
!639 = distinct !{!639, !640, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!640 = distinct !{!640, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!641 = distinct !{!641, !642, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!642 = distinct !{!642, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!643 = distinct !{!643, !644, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!644 = distinct !{!644, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!645 = distinct !{!645, !646, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!646 = distinct !{!646, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!647 = !{!648, !649}
!648 = distinct !{!648, !644, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!649 = distinct !{!649, !646, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!650 = !{!651, !653, !655, !645}
!651 = distinct !{!651, !652, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!652 = distinct !{!652, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!653 = distinct !{!653, !654, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!654 = distinct !{!654, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!655 = distinct !{!655, !656, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!656 = distinct !{!656, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!657 = !{!658, !649}
!658 = distinct !{!658, !656, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!659 = !{!660, !662, !664}
!660 = distinct !{!660, !661, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!661 = distinct !{!661, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!662 = distinct !{!662, !663, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!663 = distinct !{!663, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!664 = distinct !{!664, !665, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!665 = distinct !{!665, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!666 = !{!667}
!667 = distinct !{!667, !665, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!668 = !{!669, !671, !673, !675}
!669 = distinct !{!669, !670, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!670 = distinct !{!670, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!671 = distinct !{!671, !672, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!672 = distinct !{!672, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!673 = distinct !{!673, !674, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!674 = distinct !{!674, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!675 = distinct !{!675, !676, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!676 = distinct !{!676, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!677 = !{!678, !679}
!678 = distinct !{!678, !674, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!679 = distinct !{!679, !676, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!680 = !{!681, !683, !685}
!681 = distinct !{!681, !682, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!682 = distinct !{!682, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!683 = distinct !{!683, !684, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!684 = distinct !{!684, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!685 = distinct !{!685, !686, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!686 = distinct !{!686, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!687 = !{!688}
!688 = distinct !{!688, !686, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!689 = !{!690, !692}
!690 = distinct !{!690, !691, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!691 = distinct !{!691, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!692 = distinct !{!692, !693, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!693 = distinct !{!693, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!694 = !{!695, !697, !699, !701}
!695 = distinct !{!695, !696, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!696 = distinct !{!696, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!697 = distinct !{!697, !698, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!698 = distinct !{!698, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!699 = distinct !{!699, !700, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!700 = distinct !{!700, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!701 = distinct !{!701, !702, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!702 = distinct !{!702, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!703 = !{!704, !705}
!704 = distinct !{!704, !700, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!705 = distinct !{!705, !702, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!706 = !{!707, !709, !711, !713}
!707 = distinct !{!707, !708, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!708 = distinct !{!708, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!709 = distinct !{!709, !710, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!710 = distinct !{!710, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!711 = distinct !{!711, !712, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!712 = distinct !{!712, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!713 = distinct !{!713, !714, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!714 = distinct !{!714, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!715 = !{!716, !717}
!716 = distinct !{!716, !712, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!717 = distinct !{!717, !714, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!718 = !{!719, !721, !723, !725}
!719 = distinct !{!719, !720, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!720 = distinct !{!720, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!721 = distinct !{!721, !722, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!722 = distinct !{!722, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!723 = distinct !{!723, !724, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!724 = distinct !{!724, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!725 = distinct !{!725, !726, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!726 = distinct !{!726, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!727 = !{!728, !729}
!728 = distinct !{!728, !724, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!729 = distinct !{!729, !726, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!730 = !{i64 4195568}
!731 = !{!"__libc_start_main"}
!732 = !{!733}
!733 = distinct !{!733, !734, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!734 = distinct !{!734, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!735 = !{!736, !738}
!736 = distinct !{!736, !737, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!737 = distinct !{!737, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!738 = distinct !{!738, !739, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!739 = distinct !{!739, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!740 = !{!741, !738}
!741 = distinct !{!741, !742, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!742 = distinct !{!742, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!743 = !{i64 4196084}
!744 = !{!745}
!745 = distinct !{!745, !746, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!746 = distinct !{!746, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!747 = !{!748, !750}
!748 = distinct !{!748, !749, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!749 = distinct !{!749, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!750 = distinct !{!750, !751, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!751 = distinct !{!751, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!752 = !{i64 4195862}
!753 = !{i32 3}
!754 = !{!755}
!755 = distinct !{!755, !756, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!756 = distinct !{!756, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!757 = !{!758, !760}
!758 = distinct !{!758, !759, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!759 = distinct !{!759, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!760 = distinct !{!760, !761, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!761 = distinct !{!761, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!762 = !{!763, !765, !767}
!763 = distinct !{!763, !764, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!764 = distinct !{!764, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!765 = distinct !{!765, !766, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!766 = distinct !{!766, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!767 = distinct !{!767, !768, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!768 = distinct !{!768, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!769 = !{!770}
!770 = distinct !{!770, !768, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!771 = !{!772, !774, !776, !778, !780}
!772 = distinct !{!772, !773, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!773 = distinct !{!773, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!774 = distinct !{!774, !775, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: %regs"}
!775 = distinct !{!775, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op"}
!776 = distinct !{!776, !777, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op: %regs"}
!777 = distinct !{!777, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op"}
!778 = distinct !{!778, !779, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!779 = distinct !{!779, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!780 = distinct !{!780, !781, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!781 = distinct !{!781, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!782 = !{!783, !784, !785, !786}
!783 = distinct !{!783, !775, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: %op"}
!784 = distinct !{!784, !777, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op: %op"}
!785 = distinct !{!785, !779, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!786 = distinct !{!786, !781, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!787 = !{!788, !790, !792}
!788 = distinct !{!788, !789, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!789 = distinct !{!789, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!790 = distinct !{!790, !791, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!791 = distinct !{!791, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!792 = distinct !{!792, !793, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!793 = distinct !{!793, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!794 = !{!795}
!795 = distinct !{!795, !793, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!796 = !{!797, !799, !801, !803}
!797 = distinct !{!797, !798, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!798 = distinct !{!798, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!799 = distinct !{!799, !800, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!800 = distinct !{!800, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!801 = distinct !{!801, !802, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!802 = distinct !{!802, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!803 = distinct !{!803, !804, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!804 = distinct !{!804, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!805 = !{!806, !807}
!806 = distinct !{!806, !802, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!807 = distinct !{!807, !804, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!808 = !{!809, !811, !813, !815}
!809 = distinct !{!809, !810, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!810 = distinct !{!810, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!811 = distinct !{!811, !812, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!812 = distinct !{!812, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!813 = distinct !{!813, !814, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!814 = distinct !{!814, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!815 = distinct !{!815, !816, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!816 = distinct !{!816, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!817 = !{!818, !819}
!818 = distinct !{!818, !814, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!819 = distinct !{!819, !816, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!820 = !{!821, !823, !825, !827}
!821 = distinct !{!821, !822, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!822 = distinct !{!822, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!823 = distinct !{!823, !824, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!824 = distinct !{!824, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!825 = distinct !{!825, !826, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!826 = distinct !{!826, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!827 = distinct !{!827, !828, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!828 = distinct !{!828, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!829 = !{!830, !831}
!830 = distinct !{!830, !826, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!831 = distinct !{!831, !828, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!832 = !{!833, !835, !837, !839, !841, !843}
!833 = distinct !{!833, !834, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!834 = distinct !{!834, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!835 = distinct !{!835, !836, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!836 = distinct !{!836, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!837 = distinct !{!837, !838, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!838 = distinct !{!838, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!839 = distinct !{!839, !840, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!840 = distinct !{!840, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!841 = distinct !{!841, !842, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!842 = distinct !{!842, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!843 = distinct !{!843, !844, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: %regs"}
!844 = distinct !{!844, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op"}
!845 = !{}
!846 = !{!847, !849, !851, !839}
!847 = distinct !{!847, !848, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!848 = distinct !{!848, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!849 = distinct !{!849, !850, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!850 = distinct !{!850, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!851 = distinct !{!851, !852, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!852 = distinct !{!852, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!853 = !{!854, !855}
!854 = distinct !{!854, !852, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!855 = distinct !{!855, !840, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!856 = !{!857, !859, !861}
!857 = distinct !{!857, !858, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!858 = distinct !{!858, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!859 = distinct !{!859, !860, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!860 = distinct !{!860, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!861 = distinct !{!861, !862, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!862 = distinct !{!862, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!863 = !{!864}
!864 = distinct !{!864, !862, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!865 = !{!866, !868, !870}
!866 = distinct !{!866, !867, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!867 = distinct !{!867, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!868 = distinct !{!868, !869, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!869 = distinct !{!869, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!870 = distinct !{!870, !871, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!871 = distinct !{!871, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!872 = !{!873}
!873 = distinct !{!873, !871, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!874 = !{!875, !877, !879, !881}
!875 = distinct !{!875, !876, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!876 = distinct !{!876, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!877 = distinct !{!877, !878, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!878 = distinct !{!878, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!879 = distinct !{!879, !880, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!880 = distinct !{!880, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!881 = distinct !{!881, !882, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!882 = distinct !{!882, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!883 = !{!884, !885}
!884 = distinct !{!884, !880, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!885 = distinct !{!885, !882, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!886 = !{!887, !889, !891, !893}
!887 = distinct !{!887, !888, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!888 = distinct !{!888, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!889 = distinct !{!889, !890, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!890 = distinct !{!890, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!891 = distinct !{!891, !892, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!892 = distinct !{!892, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!893 = distinct !{!893, !894, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!894 = distinct !{!894, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!895 = !{!896, !897}
!896 = distinct !{!896, !892, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!897 = distinct !{!897, !894, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!898 = !{!899, !901, !903, !905, !907}
!899 = distinct !{!899, !900, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!900 = distinct !{!900, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!901 = distinct !{!901, !902, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: %regs"}
!902 = distinct !{!902, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op"}
!903 = distinct !{!903, !904, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op: %regs"}
!904 = distinct !{!904, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op"}
!905 = distinct !{!905, !906, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!906 = distinct !{!906, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!907 = distinct !{!907, !908, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!908 = distinct !{!908, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!909 = !{!910, !911, !912, !913}
!910 = distinct !{!910, !902, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: %op"}
!911 = distinct !{!911, !904, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op: %op"}
!912 = distinct !{!912, !906, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!913 = distinct !{!913, !908, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!914 = !{!915, !917, !919, !921, !923}
!915 = distinct !{!915, !916, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!916 = distinct !{!916, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!917 = distinct !{!917, !918, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: %regs"}
!918 = distinct !{!918, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op"}
!919 = distinct !{!919, !920, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op: %regs"}
!920 = distinct !{!920, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op"}
!921 = distinct !{!921, !922, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!922 = distinct !{!922, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!923 = distinct !{!923, !924, !"_ZL20x86_logical_operatorIZ7x86_xorE3$_3EmP8x86_regsP13x86_flags_regPK6cs_x86OT_: %regs"}
!924 = distinct !{!924, !"_ZL20x86_logical_operatorIZ7x86_xorE3$_3EmP8x86_regsP13x86_flags_regPK6cs_x86OT_"}
!925 = !{!926, !927, !928, !929, !930}
!926 = distinct !{!926, !918, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: %op"}
!927 = distinct !{!927, !920, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op: %op"}
!928 = distinct !{!928, !922, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!929 = distinct !{!929, !924, !"_ZL20x86_logical_operatorIZ7x86_xorE3$_3EmP8x86_regsP13x86_flags_regPK6cs_x86OT_: %flags"}
!930 = distinct !{!930, !924, !"_ZL20x86_logical_operatorIZ7x86_xorE3$_3EmP8x86_regsP13x86_flags_regPK6cs_x86OT_: %inst"}
!931 = !{!932, !934, !936}
!932 = distinct !{!932, !933, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!933 = distinct !{!933, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!934 = distinct !{!934, !935, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!935 = distinct !{!935, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!936 = distinct !{!936, !937, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!937 = distinct !{!937, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!938 = !{!939}
!939 = distinct !{!939, !937, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!940 = !{!941, !943}
!941 = distinct !{!941, !942, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!942 = distinct !{!942, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!943 = distinct !{!943, !944, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm: %regs"}
!944 = distinct !{!944, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm"}
!945 = !{!946}
!946 = distinct !{!946, !947, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!947 = distinct !{!947, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!948 = !{!949, !951, !953}
!949 = distinct !{!949, !950, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!950 = distinct !{!950, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!951 = distinct !{!951, !952, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!952 = distinct !{!952, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!953 = distinct !{!953, !954, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs: %regs"}
!954 = distinct !{!954, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs"}
!955 = !{!956}
!956 = distinct !{!956, !954, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs: %destination"}
!957 = !{i64 4195584}
!958 = !{!"fgets"}
!959 = !{!960}
!960 = distinct !{!960, !961, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!961 = distinct !{!961, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!962 = !{!963, !965}
!963 = distinct !{!963, !964, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!964 = distinct !{!964, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!965 = distinct !{!965, !966, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!966 = distinct !{!966, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!967 = !{!968, !965}
!968 = distinct !{!968, !969, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!969 = distinct !{!969, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!970 = !{i64 4195536}
!971 = !{!"puts"}
!972 = !{!973}
!973 = distinct !{!973, !974, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!974 = distinct !{!974, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!975 = !{!976, !978}
!976 = distinct !{!976, !977, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!977 = distinct !{!977, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!978 = distinct !{!978, !979, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!979 = distinct !{!979, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!980 = !{!981, !978}
!981 = distinct !{!981, !982, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!982 = distinct !{!982, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!983 = !{i64 4195552}
!984 = !{!"__stack_chk_fail"}
!985 = !{!986}
!986 = distinct !{!986, !987, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!987 = distinct !{!987, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!988 = !{!989, !991}
!989 = distinct !{!989, !990, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!990 = distinct !{!990, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!991 = distinct !{!991, !992, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!992 = distinct !{!992, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!993 = !{!994, !991}
!994 = distinct !{!994, !995, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!995 = distinct !{!995, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!996 = !{i64 4195600}
!997 = !{!998}
!998 = distinct !{!998, !999, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!999 = distinct !{!999, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!1000 = !{!1001, !1003}
!1001 = distinct !{!1001, !1002, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!1002 = distinct !{!1002, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!1003 = distinct !{!1003, !1004, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!1004 = distinct !{!1004, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!1005 = !{!1006, !1003}
!1006 = distinct !{!1006, !1007, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!1007 = distinct !{!1007, !"_ZL13x86_write_regP8x86_regs7x86_regm"}