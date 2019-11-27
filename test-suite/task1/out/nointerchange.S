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
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$b.2889, %edi
	xorl	%edx, %edx
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	$c.2887, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	$a.2888, %ebp
	movq	%r12, %rcx
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rbp, %rsi
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movdqa	.LC1(%rip), %xmm5
	movdqa	.LC0(%rip), %xmm7
.L2:
	movd	%edx, %xmm4
	xorl	%eax, %eax
	pshufd	$0, %xmm4, %xmm3
	movdqa	%xmm7, %xmm4
	movdqa	%xmm3, %xmm6
	psrlq	$32, %xmm6
.L3:
	movdqa	%xmm4, %xmm2
	movdqa	%xmm3, %xmm0
	paddd	%xmm5, %xmm4
	movdqa	%xmm2, %xmm1
	pmuludq	%xmm2, %xmm0
	psrlq	$32, %xmm1
	pmuludq	%xmm6, %xmm1
	pshufd	$8, %xmm0, %xmm0
	pshufd	$8, %xmm1, %xmm1
	punpckldq	%xmm1, %xmm0
	movaps	%xmm0, (%rcx,%rax)
	movdqa	%xmm3, %xmm0
	paddd	%xmm2, %xmm0
	movaps	%xmm0, (%rsi,%rax)
	movdqa	%xmm3, %xmm0
	psubd	%xmm2, %xmm0
	movaps	%xmm0, (%rdi,%rax)
	addq	$16, %rax
	cmpq	$400, %rax
	jne	.L3
	addl	$1, %edx
	addq	$400, %rcx
	addq	$400, %rsi
	addq	$400, %rdi
	cmpl	$100, %edx
	jne	.L2
.L4:
	movl	$b.2889+40000, %ebx
	movq	%r12, %r15
.L8:
	leaq	-40000(%rbx), %r13
	movq	%rbp, %r14
	.p2align 4,,10
	.p2align 3
.L5:
	movl	(%r14), %esi
	imull	0(%r13), %esi
	movl	$.LC2, %edi
	xorl	%eax, %eax
	addl	(%r15), %esi
	addq	$400, %r13
	addq	$4, %r14
	movl	%esi, (%r15)
	call	printf
	cmpq	%rbx, %r13
	jne	.L5
	addq	$4, %r15
	leaq	4(%r13), %rbx
	cmpq	$b.2889+40396, %r13
	jne	.L8
	addq	$400, %rbp
	addq	$400, %r12
	cmpq	$a.2888+40000, %rbp
	jne	.L4
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE22:
	.size	run_loop_interchange, .-run_loop_interchange
	.local	b.2889
	.comm	b.2889,40000,32
	.local	a.2888
	.comm	a.2888,40000,32
	.local	c.2887
	.comm	c.2887,40000,32
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
