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
	movdqa	.LC0(%rip), %xmm2
	movdqa	.LC1(%rip), %xmm3
	leaq	400000000(%rax), %rdx
	.p2align 4,,10
	.p2align 3
.L2:
	movdqa	%xmm2, %xmm0
	addq	$16, %rax
	paddd	%xmm3, %xmm2
	movdqa	%xmm0, %xmm1
	pmuludq	%xmm0, %xmm1
	psrlq	$32, %xmm0
	pmuludq	%xmm0, %xmm0
	pshufd	$8, %xmm1, %xmm1
	pshufd	$8, %xmm0, %xmm0
	punpckldq	%xmm0, %xmm1
	movaps	%xmm1, -16(%rax)
	cmpq	%rax, %rdx
	jne	.L2
	movl	$a.2887+200000000, %eax
	movl	(%rax), %esi
	movl	$.LC2, %edi
	xorl	%eax, %eax
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
