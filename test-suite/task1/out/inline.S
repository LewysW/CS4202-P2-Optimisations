	.file	"inlinefunctions.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"ODD"
.LC1:
	.string	"Result: %s\n"
.LC2:
	.string	"EVEN"
	.text
	.p2align 4
	.globl	run_inline_functions
	.type	run_inline_functions, @function
run_inline_functions:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$arr.2914, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	xorl	%ebx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.p2align 4,,10
	.p2align 3
.L5:
	movq	%rbp, %rax
	movl	$.LC0, %esi
	xorq	%rbx, %rax
	testb	$1, %al
	je	.L10
	movl	$.LC2, %esi
.L10:
	movl	$.LC1, %edi
	xorl	%eax, %eax
	addq	$1, %rbx
	addq	$4, %rbp
	call	printf
	cmpq	$1000000, %rbx
	jne	.L5
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE22:
	.size	run_inline_functions, .-run_inline_functions
	.p2align 4
	.globl	comparison
	.type	comparison, @function
comparison:
.LFB23:
	.cfi_startproc
	xorq	%rsi, %rdi
	movq	%rdi, %rax
	andl	$1, %eax
	ret
	.cfi_endproc
.LFE23:
	.size	comparison, .-comparison
	.local	arr.2914
	.comm	arr.2914,4000000,32
	.ident	"GCC: (GNU) 9.2.1 20190827 (Red Hat 9.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
