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
  %7 = load i64, i64* %6, align 8, !tbaa !5, !alias.scope !9
  %8 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %9 = load i64, i64* %8, align 8, !tbaa !5, !alias.scope !12
  %10 = add i64 %9, -8
  %11 = inttoptr i64 %10 to i64*
  store i64 %7, i64* %11, align 4, !fcd.prgmem !3
  %12 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 17, i32 0
  %13 = load i64, i64* %12, align 8, !tbaa !5, !alias.scope !17, !noalias !24
  %14 = add i64 %9, -16
  %15 = inttoptr i64 %14 to i64*
  store i64 %13, i64* %15, align 4, !fcd.prgmem !3
  %16 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 16, i32 0
  %17 = load i64, i64* %16, align 8, !tbaa !5, !alias.scope !26, !noalias !33
  %18 = add i64 %9, -24
  %19 = inttoptr i64 %18 to i64*
  store i64 %17, i64* %19, align 4, !fcd.prgmem !3
  %20 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 6, i32 0
  %21 = bitcast i64* %20 to i32*
  %22 = load i32, i32* %21, align 4, !tbaa !35, !alias.scope !37, !noalias !46
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %12, align 8, !tbaa !5, !alias.scope !49, !noalias !56
  %24 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 15, i32 0
  %25 = load i64, i64* %24, align 8, !tbaa !5, !alias.scope !58, !noalias !65
  %26 = add i64 %9, -32
  %27 = inttoptr i64 %26 to i64*
  store i64 %25, i64* %27, align 4, !fcd.prgmem !3
  %28 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 14, i32 0
  %29 = load i64, i64* %28, align 8, !tbaa !5, !alias.scope !67, !noalias !74
  %30 = add i64 %9, -40
  %31 = inttoptr i64 %30 to i64*
  store i64 %29, i64* %31, align 4, !fcd.prgmem !3
  store i64 6295056, i64* %28, align 8, !tbaa !5, !alias.scope !76, !noalias !83
  %32 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 7, i32 0
  %33 = load i64, i64* %32, align 8, !tbaa !5, !alias.scope !85, !noalias !92
  %34 = add i64 %9, -48
  %35 = inttoptr i64 %34 to i64*
  store i64 %33, i64* %35, align 4, !fcd.prgmem !3
  %36 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 2, i32 0
  %37 = load i64, i64* %36, align 8, !tbaa !5, !alias.scope !94, !noalias !101
  %38 = add i64 %9, -56
  %39 = inttoptr i64 %38 to i64*
  store i64 %37, i64* %39, align 4, !fcd.prgmem !3
  %40 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 5, i32 0
  %41 = load i64, i64* %40, align 8, !tbaa !5, !alias.scope !103, !noalias !112
  store i64 %41, i64* %16, align 8, !tbaa !5, !alias.scope !115, !noalias !122
  %42 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 4, i32 0
  %43 = load i64, i64* %42, align 8, !tbaa !5, !alias.scope !124, !noalias !133
  store i64 %43, i64* %24, align 8, !tbaa !5, !alias.scope !136, !noalias !143
  %44 = add i64 %9, -64
  store i64 %44, i64* %8, align 8, !tbaa !5, !alias.scope !145, !noalias !152
  store i64 1, i64* %32, align 8, !tbaa !5, !alias.scope !154, !noalias !161
  store i64 4196113, i64* %6, align 4
  %45 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp5 = load i64, i64* %45
  %46 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  %rip6 = load i64, i64* %46
  %47 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %rsp7 = load i64, i64* %47
  call void @_init(i64 %rip6, i64 %rsp7)
  %48 = load i64, i64* %32, align 8, !tbaa !5, !alias.scope !163, !noalias !178
  %49 = icmp eq i64 %48, 0
  store i64 4196118, i64* %6, align 4
  br i1 %49, label %"400736", label %"400716"

"400736":                                         ; preds = %"400720", %entry
  %50 = load i64, i64* %8, align 8, !tbaa !5, !alias.scope !181, !noalias !188
  %51 = add i64 %50, 8
  %52 = inttoptr i64 %51 to i64*
  %53 = load i64, i64* %52, align 4, !fcd.prgmem !3
  %54 = add i64 %50, 16
  store i64 %53, i64* %36, align 8, !tbaa !5, !alias.scope !190, !noalias !197
  %55 = inttoptr i64 %54 to i64*
  %56 = load i64, i64* %55, align 4, !fcd.prgmem !3
  %57 = add i64 %50, 24
  store i64 %56, i64* %32, align 8, !tbaa !5, !alias.scope !199, !noalias !206
  %58 = inttoptr i64 %57 to i64*
  %59 = load i64, i64* %58, align 4, !fcd.prgmem !3
  %60 = add i64 %50, 32
  store i64 %59, i64* %28, align 8, !tbaa !5, !alias.scope !208, !noalias !215
  %61 = inttoptr i64 %60 to i64*
  %62 = load i64, i64* %61, align 4, !fcd.prgmem !3
  %63 = add i64 %50, 40
  store i64 %62, i64* %24, align 8, !tbaa !5, !alias.scope !217, !noalias !224
  %64 = inttoptr i64 %63 to i64*
  %65 = load i64, i64* %64, align 4, !fcd.prgmem !3
  %66 = add i64 %50, 48
  store i64 %65, i64* %16, align 8, !tbaa !5, !alias.scope !226, !noalias !233
  %67 = inttoptr i64 %66 to i64*
  %68 = load i64, i64* %67, align 4, !fcd.prgmem !3
  %69 = add i64 %50, 56
  store i64 %68, i64* %12, align 8, !tbaa !5, !alias.scope !235, !noalias !242
  %70 = inttoptr i64 %69 to i64*
  %71 = load i64, i64* %70, align 4, !fcd.prgmem !3
  %72 = add i64 %50, 64
  store i64 %72, i64* %8, align 8, !tbaa !5, !alias.scope !244
  store i64 %71, i64* %6, align 8, !tbaa !5, !alias.scope !249
  ret void

"400716":                                         ; preds = %entry
  store i64 0, i64* %36, align 8, !tbaa !5, !alias.scope !252, !noalias !259
  store i64 4196128, i64* %6, align 4
  br label %"400720"

"400720":                                         ; preds = %"400720", %"400716"
  %73 = phi i64 [ %90, %"400720" ], [ 0, %"400716" ]
  %74 = load i64, i64* %24, align 8, !tbaa !5, !alias.scope !261, !noalias !270
  store i64 %74, i64* %42, align 8, !tbaa !5, !alias.scope !273, !noalias !280
  %75 = load i64, i64* %16, align 8, !tbaa !5, !alias.scope !282, !noalias !291
  store i64 %75, i64* %40, align 8, !tbaa !5, !alias.scope !294, !noalias !301
  %76 = bitcast i64* %12 to i32*
  %77 = load i32, i32* %76, align 4, !tbaa !35, !alias.scope !303, !noalias !312
  %78 = zext i32 %77 to i64
  store i64 %78, i64* %20, align 8, !tbaa !5, !alias.scope !315, !noalias !322
  store i64 4196141, i64* %6, align 4
  %79 = shl i64 %73, 3
  %80 = load i64, i64* %28, align 8, !tbaa !5, !alias.scope !324, !noalias !333
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
  %89 = load i64, i64* %36, align 8, !tbaa !5, !alias.scope !337, !noalias !344
  %90 = add i64 %89, 1
  store i64 %90, i64* %36, align 8, !tbaa !5, !alias.scope !346, !noalias !353
  %91 = load i64, i64* %32, align 8, !tbaa !5, !alias.scope !355, !noalias !362
  %92 = icmp eq i64 %90, %91
  store i64 4196150, i64* %6, align 4
  br i1 %92, label %"400736", label %"400720"
                                                  ; No predecessors!
  call void @fcd.placeholder(i64 %rip, i64 %rsp, i64 %rdi, i64 %rsi, i64 %rdx)
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

define void @0(%struct.x86_regs*) {
  call void @fcd.placeholder.50(%struct.x86_regs* %0)
  ret void
}

declare void @x86_call_intrin(%struct.x86_config*, %struct.x86_regs*, i64) #0

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #1

; Function Attrs: noreturn
declare void @x86_jump_intrin(%struct.x86_config*, %struct.x86_regs*, i64) #2

define void @_init(i64 %rip, i64 %rsp) !fcd.vaddr !364 !fcd.output !3 !fcd.recoverable !3 !fcd.funver !4 !fcd.stackptr !4 {
entry:
  %registers = alloca %struct.x86_regs, !fcd.registers !3
  %0 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp = load i64, i64* %0
  %1 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  store i64 %rip, i64* %1
  %2 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  store i64 %rsp, i64* %2
  %3 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !5, !alias.scope !365
  %5 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !5, !alias.scope !368
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8, align 4, !fcd.prgmem !3
  %9 = add i64 %6, -16
  store i64 %9, i64* %5, align 8, !tbaa !5, !alias.scope !373, !noalias !380
  %10 = load i64, i64* inttoptr (i64 6295544 to i64*), align 8
  %11 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 1, i32 0
  store i64 %10, i64* %11, align 8, !tbaa !5, !alias.scope !382, !noalias !391
  %12 = icmp eq i64 %10, 0
  store i64 4195504, i64* %3, align 4
  br i1 %12, label %"4004b5", label %"4004b0"

"4004b5":                                         ; preds = %entry, %"4004b0"
  %13 = phi i64 [ %9, %entry ], [ %.pre, %"4004b0" ]
  %14 = add i64 %13, 8
  %15 = inttoptr i64 %14 to i64*
  %16 = load i64, i64* %15, align 4, !fcd.prgmem !3
  %17 = add i64 %13, 16
  store i64 %17, i64* %5, align 8, !tbaa !5, !alias.scope !394
  store i64 %16, i64* %3, align 8, !tbaa !5, !alias.scope !399
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
  %.pre = load i64, i64* %5, align 8, !tbaa !5, !alias.scope !402, !noalias !409
  br label %"4004b5"
                                                  ; No predecessors!
  call void @fcd.placeholder.51(i64 %rip, i64 %rsp)
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

define void @1(%struct.x86_regs*) {
  call void @fcd.placeholder.52(%struct.x86_regs* %0)
  ret void
}

define void @__libc_csu_fini(i64 %rip, i64 %rsp) !fcd.vaddr !411 !fcd.output !3 !fcd.recoverable !3 !fcd.stackptr !4 {
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
  %6 = load i64, i64* %5, align 8, !tbaa !5, !alias.scope !412
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8, align 4, !fcd.prgmem !3
  ret void
                                                  ; No predecessors!
  call void @fcd.placeholder.53(i64 %rip, i64 %rsp)
  ret void

; uselistorder directives
  uselistorder %struct.x86_regs* %registers, { 4, 3, 0, 1, 2 }
  uselistorder i64 %rsp, { 1, 0 }
  uselistorder i64 %rip, { 1, 0 }
}

define void @2(%struct.x86_regs*) {
  call void @fcd.placeholder.54(%struct.x86_regs* %0)
  ret void
}

define void @register_tm_clones(i64 %rip, i64 %rsp) !fcd.vaddr !417 !fcd.output !3 !fcd.recoverable !3 !fcd.stackptr !4 {
entry:
  %registers = alloca %struct.x86_regs, !fcd.registers !3
  %0 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp = load i64, i64* %0
  %1 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  store i64 %rip, i64* %1
  %2 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  store i64 %rsp, i64* %2
  %3 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !5, !alias.scope !418
  %5 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !5, !alias.scope !421
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8, align 4, !fcd.prgmem !3
  %9 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 5, i32 0
  %10 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 7, i32 0
  %11 = load i64, i64* %10, align 8, !tbaa !5, !alias.scope !426, !noalias !433
  %12 = add i64 %6, -16
  %13 = inttoptr i64 %12 to i64*
  store i64 %11, i64* %13, align 4, !fcd.prgmem !3
  %14 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 1, i32 0
  store i64 0, i64* %14, align 8, !tbaa !5, !alias.scope !435, !noalias !442
  store i64 0, i64* %9, align 8, !tbaa !5, !alias.scope !444, !noalias !451
  %15 = load i64, i64* %8, align 4, !fcd.prgmem !3
  store i64 %15, i64* %3, align 8, !tbaa !5, !alias.scope !453
  ret void
                                                  ; No predecessors!
  call void @fcd.placeholder.55(i64 %rip, i64 %rsp)
  ret void

; uselistorder directives
  uselistorder %struct.x86_regs* %registers, { 7, 6, 5, 4, 3, 0, 1, 2 }
  uselistorder i64 %rsp, { 1, 0 }
  uselistorder i64 %rip, { 1, 0 }
}

define void @3(%struct.x86_regs*) {
  call void @fcd.placeholder.56(%struct.x86_regs* %0)
  ret void
}

define void @_start(i64 %rip, i64 %rsp, i64 %rdx) !fcd.vaddr !456 !fcd.output !3 !fcd.recoverable !3 !fcd.funver !4 !fcd.stackptr !4 {
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
  %5 = load i64, i64* %4, align 8, !tbaa !5, !alias.scope !457
  %6 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !5, !alias.scope !460
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 4, !fcd.prgmem !3
  %10 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 7, i32 0
  store i64 0, i64* %10, align 8, !tbaa !5, !alias.scope !465, !noalias !472
  %11 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 4, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !5, !alias.scope !474, !noalias !483
  %13 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 11, i32 0
  store i64 %12, i64* %13, align 8, !tbaa !5, !alias.scope !486, !noalias !493
  %14 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 5, i32 0
  store i64 %5, i64* %14, align 8, !tbaa !5, !alias.scope !495, !noalias !502
  store i64 %7, i64* %11, align 8, !tbaa !5, !alias.scope !504, !noalias !513
  %15 = and i64 %7, -16
  %16 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 1, i32 0
  %17 = load i64, i64* %16, align 8, !tbaa !5, !alias.scope !516, !noalias !523
  %18 = add i64 %15, -8
  %19 = inttoptr i64 %18 to i64*
  store i64 %17, i64* %19, align 8, !fcd.prgmem !3
  %20 = add i64 %15, -16
  %21 = inttoptr i64 %20 to i64*
  store i64 %18, i64* %21, align 16, !fcd.prgmem !3
  store i64 %20, i64* %6, align 8, !tbaa !5, !alias.scope !525
  %22 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 10, i32 0
  store i64 4196176, i64* %22, align 8, !tbaa !5, !alias.scope !530, !noalias !539
  %23 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 3, i32 0
  store i64 4196064, i64* %23, align 8, !tbaa !5, !alias.scope !542, !noalias !551
  %24 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 6, i32 0
  store i64 4195616, i64* %24, align 8, !tbaa !5, !alias.scope !554, !noalias !563
  store i64 4195849, i64* %4, align 4
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
  store i64 4195850, i64* %4, align 4
  tail call void @llvm.trap()
  unreachable
                                                  ; No predecessors!
  call void @fcd.placeholder.57(i64 %rip, i64 %rsp, i64 %rdx)
  ret void

; uselistorder directives
  uselistorder i64* %4, { 1, 2, 0 }
  uselistorder %struct.x86_regs* %registers, { 0, 1, 2, 3, 4, 5, 6, 7, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 8, 9, 10, 11 }
  uselistorder i64 %rdx, { 1, 0 }
  uselistorder i64 %rsp, { 1, 0 }
  uselistorder i64 %rip, { 1, 0 }
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

define void @__do_global_dtors_aux(i64 %rip, i64 %rsp) !fcd.vaddr !566 !fcd.output !3 !fcd.recoverable !3 !fcd.funver !4 !fcd.stackptr !4 {
entry:
  %registers = alloca %struct.x86_regs, !fcd.registers !3
  %0 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp = load i64, i64* %0
  %1 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  store i64 %rip, i64* %1
  %2 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  store i64 %rsp, i64* %2
  %3 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !5, !alias.scope !567
  %5 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !5, !alias.scope !570
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8, align 4, !fcd.prgmem !3
  store i64 %7, i64* %5, align 8, !tbaa !5, !alias.scope !575
  %9 = load i8, i8* inttoptr (i64 6295640 to i8*), align 8
  %10 = icmp eq i8 %9, 0
  store i64 4195993, i64* %3, align 4
  br i1 %10, label %"400699", label %"4006aa"

"4006aa":                                         ; preds = %entry, %"400699"
  %11 = phi i64 [ %4, %entry ], [ %.pre, %"400699" ]
  %12 = phi i64 [ %7, %entry ], [ %24, %"400699" ]
  %13 = add i64 %12, 8
  store i64 %13, i64* %5, align 8, !tbaa !5, !alias.scope !578
  store i64 %11, i64* %3, align 8, !tbaa !5, !alias.scope !583
  ret void

"400699":                                         ; preds = %entry
  %14 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 7, i32 0
  %15 = load i64, i64* %14, align 8, !tbaa !5, !alias.scope !586, !noalias !593
  %16 = add i64 %6, -16
  %17 = inttoptr i64 %16 to i64*
  store i64 %15, i64* %17, align 4, !fcd.prgmem !3
  store i64 %16, i64* %5, align 8, !tbaa !5, !alias.scope !595
  store i64 %16, i64* %14, align 8, !tbaa !5, !alias.scope !600, !noalias !609
  store i64 4196002, i64* %3, align 4
  %18 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp1 = load i64, i64* %18
  %19 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  %rip2 = load i64, i64* %19
  %20 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %rsp3 = load i64, i64* %20
  call void @deregister_tm_clones(i64 %rip2, i64 %rsp3)
  %21 = load i64, i64* %5, align 8, !tbaa !5, !alias.scope !612
  %22 = inttoptr i64 %21 to i64*
  %23 = load i64, i64* %22, align 4, !fcd.prgmem !3
  %24 = add i64 %21, 8
  store i64 %24, i64* %5, align 8, !tbaa !5, !alias.scope !617
  store i64 %23, i64* %14, align 8, !tbaa !5, !alias.scope !620, !noalias !627
  store i64 4196010, i64* %3, align 4
  store i8 1, i8* inttoptr (i64 6295640 to i8*), align 8, !fcd.prgmem !3
  %.phi.trans.insert = inttoptr i64 %24 to i64*
  %.pre = load i64, i64* %.phi.trans.insert, align 4
  br label %"4006aa"
                                                  ; No predecessors!
  call void @fcd.placeholder.61(i64 %rip, i64 %rsp)
  ret void

; uselistorder directives
  uselistorder i64 %24, { 0, 2, 1 }
  uselistorder i64 %21, { 1, 0 }
  uselistorder i64* %5, { 1, 2, 3, 0, 5, 4 }
  uselistorder i64* %3, { 2, 3, 0, 4, 1 }
  uselistorder %struct.x86_regs* %registers, { 0, 1, 2, 8, 7, 6, 3, 4, 5 }
  uselistorder i64 %rsp, { 1, 0 }
  uselistorder i64 %rip, { 1, 0 }
  uselistorder label %"4006aa", { 1, 0 }
}

define void @6(%struct.x86_regs*) {
  call void @fcd.placeholder.62(%struct.x86_regs* %0)
  ret void
}

define void @deregister_tm_clones(i64 %rip, i64 %rsp) !fcd.vaddr !629 !fcd.output !3 !fcd.recoverable !3 !fcd.stackptr !4 {
entry:
  %registers = alloca %struct.x86_regs, !fcd.registers !3
  %0 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp = load i64, i64* %0
  %1 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  store i64 %rip, i64* %1
  %2 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  store i64 %rsp, i64* %2
  %3 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !5, !alias.scope !630
  %5 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !5, !alias.scope !633
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8, align 4, !fcd.prgmem !3
  %9 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 1, i32 0
  %10 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 7, i32 0
  %11 = load i64, i64* %10, align 8, !tbaa !5, !alias.scope !638, !noalias !645
  %12 = add i64 %6, -16
  %13 = inttoptr i64 %12 to i64*
  store i64 %11, i64* %13, align 4, !fcd.prgmem !3
  store i64 7, i64* %9, align 8, !tbaa !5, !alias.scope !647, !noalias !654
  %14 = load i64, i64* %8, align 4, !fcd.prgmem !3
  store i64 %14, i64* %3, align 8, !tbaa !5, !alias.scope !656
  ret void
                                                  ; No predecessors!
  call void @fcd.placeholder.63(i64 %rip, i64 %rsp)
  ret void

; uselistorder directives
  uselistorder %struct.x86_regs* %registers, { 6, 5, 4, 3, 0, 1, 2 }
  uselistorder i64 %rsp, { 1, 0 }
  uselistorder i64 %rip, { 1, 0 }
}

define void @7(%struct.x86_regs*) {
  call void @fcd.placeholder.64(%struct.x86_regs* %0)
  ret void
}

define %main.returns @main(i64 %rip, i64 %rsp) !fcd.vaddr !659 !fcd.output !3 !fcd.recoverable !3 !fcd.funver !660 !fcd.stackptr !4 {
entry:
  %registers = alloca %struct.x86_regs, !fcd.registers !3
  %0 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp1 = load i64, i64* %0
  %1 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  store i64 %rip, i64* %1
  %2 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  store i64 %rsp, i64* %2
  %3 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !5, !alias.scope !661
  %5 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !5, !alias.scope !664
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8, align 4, !fcd.prgmem !3
  %9 = add i64 %6, -128
  store i64 %9, i64* %5, align 8, !tbaa !5, !alias.scope !669, !noalias !676
  %10 = load i64, i64* inttoptr (i64 6295632 to i64*), align 16, !fcd.prgmem !3
  %11 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 4, i32 0
  store i64 %10, i64* %11, align 8, !tbaa !5, !alias.scope !678, !noalias !687
  %12 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 5, i32 0
  store i64 99, i64* %12, align 8, !tbaa !5, !alias.scope !690, !noalias !699
  %13 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 6, i32 0
  store i64 %9, i64* %13, align 8, !tbaa !5, !alias.scope !702, !noalias !711
  store i64 4195644, i64* %3, align 4
  %14 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 21, i32 0
  %15 = load i64, i64* %14, align 8, !tbaa !5, !alias.scope !714, !noalias !725
  %16 = add i64 %15, 40
  %17 = inttoptr i64 %16 to i64*
  %18 = load i64, i64* %17, align 4
  %19 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 1, i32 0
  %20 = add i64 %6, -24
  %21 = inttoptr i64 %20 to i64*
  store i64 %18, i64* %21, align 4, !fcd.prgmem !3
  store i64 0, i64* %19, align 8, !tbaa !5, !alias.scope !730, !noalias !737
  store i64 4195656, i64* %3, align 4
  %22 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp4 = load i64, i64* %22
  %23 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 6, i32 0
  %rdi5 = load i64, i64* %23
  %24 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 5, i32 0
  %rsi6 = load i64, i64* %24
  %25 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 4, i32 0
  %rdx7 = load i64, i64* %25
  %26 = call i64 @fgets(i64 %rdi5, i64 %rsi6, i64 %rdx7)
  %27 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 1, i32 0
  store i64 %26, i64* %27
  store i64 4195664, i64* %3, align 4
  %28 = call %movdqa.return @fcd.asm()
  %29 = load i64, i64* %5, align 8, !tbaa !5, !alias.scope !739, !noalias !784
  store i64 %29, i64* %13, align 8, !tbaa !5, !alias.scope !785, !noalias !792
  %30 = add i64 %29, 96
  %31 = inttoptr i64 %30 to i8*
  %32 = load i8, i8* %31, align 1, !fcd.prgmem !3
  %33 = xor i8 %32, 66
  store i8 %33, i8* %31, align 1, !fcd.prgmem !3
  %34 = add i64 %29, 97
  %35 = inttoptr i64 %34 to i8*
  %36 = load i8, i8* %35, align 1, !fcd.prgmem !3
  %37 = xor i8 %36, 66
  store i8 %37, i8* %35, align 1, !fcd.prgmem !3
  store i64 4195682, i64* %3, align 4
  %38 = call %movdqa.return.0 @fcd.asm.11()
  %39 = load i64, i64* %5, align 8, !tbaa !5, !alias.scope !795, !noalias !784
  %40 = add i64 %39, 98
  %41 = inttoptr i64 %40 to i8*
  %42 = load i8, i8* %41, align 1, !fcd.prgmem !3
  %43 = xor i8 %42, 66
  store i8 %43, i8* %41, align 1, !fcd.prgmem !3
  %44 = add i64 %39, 99
  %45 = inttoptr i64 %44 to i8*
  store i8 0, i8* %45, align 1, !fcd.prgmem !3
  store i64 4195696, i64* %3, align 4
  %46 = call %pxor.return @fcd.asm.13()
  store i64 4195700, i64* %3, align 4
  %47 = call %movaps.return @fcd.asm.15()
  store i64 4195706, i64* %3, align 4
  %48 = call %movdqa.return.1 @fcd.asm.17()
  store i64 4195710, i64* %3, align 4
  %49 = call %pxor.return.2 @fcd.asm.19()
  store i64 4195715, i64* %3, align 4
  %50 = call %movaps.return.3 @fcd.asm.21()
  store i64 4195721, i64* %3, align 4
  %51 = call %movdqa.return.4 @fcd.asm.23()
  store i64 4195725, i64* %3, align 4
  %52 = call %pxor.return.5 @fcd.asm.25()
  store i64 4195730, i64* %3, align 4
  %53 = call %movaps.return.6 @fcd.asm.27()
  store i64 4195736, i64* %3, align 4
  %54 = call %movdqa.return.7 @fcd.asm.29()
  store i64 4195740, i64* %3, align 4
  %55 = call %pxor.return.8 @fcd.asm.31()
  store i64 4195745, i64* %3, align 4
  %56 = call %movaps.return.9 @fcd.asm.33()
  store i64 4195751, i64* %3, align 4
  %57 = call %movdqa.return.10 @fcd.asm.35()
  store i64 4195755, i64* %3, align 4
  %58 = call %pxor.return.11 @fcd.asm.37()
  store i64 4195761, i64* %3, align 4
  %59 = call %pxor.return.12 @fcd.asm.39()
  store i64 4195766, i64* %3, align 4
  %60 = call %movaps.return.13 @fcd.asm.41()
  store i64 4195771, i64* %3, align 4
  %61 = call %movaps.return.14 @fcd.asm.43()
  store i64 4195776, i64* %3, align 4
  %62 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp8 = load i64, i64* %62
  %63 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 6, i32 0
  %rdi9 = load i64, i64* %63
  %64 = call i64 @puts(i64 %rdi9)
  %65 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 1, i32 0
  store i64 %64, i64* %65
  store i64 4195781, i64* %3, align 4
  %66 = load i64, i64* %5, align 8, !tbaa !5, !alias.scope !824, !noalias !835
  %67 = add i64 %66, 104
  %68 = inttoptr i64 %67 to i64*
  %69 = load i64, i64* %68, align 4
  %70 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 3, i32 0
  %71 = load i64, i64* %14, align 8, !tbaa !5, !alias.scope !840, !noalias !851
  %72 = add i64 %71, 40
  %73 = inttoptr i64 %72 to i64*
  %74 = load i64, i64* %73, align 4, !fcd.prgmem !3
  %75 = xor i64 %74, %69
  %76 = icmp eq i64 %74, %69
  store i64 %75, i64* %70, align 8, !tbaa !5, !alias.scope !857, !noalias !864
  store i64 4195792, i64* %3, align 4
  br i1 %76, label %"4005d0", label %"4005d7"

"4005d7":                                         ; preds = %entry
  store i64 4195804, i64* %3, align 4
  %77 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp10 = load i64, i64* %77
  %78 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 3, i32 0
  %rcx11 = load i64, i64* %78
  %79 = call %__stack_chk_fail.returns @__stack_chk_fail(i64 %rcx11)
  %rdx12 = extractvalue %__stack_chk_fail.returns %79, 0
  %80 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 4, i32 0
  store i64 %rdx12, i64* %80
  %rax = extractvalue %__stack_chk_fail.returns %79, 1
  %81 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 1, i32 0
  store i64 %rax, i64* %81
  %82 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 7, i32 0
  store i64 0, i64* %82, align 8, !tbaa !5, !alias.scope !866, !noalias !873
  %83 = load i64, i64* %11, align 8, !tbaa !5, !alias.scope !875, !noalias !884
  %84 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 11, i32 0
  store i64 %83, i64* %84, align 8, !tbaa !5, !alias.scope !887, !noalias !894
  %85 = load i64, i64* %5, align 8, !tbaa !5, !alias.scope !896
  %86 = inttoptr i64 %85 to i64*
  %87 = load i64, i64* %86, align 4, !fcd.prgmem !3
  %88 = add i64 %85, 8
  store i64 %87, i64* %12, align 8, !tbaa !5, !alias.scope !901, !noalias !908
  store i64 %88, i64* %11, align 8, !tbaa !5, !alias.scope !910, !noalias !919
  %89 = and i64 %88, -16
  %90 = load i64, i64* %19, align 8, !tbaa !5, !alias.scope !922, !noalias !929
  %91 = add i64 %89, -8
  %92 = inttoptr i64 %91 to i64*
  store i64 %90, i64* %92, align 8, !fcd.prgmem !3
  %93 = add i64 %89, -16
  %94 = inttoptr i64 %93 to i64*
  store i64 %91, i64* %94, align 16, !fcd.prgmem !3
  store i64 %93, i64* %5, align 8, !tbaa !5, !alias.scope !931
  %95 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 10, i32 0
  store i64 4196176, i64* %95, align 8, !tbaa !5, !alias.scope !936, !noalias !945
  store i64 4196064, i64* %70, align 8, !tbaa !5, !alias.scope !948, !noalias !957
  store i64 4195616, i64* %13, align 8, !tbaa !5, !alias.scope !960, !noalias !969
  store i64 4195849, i64* %3, align 4
  %96 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp = load i64, i64* %96
  %97 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 6, i32 0
  %rdi = load i64, i64* %97
  %98 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 5, i32 0
  %rsi = load i64, i64* %98
  %99 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 4, i32 0
  %rdx = load i64, i64* %99
  %100 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 3, i32 0
  %rcx = load i64, i64* %100
  %101 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 10, i32 0
  %r8 = load i64, i64* %101
  %102 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 11, i32 0
  %r9 = load i64, i64* %102
  %103 = add i64 %sp, 0
  %104 = inttoptr i64 %103 to i64 addrspace(1)*
  %105 = load i64, i64 addrspace(1)* %104
  %106 = call i64 @__libc_start_main(i64 %rdi, i64 %rsi, i64 %rdx, i64 %rcx, i64 %r8, i64 %r9, i64 %105)
  %107 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 1, i32 0
  store i64 %106, i64* %107
  store i64 4195850, i64* %3, align 4
  tail call void @llvm.trap()
  unreachable

"4005d0":                                         ; preds = %entry
  store i64 0, i64* %19, align 8, !tbaa !5, !alias.scope !972, !noalias !979
  %108 = add i64 %66, 120
  %109 = inttoptr i64 %108 to i64*
  %110 = load i64, i64* %109, align 4, !fcd.prgmem !3
  %111 = add i64 %66, 128
  store i64 %111, i64* %5, align 8, !tbaa !5, !alias.scope !981
  store i64 %110, i64* %3, align 8, !tbaa !5, !alias.scope !986
  %112 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 1, i32 0
  %113 = load i64, i64* %112
  %set.rax = insertvalue %main.returns zeroinitializer, i64 %113, 0
  %114 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 4, i32 0
  %115 = load i64, i64* %114
  %set.rdx = insertvalue %main.returns %set.rax, i64 %115, 1
  ret %main.returns %set.rdx
                                                  ; No predecessors!
  %117 = call %main.returns @fcd.placeholder.65(i64 %rip, i64 %rsp)
  %118 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 1, i32 0
  %119 = load i64, i64* %118
  %set.rax2 = insertvalue %main.returns zeroinitializer, i64 %119, 0
  %120 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 4, i32 0
  %121 = load i64, i64* %120
  %set.rdx3 = insertvalue %main.returns %set.rax2, i64 %121, 1
  ret %main.returns %set.rdx3

; uselistorder directives
  uselistorder i64 %85, { 1, 0 }
  uselistorder i64* %19, { 1, 0, 2 }
  uselistorder i64* %5, { 2, 0, 1, 3, 4, 5, 6, 7 }
  uselistorder i64* %3, { 0, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 1 }
  uselistorder %struct.x86_regs* %registers, { 12, 13, 14, 15, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 0, 1, 2, 3, 26, 4, 5, 6, 7, 8, 9, 10, 11, 25, 24, 23, 22, 21, 20, 19, 16, 17, 18 }
  uselistorder i64 (i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main, { 1, 0 }
  uselistorder i32 10, { 1, 2, 0, 3 }
  uselistorder i64 8, { 2, 3, 4, 0, 1, 5 }
  uselistorder i32 11, { 1, 2, 0, 3 }
  uselistorder i32 3, { 2, 0, 3, 1, 4 }
  uselistorder i64 40, { 1, 2, 0 }
  uselistorder i32 4, { 2, 3, 5, 0, 1, 9, 4, 10, 6, 8, 11, 7 }
  uselistorder i64 %rsp, { 1, 0 }
  uselistorder i64 %rip, { 1, 0 }
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

define %movdqa.return @fcd.asm() !fcd.asm !989 {
  %1 = call %movdqa.return @fcd.placeholder.10()
  ret %movdqa.return %1
}

declare extern_weak %movdqa.return @fcd.placeholder.10()

define %movdqa.return.0 @fcd.asm.11() !fcd.asm !990 {
  %1 = call %movdqa.return.0 @fcd.placeholder.12()
  ret %movdqa.return.0 %1
}

declare extern_weak %movdqa.return.0 @fcd.placeholder.12()

define %pxor.return @fcd.asm.13() !fcd.asm !991 {
  %1 = call %pxor.return @fcd.placeholder.14()
  ret %pxor.return %1
}

declare extern_weak %pxor.return @fcd.placeholder.14()

define %movaps.return @fcd.asm.15() !fcd.asm !992 {
  %1 = call %movaps.return @fcd.placeholder.16()
  ret %movaps.return %1
}

declare extern_weak %movaps.return @fcd.placeholder.16()

define %movdqa.return.1 @fcd.asm.17() !fcd.asm !993 {
  %1 = call %movdqa.return.1 @fcd.placeholder.18()
  ret %movdqa.return.1 %1
}

declare extern_weak %movdqa.return.1 @fcd.placeholder.18()

define %pxor.return.2 @fcd.asm.19() !fcd.asm !991 {
  %1 = call %pxor.return.2 @fcd.placeholder.20()
  ret %pxor.return.2 %1
}

declare extern_weak %pxor.return.2 @fcd.placeholder.20()

define %movaps.return.3 @fcd.asm.21() !fcd.asm !994 {
  %1 = call %movaps.return.3 @fcd.placeholder.22()
  ret %movaps.return.3 %1
}

declare extern_weak %movaps.return.3 @fcd.placeholder.22()

define %movdqa.return.4 @fcd.asm.23() !fcd.asm !995 {
  %1 = call %movdqa.return.4 @fcd.placeholder.24()
  ret %movdqa.return.4 %1
}

declare extern_weak %movdqa.return.4 @fcd.placeholder.24()

define %pxor.return.5 @fcd.asm.25() !fcd.asm !991 {
  %1 = call %pxor.return.5 @fcd.placeholder.26()
  ret %pxor.return.5 %1
}

declare extern_weak %pxor.return.5 @fcd.placeholder.26()

define %movaps.return.6 @fcd.asm.27() !fcd.asm !996 {
  %1 = call %movaps.return.6 @fcd.placeholder.28()
  ret %movaps.return.6 %1
}

declare extern_weak %movaps.return.6 @fcd.placeholder.28()

define %movdqa.return.7 @fcd.asm.29() !fcd.asm !997 {
  %1 = call %movdqa.return.7 @fcd.placeholder.30()
  ret %movdqa.return.7 %1
}

declare extern_weak %movdqa.return.7 @fcd.placeholder.30()

define %pxor.return.8 @fcd.asm.31() !fcd.asm !991 {
  %1 = call %pxor.return.8 @fcd.placeholder.32()
  ret %pxor.return.8 %1
}

declare extern_weak %pxor.return.8 @fcd.placeholder.32()

define %movaps.return.9 @fcd.asm.33() !fcd.asm !998 {
  %1 = call %movaps.return.9 @fcd.placeholder.34()
  ret %movaps.return.9 %1
}

declare extern_weak %movaps.return.9 @fcd.placeholder.34()

define %movdqa.return.10 @fcd.asm.35() !fcd.asm !999 {
  %1 = call %movdqa.return.10 @fcd.placeholder.36()
  ret %movdqa.return.10 %1
}

declare extern_weak %movdqa.return.10 @fcd.placeholder.36()

define %pxor.return.11 @fcd.asm.37() !fcd.asm !991 {
  %1 = call %pxor.return.11 @fcd.placeholder.38()
  ret %pxor.return.11 %1
}

declare extern_weak %pxor.return.11 @fcd.placeholder.38()

define %pxor.return.12 @fcd.asm.39() !fcd.asm !1000 {
  %1 = call %pxor.return.12 @fcd.placeholder.40()
  ret %pxor.return.12 %1
}

declare extern_weak %pxor.return.12 @fcd.placeholder.40()

define %movaps.return.13 @fcd.asm.41() !fcd.asm !1001 {
  %1 = call %movaps.return.13 @fcd.placeholder.42()
  ret %movaps.return.13 %1
}

declare extern_weak %movaps.return.13 @fcd.placeholder.42()

define %movaps.return.14 @fcd.asm.43() !fcd.asm !1002 {
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

define void @_fini(i64 %rip, i64 %rsp) !fcd.vaddr !1003 !fcd.output !3 !fcd.recoverable !3 !fcd.stackptr !4 {
entry:
  %registers = alloca %struct.x86_regs, !fcd.registers !3
  %0 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp = load i64, i64* %0
  %1 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  store i64 %rip, i64* %1
  %2 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  store i64 %rsp, i64* %2
  %3 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !5, !alias.scope !1004
  %5 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !5, !alias.scope !1007
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8, align 4, !fcd.prgmem !3
  ret void
                                                  ; No predecessors!
  call void @fcd.placeholder.73(i64 %rip, i64 %rsp)
  ret void

; uselistorder directives
  uselistorder %struct.x86_regs* %registers, { 4, 3, 0, 1, 2 }
  uselistorder i64 %rsp, { 1, 0 }
  uselistorder i64 %rip, { 1, 0 }
}

define void @12(%struct.x86_regs*) {
  call void @fcd.placeholder.74(%struct.x86_regs* %0)
  ret void
}

define void @frame_dummy(i64 %rip, i64 %rsp) !fcd.vaddr !1012 !fcd.output !3 !fcd.recoverable !3 !fcd.stackptr !4 {
entry:
  %registers = alloca %struct.x86_regs, !fcd.registers !3
  %0 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp = load i64, i64* %0
  %1 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  store i64 %rip, i64* %1
  %2 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  store i64 %rsp, i64* %2
  %3 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !5, !alias.scope !1013
  %5 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !5, !alias.scope !1016
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8, align 4, !fcd.prgmem !3
  store i64 %7, i64* %5, align 8, !tbaa !5, !alias.scope !1021
  %9 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 6, i32 0
  store i64 6295072, i64* %9, align 8, !tbaa !5, !alias.scope !1024, !noalias !1033
  %10 = load i64, i64* inttoptr (i64 6295072 to i64*), align 32, !fcd.prgmem !3
  %11 = icmp eq i64 %10, 0
  store i64 4196027, i64* %3, align 4
  %.pre29 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 1, i32 0
  br i1 %11, label %"4006bb", label %"4006c0"

"4006c0":                                         ; preds = %entry
  store i64 0, i64* %.pre29, align 8, !tbaa !5, !alias.scope !1036, !noalias !1045
  store i64 4196042, i64* %3, align 4
  br label %"4006bb"

"4006bb":                                         ; preds = %entry, %"4006c0"
  %12 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 5, i32 0
  %13 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 7, i32 0
  %14 = load i64, i64* %13, align 8, !tbaa !5, !alias.scope !1048, !noalias !1055
  %15 = add i64 %6, -16
  %16 = inttoptr i64 %15 to i64*
  store i64 %14, i64* %16, align 4, !fcd.prgmem !3
  store i64 0, i64* %.pre29, align 8, !tbaa !5, !alias.scope !1057, !noalias !1064
  store i64 0, i64* %12, align 8, !tbaa !5, !alias.scope !1066, !noalias !1073
  %17 = load i64, i64* %8, align 4, !fcd.prgmem !3
  store i64 %6, i64* %5, align 8, !tbaa !5, !alias.scope !1075
  store i64 %17, i64* %3, align 8, !tbaa !5, !alias.scope !1080
  ret void
                                                  ; No predecessors!
  call void @fcd.placeholder.75(i64 %rip, i64 %rsp)
  ret void

; uselistorder directives
  uselistorder i64 %6, { 1, 0, 2 }
  uselistorder i64* %5, { 0, 2, 1 }
  uselistorder i64* %3, { 0, 2, 3, 1 }
  uselistorder %struct.x86_regs* %registers, { 7, 6, 8, 5, 4, 3, 0, 1, 2 }
  uselistorder i32 5, { 5, 2, 0, 6, 1, 7, 8, 4, 9, 3 }
  uselistorder i32 6, { 6, 3, 0, 1, 7, 2, 8, 5, 9, 4 }
  uselistorder i64 %rsp, { 1, 0 }
  uselistorder i64 %rip, { 1, 0 }
  uselistorder label %"4006bb", { 1, 0 }
}

define void @13(%struct.x86_regs*) {
  call void @fcd.placeholder.76(%struct.x86_regs* %0)
  ret void
}

define void @func_400510(i64 %rip, i64 %rsp) !fcd.vaddr !1083 !fcd.output !3 !fcd.recoverable !3 !fcd.stackptr !4 {
entry:
  %registers = alloca %struct.x86_regs, !fcd.registers !3
  %0 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %sp = load i64, i64* %0
  %1 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  store i64 %rip, i64* %1
  %2 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  store i64 %rsp, i64* %2
  %3 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 9, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !5, !alias.scope !1084
  %5 = getelementptr inbounds %struct.x86_regs, %struct.x86_regs* %registers, i64 0, i32 8, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !5, !alias.scope !1087
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8, align 4, !fcd.prgmem !3
  store i64 %7, i64* %5, align 8, !tbaa !5, !alias.scope !1092
  store i64 4195606, i64* %3, align 4
  %9 = load i64, i64* inttoptr (i64 6295544 to i64*), align 8, !fcd.prgmem !3
  %10 = inttoptr i64 %9 to i64
  call void @__indirect_jump(i64 %10)
  unreachable
                                                  ; No predecessors!
  call void @fcd.placeholder.77(i64 %rip, i64 %rsp)
  ret void

; uselistorder directives
  uselistorder i64* %5, { 1, 0 }
  uselistorder i64* %3, { 1, 0 }
  uselistorder %struct.x86_regs* %registers, { 4, 3, 0, 1, 2 }
  uselistorder i32 9, { 14, 0, 16, 2, 18, 3, 19, 4, 17, 5, 6, 20, 7, 21, 8, 22, 9, 23, 10, 1, 15, 11, 12, 24, 13 }
  uselistorder i32 0, { 82, 130, 0, 1, 2, 84, 85, 83, 86, 87, 132, 6, 7, 8, 88, 134, 9, 10, 11, 24, 25, 26, 27, 48, 49, 50, 51, 52, 53, 54, 55, 89, 90, 91, 12, 13, 14, 15, 92, 16, 17, 18, 19, 20, 21, 22, 23, 93, 94, 95, 96, 97, 98, 135, 28, 29, 30, 99, 100, 101, 133, 31, 32, 33, 34, 35, 36, 102, 103, 136, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 104, 105, 106, 107, 108, 109, 110, 111, 112, 137, 56, 57, 58, 59, 113, 114, 115, 116, 138, 60, 61, 62, 117, 139, 63, 64, 65, 3, 4, 5, 118, 119, 131, 66, 67, 68, 78, 79, 80, 81, 69, 70, 71, 121, 122, 123, 124, 125, 126, 120, 127, 128, 129, 140, 72, 73, 74, 75, 76, 77 }
  uselistorder i32 8, { 34, 0, 1, 35, 4, 5, 36, 6, 7, 20, 8, 9, 10, 37, 11, 12, 38, 13, 14, 15, 16, 39, 17, 18, 19, 40, 21, 22, 41, 23, 24, 42, 25, 26, 2, 3, 43, 27, 28, 33, 29, 30, 44, 31, 32 }
  uselistorder i64 0, { 84, 142, 0, 1, 2, 86, 87, 88, 89, 145, 85, 146, 90, 91, 147, 6, 7, 8, 92, 149, 9, 10, 11, 24, 25, 26, 27, 97, 49, 50, 51, 52, 53, 54, 55, 56, 57, 93, 94, 96, 95, 12, 13, 14, 15, 98, 16, 17, 18, 19, 20, 21, 22, 23, 99, 100, 101, 102, 103, 104, 105, 150, 28, 29, 30, 106, 107, 108, 148, 31, 32, 33, 34, 35, 36, 109, 110, 151, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 111, 112, 113, 114, 115, 116, 117, 119, 118, 120, 152, 58, 59, 60, 61, 121, 122, 123, 124, 125, 126, 153, 62, 63, 64, 127, 154, 65, 66, 67, 3, 4, 5, 143, 128, 129, 144, 68, 69, 70, 80, 81, 82, 83, 130, 132, 155, 71, 72, 73, 133, 134, 135, 136, 137, 138, 131, 139, 140, 141, 156, 74, 75, 76, 77, 78, 79 }
  uselistorder i32 1, { 0, 18, 1, 2, 6, 7, 12, 3, 4, 5, 19, 8, 20, 9, 10, 11, 21, 13, 22, 14, 15, 23, 16, 17 }
  uselistorder i64 %rsp, { 1, 0 }
  uselistorder i64 %rip, { 1, 0 }
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
!17 = !{!18, !20, !22}
!18 = distinct !{!18, !19, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!19 = distinct !{!19, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!20 = distinct !{!20, !21, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!21 = distinct !{!21, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!22 = distinct !{!22, !23, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!23 = distinct !{!23, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!24 = !{!25}
!25 = distinct !{!25, !23, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!26 = !{!27, !29, !31}
!27 = distinct !{!27, !28, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!28 = distinct !{!28, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!29 = distinct !{!29, !30, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!30 = distinct !{!30, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!31 = distinct !{!31, !32, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!32 = distinct !{!32, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!33 = !{!34}
!34 = distinct !{!34, !32, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !7, i64 0}
!37 = !{!38, !40, !42, !44}
!38 = distinct !{!38, !39, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!39 = distinct !{!39, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!40 = distinct !{!40, !41, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!41 = distinct !{!41, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!42 = distinct !{!42, !43, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!43 = distinct !{!43, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!44 = distinct !{!44, !45, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!45 = distinct !{!45, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!46 = !{!47, !48}
!47 = distinct !{!47, !43, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!48 = distinct !{!48, !45, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!49 = !{!50, !52, !54, !44}
!50 = distinct !{!50, !51, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!51 = distinct !{!51, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!52 = distinct !{!52, !53, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!53 = distinct !{!53, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!54 = distinct !{!54, !55, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!55 = distinct !{!55, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!56 = !{!57, !48}
!57 = distinct !{!57, !55, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!58 = !{!59, !61, !63}
!59 = distinct !{!59, !60, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!60 = distinct !{!60, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!61 = distinct !{!61, !62, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!62 = distinct !{!62, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!63 = distinct !{!63, !64, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!64 = distinct !{!64, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!65 = !{!66}
!66 = distinct !{!66, !64, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!67 = !{!68, !70, !72}
!68 = distinct !{!68, !69, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!69 = distinct !{!69, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!70 = distinct !{!70, !71, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!71 = distinct !{!71, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!72 = distinct !{!72, !73, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!73 = distinct !{!73, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!74 = !{!75}
!75 = distinct !{!75, !73, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!76 = !{!77, !79, !81}
!77 = distinct !{!77, !78, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!78 = distinct !{!78, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!79 = distinct !{!79, !80, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!80 = distinct !{!80, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!81 = distinct !{!81, !82, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!82 = distinct !{!82, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!83 = !{!84}
!84 = distinct !{!84, !82, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!85 = !{!86, !88, !90}
!86 = distinct !{!86, !87, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!87 = distinct !{!87, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!88 = distinct !{!88, !89, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!89 = distinct !{!89, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!90 = distinct !{!90, !91, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!91 = distinct !{!91, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!92 = !{!93}
!93 = distinct !{!93, !91, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!94 = !{!95, !97, !99}
!95 = distinct !{!95, !96, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!96 = distinct !{!96, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!97 = distinct !{!97, !98, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!98 = distinct !{!98, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!99 = distinct !{!99, !100, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!100 = distinct !{!100, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!101 = !{!102}
!102 = distinct !{!102, !100, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!103 = !{!104, !106, !108, !110}
!104 = distinct !{!104, !105, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!105 = distinct !{!105, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!106 = distinct !{!106, !107, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!107 = distinct !{!107, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!108 = distinct !{!108, !109, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!109 = distinct !{!109, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!110 = distinct !{!110, !111, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!111 = distinct !{!111, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!112 = !{!113, !114}
!113 = distinct !{!113, !109, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!114 = distinct !{!114, !111, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!115 = !{!116, !118, !120, !110}
!116 = distinct !{!116, !117, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!117 = distinct !{!117, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!118 = distinct !{!118, !119, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!119 = distinct !{!119, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!120 = distinct !{!120, !121, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!121 = distinct !{!121, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!122 = !{!123, !114}
!123 = distinct !{!123, !121, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!124 = !{!125, !127, !129, !131}
!125 = distinct !{!125, !126, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!126 = distinct !{!126, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!127 = distinct !{!127, !128, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!128 = distinct !{!128, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!129 = distinct !{!129, !130, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!130 = distinct !{!130, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!131 = distinct !{!131, !132, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!132 = distinct !{!132, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!133 = !{!134, !135}
!134 = distinct !{!134, !130, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!135 = distinct !{!135, !132, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!136 = !{!137, !139, !141, !131}
!137 = distinct !{!137, !138, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!138 = distinct !{!138, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!139 = distinct !{!139, !140, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!140 = distinct !{!140, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!141 = distinct !{!141, !142, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!142 = distinct !{!142, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!143 = !{!144, !135}
!144 = distinct !{!144, !142, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!145 = !{!146, !148, !150}
!146 = distinct !{!146, !147, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!147 = distinct !{!147, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!148 = distinct !{!148, !149, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!149 = distinct !{!149, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!150 = distinct !{!150, !151, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!151 = distinct !{!151, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!152 = !{!153}
!153 = distinct !{!153, !151, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!154 = !{!155, !157, !159}
!155 = distinct !{!155, !156, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!156 = distinct !{!156, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!157 = distinct !{!157, !158, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!158 = distinct !{!158, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!159 = distinct !{!159, !160, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!160 = distinct !{!160, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!161 = !{!162}
!162 = distinct !{!162, !160, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!163 = !{!164, !166, !168, !170, !172, !174, !176}
!164 = distinct !{!164, !165, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!165 = distinct !{!165, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!166 = distinct !{!166, !167, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!167 = distinct !{!167, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!168 = distinct !{!168, !169, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs: %regs"}
!169 = distinct !{!169, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs"}
!170 = distinct !{!170, !171, !"_ZL20x86_logical_operatorIZ8x86_testE3$_2EmP8x86_regsP13x86_flags_regPK6cs_x86OT_: %regs"}
!171 = distinct !{!171, !"_ZL20x86_logical_operatorIZ8x86_testE3$_2EmP8x86_regsP13x86_flags_regPK6cs_x86OT_"}
!172 = distinct !{!172, !173, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!173 = distinct !{!173, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!174 = distinct !{!174, !175, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!175 = distinct !{!175, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!176 = distinct !{!176, !177, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!177 = distinct !{!177, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!178 = !{!179, !180}
!179 = distinct !{!179, !171, !"_ZL20x86_logical_operatorIZ8x86_testE3$_2EmP8x86_regsP13x86_flags_regPK6cs_x86OT_: %flags"}
!180 = distinct !{!180, !171, !"_ZL20x86_logical_operatorIZ8x86_testE3$_2EmP8x86_regsP13x86_flags_regPK6cs_x86OT_: %inst"}
!181 = !{!182, !184, !186}
!182 = distinct !{!182, !183, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!183 = distinct !{!183, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!184 = distinct !{!184, !185, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!185 = distinct !{!185, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!186 = distinct !{!186, !187, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs: %regs"}
!187 = distinct !{!187, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs"}
!188 = !{!189}
!189 = distinct !{!189, !187, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs: %destination"}
!190 = !{!191, !193, !195}
!191 = distinct !{!191, !192, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!192 = distinct !{!192, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!193 = distinct !{!193, !194, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!194 = distinct !{!194, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!195 = distinct !{!195, !196, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!196 = distinct !{!196, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!197 = !{!198}
!198 = distinct !{!198, !196, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!199 = !{!200, !202, !204}
!200 = distinct !{!200, !201, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!201 = distinct !{!201, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!202 = distinct !{!202, !203, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!203 = distinct !{!203, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!204 = distinct !{!204, !205, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!205 = distinct !{!205, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!206 = !{!207}
!207 = distinct !{!207, !205, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!208 = !{!209, !211, !213}
!209 = distinct !{!209, !210, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!210 = distinct !{!210, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!211 = distinct !{!211, !212, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!212 = distinct !{!212, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!213 = distinct !{!213, !214, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!214 = distinct !{!214, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!215 = !{!216}
!216 = distinct !{!216, !214, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!217 = !{!218, !220, !222}
!218 = distinct !{!218, !219, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!219 = distinct !{!219, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!220 = distinct !{!220, !221, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!221 = distinct !{!221, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!222 = distinct !{!222, !223, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!223 = distinct !{!223, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!224 = !{!225}
!225 = distinct !{!225, !223, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!226 = !{!227, !229, !231}
!227 = distinct !{!227, !228, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!228 = distinct !{!228, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!229 = distinct !{!229, !230, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!230 = distinct !{!230, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!231 = distinct !{!231, !232, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!232 = distinct !{!232, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!233 = !{!234}
!234 = distinct !{!234, !232, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!235 = !{!236, !238, !240}
!236 = distinct !{!236, !237, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!237 = distinct !{!237, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!238 = distinct !{!238, !239, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!239 = distinct !{!239, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!240 = distinct !{!240, !241, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!241 = distinct !{!241, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!242 = !{!243}
!243 = distinct !{!243, !241, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!244 = !{!245, !247}
!245 = distinct !{!245, !246, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!246 = distinct !{!246, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!247 = distinct !{!247, !248, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm: %regs"}
!248 = distinct !{!248, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm"}
!249 = !{!250}
!250 = distinct !{!250, !251, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!251 = distinct !{!251, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!252 = !{!253, !255, !257}
!253 = distinct !{!253, !254, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!254 = distinct !{!254, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!255 = distinct !{!255, !256, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!256 = distinct !{!256, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!257 = distinct !{!257, !258, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!258 = distinct !{!258, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!259 = !{!260}
!260 = distinct !{!260, !258, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!261 = !{!262, !264, !266, !268}
!262 = distinct !{!262, !263, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!263 = distinct !{!263, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!264 = distinct !{!264, !265, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!265 = distinct !{!265, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!266 = distinct !{!266, !267, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!267 = distinct !{!267, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!268 = distinct !{!268, !269, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!269 = distinct !{!269, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!270 = !{!271, !272}
!271 = distinct !{!271, !267, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!272 = distinct !{!272, !269, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!273 = !{!274, !276, !278, !268}
!274 = distinct !{!274, !275, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!275 = distinct !{!275, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!276 = distinct !{!276, !277, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!277 = distinct !{!277, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!278 = distinct !{!278, !279, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!279 = distinct !{!279, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!280 = !{!281, !272}
!281 = distinct !{!281, !279, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!282 = !{!283, !285, !287, !289}
!283 = distinct !{!283, !284, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!284 = distinct !{!284, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!285 = distinct !{!285, !286, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!286 = distinct !{!286, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!287 = distinct !{!287, !288, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!288 = distinct !{!288, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!289 = distinct !{!289, !290, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!290 = distinct !{!290, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!291 = !{!292, !293}
!292 = distinct !{!292, !288, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!293 = distinct !{!293, !290, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!294 = !{!295, !297, !299, !289}
!295 = distinct !{!295, !296, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!296 = distinct !{!296, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!297 = distinct !{!297, !298, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!298 = distinct !{!298, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!299 = distinct !{!299, !300, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!300 = distinct !{!300, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!301 = !{!302, !293}
!302 = distinct !{!302, !300, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!303 = !{!304, !306, !308, !310}
!304 = distinct !{!304, !305, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!305 = distinct !{!305, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!306 = distinct !{!306, !307, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!307 = distinct !{!307, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!308 = distinct !{!308, !309, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!309 = distinct !{!309, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!310 = distinct !{!310, !311, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!311 = distinct !{!311, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!312 = !{!313, !314}
!313 = distinct !{!313, !309, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!314 = distinct !{!314, !311, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!315 = !{!316, !318, !320, !310}
!316 = distinct !{!316, !317, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!317 = distinct !{!317, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!318 = distinct !{!318, !319, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!319 = distinct !{!319, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!320 = distinct !{!320, !321, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!321 = distinct !{!321, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!322 = !{!323, !314}
!323 = distinct !{!323, !321, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!324 = !{!325, !327, !329, !331}
!325 = distinct !{!325, !326, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!326 = distinct !{!326, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!327 = distinct !{!327, !328, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: %regs"}
!328 = distinct !{!328, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op"}
!329 = distinct !{!329, !330, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op: %regs"}
!330 = distinct !{!330, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op"}
!331 = distinct !{!331, !332, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!332 = distinct !{!332, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!333 = !{!334, !335, !336}
!334 = distinct !{!334, !328, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: %op"}
!335 = distinct !{!335, !330, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op: %op"}
!336 = distinct !{!336, !332, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!337 = !{!338, !340, !342}
!338 = distinct !{!338, !339, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!339 = distinct !{!339, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!340 = distinct !{!340, !341, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!341 = distinct !{!341, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!342 = distinct !{!342, !343, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs: %regs"}
!343 = distinct !{!343, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs"}
!344 = !{!345}
!345 = distinct !{!345, !343, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs: %destination"}
!346 = !{!347, !349, !351}
!347 = distinct !{!347, !348, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!348 = distinct !{!348, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!349 = distinct !{!349, !350, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!350 = distinct !{!350, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!351 = distinct !{!351, !352, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!352 = distinct !{!352, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!353 = !{!354}
!354 = distinct !{!354, !352, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!355 = !{!356, !358, !360}
!356 = distinct !{!356, !357, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!357 = distinct !{!357, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!358 = distinct !{!358, !359, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!359 = distinct !{!359, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!360 = distinct !{!360, !361, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!361 = distinct !{!361, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!362 = !{!363}
!363 = distinct !{!363, !361, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!364 = !{i64 4195488}
!365 = !{!366}
!366 = distinct !{!366, !367, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!367 = distinct !{!367, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!368 = !{!369, !371}
!369 = distinct !{!369, !370, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!370 = distinct !{!370, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!371 = distinct !{!371, !372, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!372 = distinct !{!372, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!373 = !{!374, !376, !378}
!374 = distinct !{!374, !375, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!375 = distinct !{!375, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!376 = distinct !{!376, !377, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!377 = distinct !{!377, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!378 = distinct !{!378, !379, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!379 = distinct !{!379, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!380 = !{!381}
!381 = distinct !{!381, !379, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!382 = !{!383, !385, !387, !389}
!383 = distinct !{!383, !384, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!384 = distinct !{!384, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!385 = distinct !{!385, !386, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!386 = distinct !{!386, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!387 = distinct !{!387, !388, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!388 = distinct !{!388, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!389 = distinct !{!389, !390, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!390 = distinct !{!390, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!391 = !{!392, !393}
!392 = distinct !{!392, !388, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!393 = distinct !{!393, !390, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!394 = !{!395, !397}
!395 = distinct !{!395, !396, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!396 = distinct !{!396, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!397 = distinct !{!397, !398, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm: %regs"}
!398 = distinct !{!398, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm"}
!399 = !{!400}
!400 = distinct !{!400, !401, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!401 = distinct !{!401, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!402 = !{!403, !405, !407}
!403 = distinct !{!403, !404, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!404 = distinct !{!404, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!405 = distinct !{!405, !406, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!406 = distinct !{!406, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!407 = distinct !{!407, !408, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs: %regs"}
!408 = distinct !{!408, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs"}
!409 = !{!410}
!410 = distinct !{!410, !408, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs: %destination"}
!411 = !{i64 4196176}
!412 = !{!413, !415}
!413 = distinct !{!413, !414, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!414 = distinct !{!414, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!415 = distinct !{!415, !416, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!416 = distinct !{!416, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!417 = !{i64 4195920}
!418 = !{!419}
!419 = distinct !{!419, !420, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!420 = distinct !{!420, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!421 = !{!422, !424}
!422 = distinct !{!422, !423, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!423 = distinct !{!423, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!424 = distinct !{!424, !425, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!425 = distinct !{!425, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!426 = !{!427, !429, !431}
!427 = distinct !{!427, !428, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!428 = distinct !{!428, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!429 = distinct !{!429, !430, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!430 = distinct !{!430, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!431 = distinct !{!431, !432, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!432 = distinct !{!432, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!433 = !{!434}
!434 = distinct !{!434, !432, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!435 = !{!436, !438, !440}
!436 = distinct !{!436, !437, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!437 = distinct !{!437, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!438 = distinct !{!438, !439, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!439 = distinct !{!439, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!440 = distinct !{!440, !441, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!441 = distinct !{!441, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!442 = !{!443}
!443 = distinct !{!443, !441, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!444 = !{!445, !447, !449}
!445 = distinct !{!445, !446, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!446 = distinct !{!446, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!447 = distinct !{!447, !448, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!448 = distinct !{!448, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!449 = distinct !{!449, !450, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!450 = distinct !{!450, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!451 = !{!452}
!452 = distinct !{!452, !450, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!453 = !{!454}
!454 = distinct !{!454, !455, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!455 = distinct !{!455, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!456 = !{i64 4195808}
!457 = !{!458}
!458 = distinct !{!458, !459, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!459 = distinct !{!459, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!460 = !{!461, !463}
!461 = distinct !{!461, !462, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!462 = distinct !{!462, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!463 = distinct !{!463, !464, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!464 = distinct !{!464, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!465 = !{!466, !468, !470}
!466 = distinct !{!466, !467, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!467 = distinct !{!467, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!468 = distinct !{!468, !469, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!469 = distinct !{!469, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!470 = distinct !{!470, !471, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!471 = distinct !{!471, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!472 = !{!473}
!473 = distinct !{!473, !471, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!474 = !{!475, !477, !479, !481}
!475 = distinct !{!475, !476, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!476 = distinct !{!476, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!477 = distinct !{!477, !478, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!478 = distinct !{!478, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!479 = distinct !{!479, !480, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!480 = distinct !{!480, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!481 = distinct !{!481, !482, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!482 = distinct !{!482, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!483 = !{!484, !485}
!484 = distinct !{!484, !480, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!485 = distinct !{!485, !482, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!486 = !{!487, !489, !491, !481}
!487 = distinct !{!487, !488, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!488 = distinct !{!488, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!489 = distinct !{!489, !490, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!490 = distinct !{!490, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!491 = distinct !{!491, !492, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!492 = distinct !{!492, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!493 = !{!494, !485}
!494 = distinct !{!494, !492, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!495 = !{!496, !498, !500}
!496 = distinct !{!496, !497, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!497 = distinct !{!497, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!498 = distinct !{!498, !499, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!499 = distinct !{!499, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!500 = distinct !{!500, !501, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!501 = distinct !{!501, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!502 = !{!503}
!503 = distinct !{!503, !501, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!504 = !{!505, !507, !509, !511}
!505 = distinct !{!505, !506, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!506 = distinct !{!506, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!507 = distinct !{!507, !508, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!508 = distinct !{!508, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!509 = distinct !{!509, !510, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!510 = distinct !{!510, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!511 = distinct !{!511, !512, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!512 = distinct !{!512, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!513 = !{!514, !515}
!514 = distinct !{!514, !510, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!515 = distinct !{!515, !512, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!516 = !{!517, !519, !521}
!517 = distinct !{!517, !518, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!518 = distinct !{!518, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!519 = distinct !{!519, !520, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!520 = distinct !{!520, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!521 = distinct !{!521, !522, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!522 = distinct !{!522, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!523 = !{!524}
!524 = distinct !{!524, !522, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!525 = !{!526, !528}
!526 = distinct !{!526, !527, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!527 = distinct !{!527, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!528 = distinct !{!528, !529, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!529 = distinct !{!529, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!530 = !{!531, !533, !535, !537}
!531 = distinct !{!531, !532, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!532 = distinct !{!532, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!533 = distinct !{!533, !534, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!534 = distinct !{!534, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!535 = distinct !{!535, !536, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!536 = distinct !{!536, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!537 = distinct !{!537, !538, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!538 = distinct !{!538, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!539 = !{!540, !541}
!540 = distinct !{!540, !536, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!541 = distinct !{!541, !538, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!542 = !{!543, !545, !547, !549}
!543 = distinct !{!543, !544, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!544 = distinct !{!544, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!545 = distinct !{!545, !546, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!546 = distinct !{!546, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!547 = distinct !{!547, !548, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!548 = distinct !{!548, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!549 = distinct !{!549, !550, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!550 = distinct !{!550, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!551 = !{!552, !553}
!552 = distinct !{!552, !548, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!553 = distinct !{!553, !550, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!554 = !{!555, !557, !559, !561}
!555 = distinct !{!555, !556, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!556 = distinct !{!556, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!557 = distinct !{!557, !558, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!558 = distinct !{!558, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!559 = distinct !{!559, !560, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!560 = distinct !{!560, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!561 = distinct !{!561, !562, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!562 = distinct !{!562, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!563 = !{!564, !565}
!564 = distinct !{!564, !560, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!565 = distinct !{!565, !562, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!566 = !{i64 4195984}
!567 = !{!568}
!568 = distinct !{!568, !569, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!569 = distinct !{!569, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!570 = !{!571, !573}
!571 = distinct !{!571, !572, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!572 = distinct !{!572, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!573 = distinct !{!573, !574, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!574 = distinct !{!574, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!575 = !{!576, !573}
!576 = distinct !{!576, !577, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!577 = distinct !{!577, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!578 = !{!579, !581}
!579 = distinct !{!579, !580, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!580 = distinct !{!580, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!581 = distinct !{!581, !582, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm: %regs"}
!582 = distinct !{!582, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm"}
!583 = !{!584}
!584 = distinct !{!584, !585, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!585 = distinct !{!585, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!586 = !{!587, !589, !591}
!587 = distinct !{!587, !588, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!588 = distinct !{!588, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!589 = distinct !{!589, !590, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!590 = distinct !{!590, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!591 = distinct !{!591, !592, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!592 = distinct !{!592, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!593 = !{!594}
!594 = distinct !{!594, !592, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!595 = !{!596, !598}
!596 = distinct !{!596, !597, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!597 = distinct !{!597, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!598 = distinct !{!598, !599, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!599 = distinct !{!599, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!600 = !{!601, !603, !605, !607}
!601 = distinct !{!601, !602, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!602 = distinct !{!602, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!603 = distinct !{!603, !604, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!604 = distinct !{!604, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!605 = distinct !{!605, !606, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!606 = distinct !{!606, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!607 = distinct !{!607, !608, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!608 = distinct !{!608, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!609 = !{!610, !611}
!610 = distinct !{!610, !606, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!611 = distinct !{!611, !608, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!612 = !{!613, !615}
!613 = distinct !{!613, !614, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!614 = distinct !{!614, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!615 = distinct !{!615, !616, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm: %regs"}
!616 = distinct !{!616, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm"}
!617 = !{!618, !615}
!618 = distinct !{!618, !619, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!619 = distinct !{!619, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!620 = !{!621, !623, !625}
!621 = distinct !{!621, !622, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!622 = distinct !{!622, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!623 = distinct !{!623, !624, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!624 = distinct !{!624, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!625 = distinct !{!625, !626, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!626 = distinct !{!626, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!627 = !{!628}
!628 = distinct !{!628, !626, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!629 = !{i64 4195856}
!630 = !{!631}
!631 = distinct !{!631, !632, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!632 = distinct !{!632, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!633 = !{!634, !636}
!634 = distinct !{!634, !635, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!635 = distinct !{!635, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!636 = distinct !{!636, !637, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!637 = distinct !{!637, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!638 = !{!639, !641, !643}
!639 = distinct !{!639, !640, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!640 = distinct !{!640, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!641 = distinct !{!641, !642, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!642 = distinct !{!642, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!643 = distinct !{!643, !644, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!644 = distinct !{!644, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!645 = !{!646}
!646 = distinct !{!646, !644, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!647 = !{!648, !650, !652}
!648 = distinct !{!648, !649, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!649 = distinct !{!649, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!650 = distinct !{!650, !651, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!651 = distinct !{!651, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!652 = distinct !{!652, !653, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!653 = distinct !{!653, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!654 = !{!655}
!655 = distinct !{!655, !653, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!656 = !{!657}
!657 = distinct !{!657, !658, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!658 = distinct !{!658, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!659 = !{i64 4195616}
!660 = !{i32 3}
!661 = !{!662}
!662 = distinct !{!662, !663, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!663 = distinct !{!663, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!664 = !{!665, !667}
!665 = distinct !{!665, !666, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!666 = distinct !{!666, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!667 = distinct !{!667, !668, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!668 = distinct !{!668, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!669 = !{!670, !672, !674}
!670 = distinct !{!670, !671, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!671 = distinct !{!671, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!672 = distinct !{!672, !673, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!673 = distinct !{!673, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!674 = distinct !{!674, !675, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!675 = distinct !{!675, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!676 = !{!677}
!677 = distinct !{!677, !675, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!678 = !{!679, !681, !683, !685}
!679 = distinct !{!679, !680, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!680 = distinct !{!680, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!681 = distinct !{!681, !682, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!682 = distinct !{!682, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!683 = distinct !{!683, !684, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!684 = distinct !{!684, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!685 = distinct !{!685, !686, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!686 = distinct !{!686, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!687 = !{!688, !689}
!688 = distinct !{!688, !684, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!689 = distinct !{!689, !686, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!690 = !{!691, !693, !695, !697}
!691 = distinct !{!691, !692, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!692 = distinct !{!692, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!693 = distinct !{!693, !694, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!694 = distinct !{!694, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!695 = distinct !{!695, !696, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!696 = distinct !{!696, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!697 = distinct !{!697, !698, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!698 = distinct !{!698, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!699 = !{!700, !701}
!700 = distinct !{!700, !696, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!701 = distinct !{!701, !698, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!702 = !{!703, !705, !707, !709}
!703 = distinct !{!703, !704, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!704 = distinct !{!704, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!705 = distinct !{!705, !706, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!706 = distinct !{!706, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!707 = distinct !{!707, !708, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!708 = distinct !{!708, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!709 = distinct !{!709, !710, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!710 = distinct !{!710, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!711 = !{!712, !713}
!712 = distinct !{!712, !708, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!713 = distinct !{!713, !710, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!714 = !{!715, !717, !719, !721, !723}
!715 = distinct !{!715, !716, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!716 = distinct !{!716, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!717 = distinct !{!717, !718, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: %regs"}
!718 = distinct !{!718, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op"}
!719 = distinct !{!719, !720, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op: %regs"}
!720 = distinct !{!720, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op"}
!721 = distinct !{!721, !722, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!722 = distinct !{!722, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!723 = distinct !{!723, !724, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!724 = distinct !{!724, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!725 = !{!726, !727, !728, !729}
!726 = distinct !{!726, !718, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: %op"}
!727 = distinct !{!727, !720, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op: %op"}
!728 = distinct !{!728, !722, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!729 = distinct !{!729, !724, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!730 = !{!731, !733, !735}
!731 = distinct !{!731, !732, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!732 = distinct !{!732, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!733 = distinct !{!733, !734, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!734 = distinct !{!734, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!735 = distinct !{!735, !736, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!736 = distinct !{!736, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!737 = !{!738}
!738 = distinct !{!738, !736, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!739 = !{!740, !742, !744, !746, !748, !750, !752, !754, !756, !758, !760, !762, !764, !766, !768, !770, !772, !774, !776, !778, !780, !782}
!740 = distinct !{!740, !741, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!741 = distinct !{!741, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!742 = distinct !{!742, !743, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!743 = distinct !{!743, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!744 = distinct !{!744, !745, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!745 = distinct !{!745, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!746 = distinct !{!746, !747, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!747 = distinct !{!747, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!748 = distinct !{!748, !749, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!749 = distinct !{!749, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!750 = distinct !{!750, !751, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: %regs"}
!751 = distinct !{!751, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op"}
!752 = distinct !{!752, !753, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op: %regs"}
!753 = distinct !{!753, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op"}
!754 = distinct !{!754, !755, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs: %regs"}
!755 = distinct !{!755, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs"}
!756 = distinct !{!756, !757, !"_ZL20x86_logical_operatorIZ7x86_xorE3$_3EmP8x86_regsP13x86_flags_regPK6cs_x86OT_: %regs"}
!757 = distinct !{!757, !"_ZL20x86_logical_operatorIZ7x86_xorE3$_3EmP8x86_regsP13x86_flags_regPK6cs_x86OT_"}
!758 = distinct !{!758, !759, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!759 = distinct !{!759, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!760 = distinct !{!760, !761, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: %regs"}
!761 = distinct !{!761, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op"}
!762 = distinct !{!762, !763, !"_ZL13x86_write_memPK8x86_regsPK9cs_x86_opm: %regs"}
!763 = distinct !{!763, !"_ZL13x86_write_memPK8x86_regsPK9cs_x86_opm"}
!764 = distinct !{!764, !765, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!765 = distinct !{!765, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!766 = distinct !{!766, !767, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!767 = distinct !{!767, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!768 = distinct !{!768, !769, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: %regs"}
!769 = distinct !{!769, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op"}
!770 = distinct !{!770, !771, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op: %regs"}
!771 = distinct !{!771, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op"}
!772 = distinct !{!772, !773, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs: %regs"}
!773 = distinct !{!773, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs"}
!774 = distinct !{!774, !775, !"_ZL20x86_logical_operatorIZ7x86_xorE3$_3EmP8x86_regsP13x86_flags_regPK6cs_x86OT_: %regs"}
!775 = distinct !{!775, !"_ZL20x86_logical_operatorIZ7x86_xorE3$_3EmP8x86_regsP13x86_flags_regPK6cs_x86OT_"}
!776 = distinct !{!776, !777, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!777 = distinct !{!777, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!778 = distinct !{!778, !779, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: %regs"}
!779 = distinct !{!779, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op"}
!780 = distinct !{!780, !781, !"_ZL13x86_write_memPK8x86_regsPK9cs_x86_opm: %regs"}
!781 = distinct !{!781, !"_ZL13x86_write_memPK8x86_regsPK9cs_x86_opm"}
!782 = distinct !{!782, !783, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!783 = distinct !{!783, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!784 = !{}
!785 = !{!786, !788, !790, !746}
!786 = distinct !{!786, !787, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!787 = distinct !{!787, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!788 = distinct !{!788, !789, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!789 = distinct !{!789, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!790 = distinct !{!790, !791, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!791 = distinct !{!791, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!792 = !{!793, !794}
!793 = distinct !{!793, !791, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!794 = distinct !{!794, !747, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!795 = !{!796, !798, !800, !802, !804, !806, !808, !810, !812, !814, !816, !818, !820, !822}
!796 = distinct !{!796, !797, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!797 = distinct !{!797, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!798 = distinct !{!798, !799, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: %regs"}
!799 = distinct !{!799, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op"}
!800 = distinct !{!800, !801, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op: %regs"}
!801 = distinct !{!801, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op"}
!802 = distinct !{!802, !803, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs: %regs"}
!803 = distinct !{!803, !"_ZL28x86_read_destination_operandPK9cs_x86_opPK8x86_regs"}
!804 = distinct !{!804, !805, !"_ZL20x86_logical_operatorIZ7x86_xorE3$_3EmP8x86_regsP13x86_flags_regPK6cs_x86OT_: %regs"}
!805 = distinct !{!805, !"_ZL20x86_logical_operatorIZ7x86_xorE3$_3EmP8x86_regsP13x86_flags_regPK6cs_x86OT_"}
!806 = distinct !{!806, !807, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!807 = distinct !{!807, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!808 = distinct !{!808, !809, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: %regs"}
!809 = distinct !{!809, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op"}
!810 = distinct !{!810, !811, !"_ZL13x86_write_memPK8x86_regsPK9cs_x86_opm: %regs"}
!811 = distinct !{!811, !"_ZL13x86_write_memPK8x86_regsPK9cs_x86_opm"}
!812 = distinct !{!812, !813, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!813 = distinct !{!813, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!814 = distinct !{!814, !815, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!815 = distinct !{!815, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!816 = distinct !{!816, !817, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: %regs"}
!817 = distinct !{!817, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op"}
!818 = distinct !{!818, !819, !"_ZL13x86_write_memPK8x86_regsPK9cs_x86_opm: %regs"}
!819 = distinct !{!819, !"_ZL13x86_write_memPK8x86_regsPK9cs_x86_opm"}
!820 = distinct !{!820, !821, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!821 = distinct !{!821, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!822 = distinct !{!822, !823, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!823 = distinct !{!823, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!824 = !{!825, !827, !829, !831, !833}
!825 = distinct !{!825, !826, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!826 = distinct !{!826, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!827 = distinct !{!827, !828, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: %regs"}
!828 = distinct !{!828, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op"}
!829 = distinct !{!829, !830, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op: %regs"}
!830 = distinct !{!830, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op"}
!831 = distinct !{!831, !832, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!832 = distinct !{!832, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!833 = distinct !{!833, !834, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!834 = distinct !{!834, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!835 = !{!836, !837, !838, !839}
!836 = distinct !{!836, !828, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: %op"}
!837 = distinct !{!837, !830, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op: %op"}
!838 = distinct !{!838, !832, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!839 = distinct !{!839, !834, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!840 = !{!841, !843, !845, !847, !849}
!841 = distinct !{!841, !842, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!842 = distinct !{!842, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!843 = distinct !{!843, !844, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: %regs"}
!844 = distinct !{!844, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op"}
!845 = distinct !{!845, !846, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op: %regs"}
!846 = distinct !{!846, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op"}
!847 = distinct !{!847, !848, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!848 = distinct !{!848, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!849 = distinct !{!849, !850, !"_ZL20x86_logical_operatorIZ7x86_xorE3$_3EmP8x86_regsP13x86_flags_regPK6cs_x86OT_: %regs"}
!850 = distinct !{!850, !"_ZL20x86_logical_operatorIZ7x86_xorE3$_3EmP8x86_regsP13x86_flags_regPK6cs_x86OT_"}
!851 = !{!852, !853, !854, !855, !856}
!852 = distinct !{!852, !844, !"_ZL25x86_get_effective_addressPK8x86_regsPK9cs_x86_op: %op"}
!853 = distinct !{!853, !846, !"_ZL12x86_read_memPK8x86_regsPK9cs_x86_op: %op"}
!854 = distinct !{!854, !848, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!855 = distinct !{!855, !850, !"_ZL20x86_logical_operatorIZ7x86_xorE3$_3EmP8x86_regsP13x86_flags_regPK6cs_x86OT_: %flags"}
!856 = distinct !{!856, !850, !"_ZL20x86_logical_operatorIZ7x86_xorE3$_3EmP8x86_regsP13x86_flags_regPK6cs_x86OT_: %inst"}
!857 = !{!858, !860, !862}
!858 = distinct !{!858, !859, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!859 = distinct !{!859, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!860 = distinct !{!860, !861, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!861 = distinct !{!861, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!862 = distinct !{!862, !863, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!863 = distinct !{!863, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!864 = !{!865}
!865 = distinct !{!865, !863, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!866 = !{!867, !869, !871}
!867 = distinct !{!867, !868, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!868 = distinct !{!868, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!869 = distinct !{!869, !870, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!870 = distinct !{!870, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!871 = distinct !{!871, !872, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!872 = distinct !{!872, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!873 = !{!874}
!874 = distinct !{!874, !872, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!875 = !{!876, !878, !880, !882}
!876 = distinct !{!876, !877, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!877 = distinct !{!877, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!878 = distinct !{!878, !879, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!879 = distinct !{!879, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!880 = distinct !{!880, !881, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!881 = distinct !{!881, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!882 = distinct !{!882, !883, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!883 = distinct !{!883, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!884 = !{!885, !886}
!885 = distinct !{!885, !881, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!886 = distinct !{!886, !883, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!887 = !{!888, !890, !892, !882}
!888 = distinct !{!888, !889, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!889 = distinct !{!889, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!890 = distinct !{!890, !891, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!891 = distinct !{!891, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!892 = distinct !{!892, !893, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!893 = distinct !{!893, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!894 = !{!895, !886}
!895 = distinct !{!895, !893, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!896 = !{!897, !899}
!897 = distinct !{!897, !898, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!898 = distinct !{!898, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!899 = distinct !{!899, !900, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm: %regs"}
!900 = distinct !{!900, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm"}
!901 = !{!902, !904, !906}
!902 = distinct !{!902, !903, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!903 = distinct !{!903, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!904 = distinct !{!904, !905, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!905 = distinct !{!905, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!906 = distinct !{!906, !907, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!907 = distinct !{!907, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!908 = !{!909}
!909 = distinct !{!909, !907, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!910 = !{!911, !913, !915, !917}
!911 = distinct !{!911, !912, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!912 = distinct !{!912, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!913 = distinct !{!913, !914, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!914 = distinct !{!914, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!915 = distinct !{!915, !916, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!916 = distinct !{!916, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!917 = distinct !{!917, !918, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!918 = distinct !{!918, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!919 = !{!920, !921}
!920 = distinct !{!920, !916, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!921 = distinct !{!921, !918, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!922 = !{!923, !925, !927}
!923 = distinct !{!923, !924, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!924 = distinct !{!924, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!925 = distinct !{!925, !926, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!926 = distinct !{!926, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!927 = distinct !{!927, !928, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!928 = distinct !{!928, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!929 = !{!930}
!930 = distinct !{!930, !928, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!931 = !{!932, !934}
!932 = distinct !{!932, !933, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!933 = distinct !{!933, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!934 = distinct !{!934, !935, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!935 = distinct !{!935, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!936 = !{!937, !939, !941, !943}
!937 = distinct !{!937, !938, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!938 = distinct !{!938, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!939 = distinct !{!939, !940, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!940 = distinct !{!940, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!941 = distinct !{!941, !942, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!942 = distinct !{!942, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!943 = distinct !{!943, !944, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!944 = distinct !{!944, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!945 = !{!946, !947}
!946 = distinct !{!946, !942, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!947 = distinct !{!947, !944, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!948 = !{!949, !951, !953, !955}
!949 = distinct !{!949, !950, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!950 = distinct !{!950, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!951 = distinct !{!951, !952, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!952 = distinct !{!952, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!953 = distinct !{!953, !954, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!954 = distinct !{!954, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!955 = distinct !{!955, !956, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!956 = distinct !{!956, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!957 = !{!958, !959}
!958 = distinct !{!958, !954, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!959 = distinct !{!959, !956, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!960 = !{!961, !963, !965, !967}
!961 = distinct !{!961, !962, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!962 = distinct !{!962, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!963 = distinct !{!963, !964, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!964 = distinct !{!964, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!965 = distinct !{!965, !966, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!966 = distinct !{!966, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!967 = distinct !{!967, !968, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!968 = distinct !{!968, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!969 = !{!970, !971}
!970 = distinct !{!970, !966, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!971 = distinct !{!971, !968, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!972 = !{!973, !975, !977}
!973 = distinct !{!973, !974, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!974 = distinct !{!974, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!975 = distinct !{!975, !976, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!976 = distinct !{!976, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!977 = distinct !{!977, !978, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!978 = distinct !{!978, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!979 = !{!980}
!980 = distinct !{!980, !978, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!981 = !{!982, !984}
!982 = distinct !{!982, !983, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!983 = distinct !{!983, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!984 = distinct !{!984, !985, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm: %regs"}
!985 = distinct !{!985, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm"}
!986 = !{!987}
!987 = distinct !{!987, !988, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!988 = distinct !{!988, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!989 = !{!"movdqa xmm0, xmmword ptr [rip + 0x220]"}
!990 = !{!"movdqa xmm1, xmmword ptr [rsp]"}
!991 = !{!"pxor xmm1, xmm0"}
!992 = !{!"movaps xmmword ptr [rsp], xmm1"}
!993 = !{!"movdqa xmm1, xmmword ptr [rsp + 0x10]"}
!994 = !{!"movaps xmmword ptr [rsp + 0x10], xmm1"}
!995 = !{!"movdqa xmm1, xmmword ptr [rsp + 0x20]"}
!996 = !{!"movaps xmmword ptr [rsp + 0x20], xmm1"}
!997 = !{!"movdqa xmm1, xmmword ptr [rsp + 0x30]"}
!998 = !{!"movaps xmmword ptr [rsp + 0x30], xmm1"}
!999 = !{!"movdqa xmm1, xmmword ptr [rsp + 0x40]"}
!1000 = !{!"pxor xmm0, xmmword ptr [rsp + 0x50]"}
!1001 = !{!"movaps xmmword ptr [rsp + 0x40], xmm1"}
!1002 = !{!"movaps xmmword ptr [rsp + 0x50], xmm0"}
!1003 = !{i64 4196180}
!1004 = !{!1005}
!1005 = distinct !{!1005, !1006, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!1006 = distinct !{!1006, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!1007 = !{!1008, !1010}
!1008 = distinct !{!1008, !1009, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!1009 = distinct !{!1009, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!1010 = distinct !{!1010, !1011, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!1011 = distinct !{!1011, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!1012 = !{i64 4196016}
!1013 = !{!1014}
!1014 = distinct !{!1014, !1015, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!1015 = distinct !{!1015, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!1016 = !{!1017, !1019}
!1017 = distinct !{!1017, !1018, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!1018 = distinct !{!1018, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!1019 = distinct !{!1019, !1020, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!1020 = distinct !{!1020, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!1021 = !{!1022, !1019}
!1022 = distinct !{!1022, !1023, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!1023 = distinct !{!1023, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!1024 = !{!1025, !1027, !1029, !1031}
!1025 = distinct !{!1025, !1026, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!1026 = distinct !{!1026, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!1027 = distinct !{!1027, !1028, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!1028 = distinct !{!1028, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!1029 = distinct !{!1029, !1030, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!1030 = distinct !{!1030, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!1031 = distinct !{!1031, !1032, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!1032 = distinct !{!1032, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!1033 = !{!1034, !1035}
!1034 = distinct !{!1034, !1030, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!1035 = distinct !{!1035, !1032, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!1036 = !{!1037, !1039, !1041, !1043}
!1037 = distinct !{!1037, !1038, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!1038 = distinct !{!1038, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!1039 = distinct !{!1039, !1040, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!1040 = distinct !{!1040, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!1041 = distinct !{!1041, !1042, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!1042 = distinct !{!1042, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!1043 = distinct !{!1043, !1044, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %regs"}
!1044 = distinct !{!1044, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86"}
!1045 = !{!1046, !1047}
!1046 = distinct !{!1046, !1042, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!1047 = distinct !{!1047, !1044, !"_ZL20x86_move_zero_extendP8x86_regsPK6cs_x86: %inst"}
!1048 = !{!1049, !1051, !1053}
!1049 = distinct !{!1049, !1050, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!1050 = distinct !{!1050, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!1051 = distinct !{!1051, !1052, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op: %regs"}
!1052 = distinct !{!1052, !"_ZL12x86_read_regPK8x86_regsPK9cs_x86_op"}
!1053 = distinct !{!1053, !1054, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %regs"}
!1054 = distinct !{!1054, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs"}
!1055 = !{!1056}
!1056 = distinct !{!1056, !1054, !"_ZL23x86_read_source_operandPK9cs_x86_opPK8x86_regs: %source"}
!1057 = !{!1058, !1060, !1062}
!1058 = distinct !{!1058, !1059, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!1059 = distinct !{!1059, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!1060 = distinct !{!1060, !1061, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!1061 = distinct !{!1061, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!1062 = distinct !{!1062, !1063, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!1063 = distinct !{!1063, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!1064 = !{!1065}
!1065 = distinct !{!1065, !1063, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!1066 = !{!1067, !1069, !1071}
!1067 = distinct !{!1067, !1068, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!1068 = distinct !{!1068, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!1069 = distinct !{!1069, !1070, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm: %regs"}
!1070 = distinct !{!1070, !"_ZL13x86_write_regP8x86_regsPK9cs_x86_opm"}
!1071 = distinct !{!1071, !1072, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %regs"}
!1072 = distinct !{!1072, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm"}
!1073 = !{!1074}
!1074 = distinct !{!1074, !1072, !"_ZL29x86_write_destination_operandPK9cs_x86_opP8x86_regsm: %destination"}
!1075 = !{!1076, !1078}
!1076 = distinct !{!1076, !1077, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!1077 = distinct !{!1077, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!1078 = distinct !{!1078, !1079, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm: %regs"}
!1079 = distinct !{!1079, !"_ZL13x86_pop_valuePK10x86_configP8x86_regsm"}
!1080 = !{!1081}
!1081 = distinct !{!1081, !1082, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!1082 = distinct !{!1082, !"_ZL13x86_write_regP8x86_regs7x86_regm"}
!1083 = !{i64 4195600}
!1084 = !{!1085}
!1085 = distinct !{!1085, !1086, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!1086 = distinct !{!1086, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!1087 = !{!1088, !1090}
!1088 = distinct !{!1088, !1089, !"_ZL12x86_read_regPK8x86_regs7x86_reg: %regs"}
!1089 = distinct !{!1089, !"_ZL12x86_read_regPK8x86_regs7x86_reg"}
!1090 = distinct !{!1090, !1091, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm: %regs"}
!1091 = distinct !{!1091, !"_ZL14x86_push_valuePK10x86_configP8x86_regsmm"}
!1092 = !{!1093, !1090}
!1093 = distinct !{!1093, !1094, !"_ZL13x86_write_regP8x86_regs7x86_regm: %regs"}
!1094 = distinct !{!1094, !"_ZL13x86_write_regP8x86_regs7x86_regm"}