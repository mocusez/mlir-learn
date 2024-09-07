; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@hello_word_string = internal constant [16 x i8] c"Hello, World! \0A\00"

declare i32 @printf(ptr, ...)

define void @main() {
  %1 = call i32 (ptr, ...) @printf(ptr @hello_word_string)
  ret void
}

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}

