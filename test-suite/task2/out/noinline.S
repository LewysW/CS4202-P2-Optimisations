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
.LFB6:
	.cfi_startproc
	pxor	%xmm5, %xmm5
	movdqa	.LC1(%rip), %xmm2
	pcmpeqd	%xmm7, %xmm7
	movl	$arr.2848, %eax
	movdqa	%xmm5, %xmm8
	movq	%rax, %xmm6
	xorl	%eax, %eax
	movdqa	.LC0(%rip), %xmm4
	pcmpgtd	%xmm2, %xmm8
	punpcklqdq	%xmm6, %xmm6
	movdqa	%xmm5, %xmm3
	movdqa	.LC2(%rip), %xmm9
	.p2align 4,,10
	.p2align 3
.L2:
	movdqa	%xmm4, %xmm10
	movdqa	%xmm3, %xmm0
	movdqa	%xmm8, %xmm11
	addl	$1, %eax
	movdqa	%xmm10, %xmm1
	movdqa	%xmm3, %xmm12
	movdqa	%xmm8, %xmm13
	punpckldq	%xmm10, %xmm1
	paddd	%xmm2, %xmm4
	pcmpgtd	%xmm1, %xmm0
	pmuludq	%xmm1, %xmm11
	pmuludq	%xmm2, %xmm1
	pmuludq	%xmm2, %xmm0
	paddq	%xmm11, %xmm0
	movdqa	%xmm3, %xmm11
	pcmpgtd	%xmm10, %xmm11
	psllq	$32, %xmm0
	paddq	%xmm0, %xmm1
	movdqa	%xmm10, %xmm0
	paddq	%xmm6, %xmm1
	punpckldq	%xmm11, %xmm0
	pxor	%xmm0, %xmm1
	movdqa	%xmm10, %xmm0
	punpckhdq	%xmm10, %xmm0
	punpckhdq	%xmm11, %xmm10
	pxor	%xmm7, %xmm1
	pcmpgtd	%xmm0, %xmm12
	pmuludq	%xmm0, %xmm13
	pmuludq	%xmm2, %xmm0
	pmuludq	%xmm2, %xmm12
	paddq	%xmm13, %xmm12
	psllq	$32, %xmm12
	paddq	%xmm12, %xmm0
	paddq	%xmm6, %xmm0
	pxor	%xmm10, %xmm0
	pxor	%xmm7, %xmm0
	shufps	$136, %xmm0, %xmm1
	pand	%xmm9, %xmm1
	paddd	%xmm1, %xmm5
	cmpl	$25000000, %eax
	jne	.L2
	movdqa	%xmm5, %xmm0
	movl	$.LC3, %edi
	xorl	%eax, %eax
	psrldq	$8, %xmm0
	paddd	%xmm0, %xmm5
	movdqa	%xmm5, %xmm0
	psrldq	$4, %xmm0
	paddd	%xmm0, %xmm5
	movd	%xmm5, %esi
	jmp	printf
	.cfi_endproc
.LFE6:
	.size	run_inline_functions, .-run_inline_functions
	.local	arr.2848
	.comm	arr.2848,400000000,32
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
