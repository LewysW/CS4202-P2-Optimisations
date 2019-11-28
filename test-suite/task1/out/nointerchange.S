	.file	"loopinterchange.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"%d\n"
	.text
	.p2align 4
	.globl	run_loop_interchange
	.type	run_loop_interchange, @function
run_loop_interchange:
.LFB22:
	.cfi_startproc
	movdqa	.LC0(%rip), %xmm2
	movdqa	.LC1(%rip), %xmm3
	movl	$num.2887, %edx
	movdqa	.LC2(%rip), %xmm5
.L2:
	movdqa	%xmm2, %xmm4
	movq	%rdx, %rax
	paddd	%xmm5, %xmm2
	pxor	%xmm1, %xmm1
	leaq	400000000(%rdx), %rcx
.L3:
	movdqa	%xmm1, %xmm0
	addq	$40000, %rax
	paddd	%xmm3, %xmm1
	paddd	%xmm4, %xmm0
	movaps	%xmm0, -40000(%rax)
	cmpq	%rcx, %rax
	jne	.L3
	addq	$16, %rdx
	cmpq	$num.2887+40000, %rdx
	jne	.L2
	movl	$num.2887+200010000, %eax
	movl	(%rax), %esi
	movl	$.LC3, %edi
	xorl	%eax, %eax
	jmp	printf
	.cfi_endproc
.LFE22:
	.size	run_loop_interchange, .-run_loop_interchange
	.local	num.2887
	.comm	num.2887,400000000,32
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 16
.LC1:
	.long	1
	.long	1
	.long	1
	.long	1
	.align 16
.LC2:
	.long	4
	.long	4
	.long	4
	.long	4
	.ident	"GCC: (GNU) 9.2.1 20190827 (Red Hat 9.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
