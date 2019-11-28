	.file	"inlinefunctions.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"Number of odd numbers: %d\n"
	.text
	.p2align 4
	.globl	run_inline_functions
	.type	run_inline_functions, @function
run_inline_functions:
.LFB22:
	.cfi_startproc
	pxor	%xmm4, %xmm4
	movdqa	.LC1(%rip), %xmm2
	movl	$arr.2914, %eax
	movdqa	.LC0(%rip), %xmm3
	movdqa	%xmm4, %xmm6
	movq	%rax, %xmm5
	movdqa	%xmm4, %xmm7
	xorl	%eax, %eax
	pcmpgtd	%xmm2, %xmm6
	punpcklqdq	%xmm5, %xmm5
	movdqa	.LC2(%rip), %xmm8
	.p2align 4,,10
	.p2align 3
.L2:
	movdqa	%xmm3, %xmm9
	movdqa	%xmm7, %xmm1
	paddd	%xmm2, %xmm3
	addl	$1, %eax
	movdqa	%xmm9, %xmm0
	movdqa	%xmm6, %xmm10
	movdqa	%xmm6, %xmm11
	punpckldq	%xmm9, %xmm0
	pcmpgtd	%xmm0, %xmm1
	pmuludq	%xmm0, %xmm10
	pmuludq	%xmm2, %xmm0
	pmuludq	%xmm2, %xmm1
	paddq	%xmm10, %xmm1
	movdqa	%xmm7, %xmm10
	psllq	$32, %xmm1
	paddq	%xmm1, %xmm0
	movdqa	%xmm9, %xmm1
	punpckhdq	%xmm9, %xmm1
	paddq	%xmm5, %xmm0
	pcmpgtd	%xmm1, %xmm10
	pmuludq	%xmm1, %xmm11
	pmuludq	%xmm2, %xmm1
	pmuludq	%xmm2, %xmm10
	paddq	%xmm11, %xmm10
	psllq	$32, %xmm10
	paddq	%xmm10, %xmm1
	paddq	%xmm5, %xmm1
	shufps	$136, %xmm1, %xmm0
	pxor	%xmm9, %xmm0
	pand	%xmm8, %xmm0
	paddd	%xmm0, %xmm4
	cmpl	$25000000, %eax
	jne	.L2
	movdqa	%xmm4, %xmm0
	movl	$.LC3, %edi
	xorl	%eax, %eax
	psrldq	$8, %xmm0
	paddd	%xmm0, %xmm4
	movdqa	%xmm4, %xmm0
	psrldq	$4, %xmm0
	paddd	%xmm0, %xmm4
	movd	%xmm4, %esi
	jmp	printf
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
	.comm	arr.2914,400000000,32
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 16
.LC1:
	.long	4
	.long	4
	.long	4
	.long	4
	.align 16
.LC2:
	.long	1
	.long	1
	.long	1
	.long	1
	.ident	"GCC: (GNU) 9.2.1 20190827 (Red Hat 9.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
