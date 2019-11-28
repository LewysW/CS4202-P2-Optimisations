	.file	"crossjumping.c"
	.text
	.section	.rodata
.LC0:
	.string	"Result: %d\n, Sum: %d\n"
	.text
	.globl	run_cross_jumping
	.type	run_cross_jumping, @function
run_cross_jumping:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	leaq	-28(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L5:
	movl	-4(%rbp), %eax
	cltq
	movl	arr.2824(,%rax,4), %eax
	testl	%eax, %eax
	jle	.L3
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	imull	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	movl	arr.2824(,%rax,4), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L4
.L3:
	cmpl	$0, -4(%rbp)
	jle	.L4
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cltd
	idivl	-4(%rbp)
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	movl	arr.2824(,%rax,4), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L4:
	addl	$1, -4(%rbp)
.L2:
	cmpl	$9999999, -4(%rbp)
	jle	.L5
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	run_cross_jumping, .-run_cross_jumping
	.local	arr.2824
	.comm	arr.2824,40000000,32
	.ident	"GCC: (GNU) 9.2.1 20190827 (Red Hat 9.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
