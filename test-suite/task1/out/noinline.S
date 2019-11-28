	.file	"inlinefunctions.c"
	.text
	.p2align 4
	.globl	comparison
	.type	comparison, @function
comparison:
.LFB7:
	.cfi_startproc
	xorq	%rsi, %rdi
	movq	%rdi, %rax
	andl	$1, %eax
	ret
	.cfi_endproc
.LFE7:
	.size	comparison, .-comparison
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Number of odd numbers: %d\n"
	.text
	.p2align 4
	.globl	run_inline_functions
	.type	run_inline_functions, @function
run_inline_functions:
.LFB6:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L4:
	leaq	arr.2850(,%rdx,4), %rdi
	movq	%rdx, %rsi
	call	comparison
	cmpl	$1, %eax
	sete	%al
	addq	$1, %rdx
	movzbl	%al, %eax
	addl	%eax, %r8d
	cmpq	$100000000, %rdx
	jne	.L4
	movl	%r8d, %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	jmp	printf
	.cfi_endproc
.LFE6:
	.size	run_inline_functions, .-run_inline_functions
	.local	arr.2850
	.comm	arr.2850,400000000,32
	.ident	"GCC: (GNU) 9.2.1 20190827 (Red Hat 9.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
