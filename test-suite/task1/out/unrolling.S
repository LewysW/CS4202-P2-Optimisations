	.file	"loopunrolling.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"%d\n"
	.text
	.p2align 4
	.globl	run_loop_unrolling
	.type	run_loop_unrolling, @function
run_loop_unrolling:
.LFB22:
	.cfi_startproc
	movl	$a.2887, %eax
	movdqa	.LC0(%rip), %xmm5
	movdqa	.LC1(%rip), %xmm2
	leaq	400000000(%rax), %rdx
.L2:
	movdqa	%xmm5, %xmm1
	movdqa	%xmm5, %xmm3
	subq	$-128, %rax
	paddd	%xmm2, %xmm1
	pmuludq	%xmm5, %xmm3
	movdqa	%xmm1, %xmm7
	psrlq	$32, %xmm5
	movdqa	%xmm1, %xmm6
	pmuludq	%xmm1, %xmm7
	pmuludq	%xmm5, %xmm5
	paddd	%xmm2, %xmm6
	psrlq	$32, %xmm1
	movdqa	%xmm6, %xmm11
	movdqa	%xmm6, %xmm12
	pmuludq	%xmm1, %xmm1
	pmuludq	%xmm6, %xmm12
	paddd	%xmm2, %xmm11
	pshufd	$8, %xmm3, %xmm4
	psrlq	$32, %xmm6
	pmuludq	%xmm6, %xmm6
	pshufd	$8, %xmm5, %xmm0
	pshufd	$8, %xmm7, %xmm8
	punpckldq	%xmm0, %xmm4
	pshufd	$8, %xmm1, %xmm9
	movdqa	%xmm11, %xmm1
	movaps	%xmm4, -128(%rax)
	movdqa	%xmm11, %xmm4
	pmuludq	%xmm11, %xmm1
	psrlq	$32, %xmm11
	paddd	%xmm2, %xmm4
	pmuludq	%xmm11, %xmm11
	movdqa	%xmm4, %xmm5
	punpckldq	%xmm9, %xmm8
	paddd	%xmm2, %xmm5
	pshufd	$8, %xmm6, %xmm14
	movdqa	%xmm4, %xmm6
	movaps	%xmm8, -112(%rax)
	pmuludq	%xmm4, %xmm6
	psrlq	$32, %xmm4
	movdqa	%xmm5, %xmm10
	pmuludq	%xmm4, %xmm4
	paddd	%xmm2, %xmm10
	pshufd	$8, %xmm12, %xmm13
	movdqa	%xmm10, %xmm15
	punpckldq	%xmm14, %xmm13
	pshufd	$8, %xmm1, %xmm3
	pshufd	$8, %xmm11, %xmm0
	movdqa	%xmm5, %xmm11
	paddd	%xmm2, %xmm15
	movaps	%xmm13, -96(%rax)
	pmuludq	%xmm5, %xmm11
	psrlq	$32, %xmm5
	punpckldq	%xmm0, %xmm3
	pmuludq	%xmm5, %xmm5
	pshufd	$8, %xmm6, %xmm7
	movdqa	%xmm15, %xmm6
	movaps	%xmm3, -80(%rax)
	pshufd	$8, %xmm4, %xmm8
	pmuludq	%xmm15, %xmm6
	movdqa	%xmm10, %xmm4
	pmuludq	%xmm10, %xmm4
	psrlq	$32, %xmm10
	punpckldq	%xmm8, %xmm7
	pmuludq	%xmm10, %xmm10
	movaps	%xmm7, -64(%rax)
	pshufd	$8, %xmm11, %xmm12
	pshufd	$8, %xmm5, %xmm13
	movdqa	%xmm15, %xmm5
	psrlq	$32, %xmm15
	pshufd	$8, %xmm6, %xmm7
	punpckldq	%xmm13, %xmm12
	pmuludq	%xmm15, %xmm15
	pshufd	$8, %xmm4, %xmm1
	movaps	%xmm12, -48(%rax)
	paddd	%xmm2, %xmm5
	pshufd	$8, %xmm10, %xmm0
	punpckldq	%xmm0, %xmm1
	movaps	%xmm1, -32(%rax)
	pshufd	$8, %xmm15, %xmm8
	punpckldq	%xmm8, %xmm7
	movaps	%xmm7, -16(%rax)
	cmpq	%rax, %rdx
	jne	.L2
	movl	$a.2887+200000000, %ecx
	movl	$.LC2, %edi
	xorl	%eax, %eax
	movl	(%rcx), %esi
	jmp	printf
	.cfi_endproc
.LFE22:
	.size	run_loop_unrolling, .-run_loop_unrolling
	.local	a.2887
	.comm	a.2887,400000000,32
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
	.ident	"GCC: (GNU) 9.2.1 20190827 (Red Hat 9.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
