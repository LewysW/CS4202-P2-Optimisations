	.file	"loopinterchange.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"%d\n"
	.text
	.p2align 4
	.globl	run_loop_interchange
	.type	run_loop_interchange, @function
run_loop_interchange:
.LFB22:
	.cfi_startproc
	movdqa	.LC1(%rip), %xmm2
	movdqa	.LC0(%rip), %xmm4
	movl	$num.2886, %esi
	xorl	%edx, %edx
	movl	$num.2886+40000, %ecx
.L2:
	movd	%edx, %xmm5
	movq	%rsi, %rax
	movdqa	%xmm4, %xmm1
	pshufd	$0, %xmm5, %xmm3
.L3:
	movdqa	%xmm1, %xmm0
	addq	$16, %rax
	paddd	%xmm2, %xmm1
	paddd	%xmm3, %xmm0
	movaps	%xmm0, -16(%rax)
	cmpq	%rcx, %rax
	jne	.L3
	addl	$1, %edx
	addq	$40000, %rsi
	leaq	40000(%rax), %rcx
	cmpl	$10000, %edx
	jne	.L2
	movl	$num.2886+200010000, %eax
	movl	(%rax), %esi
	movl	$.LC2, %edi
	xorl	%eax, %eax
	jmp	printf
	.cfi_endproc
.LFE22:
	.size	run_loop_interchange, .-run_loop_interchange
	.local	num.2886
	.comm	num.2886,400000000,32
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
