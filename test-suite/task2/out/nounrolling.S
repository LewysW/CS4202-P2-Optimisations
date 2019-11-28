	.file	"loopunrolling.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC9:
	.string	"%d\n"
	.text
	.p2align 4
	.globl	run_loop_unrolling
	.type	run_loop_unrolling, @function
run_loop_unrolling:
.LFB22:
	.cfi_startproc
	movdqa	.LC0(%rip), %xmm8
	movl	$a.2886, %eax
	movdqa	.LC1(%rip), %xmm14
	movdqa	.LC2(%rip), %xmm13
	leaq	400000000(%rax), %rdx
	movdqa	.LC3(%rip), %xmm12
	movdqa	.LC4(%rip), %xmm11
	movdqa	.LC5(%rip), %xmm10
	movdqa	.LC6(%rip), %xmm9
	.p2align 4,,10
	.p2align 3
.L2:
	movdqa	%xmm8, %xmm0
	subq	$-128, %rax
	paddd	%xmm14, %xmm8
	movdqa	.LC7(%rip), %xmm15
	movdqa	%xmm0, %xmm2
	movdqa	%xmm0, %xmm1
	movdqa	%xmm0, %xmm3
	psrlq	$32, %xmm2
	pmuludq	%xmm0, %xmm1
	paddd	%xmm13, %xmm3
	pmuludq	%xmm2, %xmm2
	movdqa	%xmm0, %xmm5
	paddd	%xmm0, %xmm15
	paddd	%xmm11, %xmm5
	pshufd	$8, %xmm1, %xmm1
	pshufd	$8, %xmm2, %xmm2
	punpckldq	%xmm2, %xmm1
	movdqa	%xmm3, %xmm2
	pmuludq	%xmm3, %xmm2
	psrlq	$32, %xmm3
	pmuludq	%xmm3, %xmm3
	pshufd	$8, %xmm2, %xmm2
	pshufd	$8, %xmm3, %xmm3
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm0, %xmm3
	paddd	%xmm12, %xmm3
	movdqa	%xmm3, %xmm4
	pmuludq	%xmm3, %xmm4
	psrlq	$32, %xmm3
	pmuludq	%xmm3, %xmm3
	pshufd	$8, %xmm4, %xmm4
	pshufd	$8, %xmm3, %xmm3
	punpckldq	%xmm3, %xmm4
	movdqa	%xmm5, %xmm3
	pmuludq	%xmm5, %xmm3
	psrlq	$32, %xmm5
	pmuludq	%xmm5, %xmm5
	pshufd	$8, %xmm3, %xmm3
	pshufd	$8, %xmm5, %xmm5
	punpckldq	%xmm5, %xmm3
	movdqa	%xmm0, %xmm5
	paddd	%xmm10, %xmm5
	movdqa	%xmm5, %xmm7
	pmuludq	%xmm5, %xmm7
	psrlq	$32, %xmm5
	pmuludq	%xmm5, %xmm5
	pshufd	$8, %xmm7, %xmm7
	pshufd	$8, %xmm5, %xmm5
	punpckldq	%xmm5, %xmm7
	movdqa	%xmm0, %xmm5
	paddd	.LC8(%rip), %xmm0
	paddd	%xmm9, %xmm5
	movdqa	%xmm5, %xmm6
	pmuludq	%xmm5, %xmm6
	psrlq	$32, %xmm5
	pmuludq	%xmm5, %xmm5
	pshufd	$8, %xmm6, %xmm6
	pshufd	$8, %xmm5, %xmm5
	punpckldq	%xmm5, %xmm6
	movdqa	%xmm15, %xmm5
	pmuludq	%xmm15, %xmm5
	psrlq	$32, %xmm15
	pmuludq	%xmm15, %xmm15
	pshufd	$8, %xmm5, %xmm5
	pshufd	$8, %xmm15, %xmm15
	punpckldq	%xmm15, %xmm5
	movdqa	%xmm0, %xmm15
	pmuludq	%xmm0, %xmm15
	psrlq	$32, %xmm0
	pmuludq	%xmm0, %xmm0
	pshufd	$8, %xmm15, %xmm15
	pshufd	$8, %xmm0, %xmm0
	punpckldq	%xmm0, %xmm15
	movdqa	%xmm1, %xmm0
	punpckhdq	%xmm7, %xmm1
	punpckldq	%xmm7, %xmm0
	movdqa	%xmm2, %xmm7
	punpckhdq	%xmm6, %xmm2
	punpckldq	%xmm6, %xmm7
	movdqa	%xmm4, %xmm6
	punpckhdq	%xmm5, %xmm4
	punpckldq	%xmm5, %xmm6
	movdqa	%xmm3, %xmm5
	punpckhdq	%xmm15, %xmm3
	punpckldq	%xmm15, %xmm5
	movdqa	%xmm0, %xmm15
	punpckhdq	%xmm6, %xmm0
	punpckldq	%xmm6, %xmm15
	movdqa	%xmm1, %xmm6
	punpckhdq	%xmm4, %xmm1
	punpckldq	%xmm4, %xmm6
	movdqa	%xmm7, %xmm4
	punpckhdq	%xmm5, %xmm7
	punpckldq	%xmm5, %xmm4
	movdqa	%xmm2, %xmm5
	punpckhdq	%xmm3, %xmm2
	punpckldq	%xmm3, %xmm5
	movdqa	%xmm15, %xmm3
	punpckhdq	%xmm4, %xmm15
	punpckldq	%xmm4, %xmm3
	movaps	%xmm15, -112(%rax)
	movaps	%xmm3, -128(%rax)
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm7, %xmm0
	movaps	%xmm0, -80(%rax)
	movdqa	%xmm6, %xmm0
	punpckldq	%xmm7, %xmm3
	punpckhdq	%xmm5, %xmm6
	punpckldq	%xmm5, %xmm0
	movaps	%xmm3, -96(%rax)
	movaps	%xmm0, -64(%rax)
	movdqa	%xmm1, %xmm0
	punpckhdq	%xmm2, %xmm1
	punpckldq	%xmm2, %xmm0
	movaps	%xmm6, -48(%rax)
	movaps	%xmm0, -32(%rax)
	movaps	%xmm1, -16(%rax)
	cmpq	%rax, %rdx
	jne	.L2
	movl	$a.2886+200000000, %eax
	movl	(%rax), %esi
	movl	$.LC9, %edi
	xorl	%eax, %eax
	jmp	printf
	.cfi_endproc
.LFE22:
	.size	run_loop_unrolling, .-run_loop_unrolling
	.local	a.2886
	.comm	a.2886,400000000,32
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	0
	.long	8
	.long	16
	.long	24
	.align 16
.LC1:
	.long	32
	.long	32
	.long	32
	.long	32
	.align 16
.LC2:
	.long	1
	.long	1
	.long	1
	.long	1
	.align 16
.LC3:
	.long	2
	.long	2
	.long	2
	.long	2
	.align 16
.LC4:
	.long	3
	.long	3
	.long	3
	.long	3
	.align 16
.LC5:
	.long	4
	.long	4
	.long	4
	.long	4
	.align 16
.LC6:
	.long	5
	.long	5
	.long	5
	.long	5
	.align 16
.LC7:
	.long	6
	.long	6
	.long	6
	.long	6
	.align 16
.LC8:
	.long	7
	.long	7
	.long	7
	.long	7
	.ident	"GCC: (GNU) 9.2.1 20190827 (Red Hat 9.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
