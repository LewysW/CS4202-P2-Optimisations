	.file	"loopunrolling.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d\n"
	.text
	.p2align 4
	.globl	run_loop_unrolling
	.type	run_loop_unrolling, @function
run_loop_unrolling:
.LFB22:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L2:
	movl	%ebx, %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	imull	%ebx, %esi
	call	printf
	leal	1(%rbx), %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	imull	%esi, %esi
	call	printf
	leal	2(%rbx), %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	imull	%esi, %esi
	call	printf
	leal	3(%rbx), %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	imull	%esi, %esi
	call	printf
	leal	4(%rbx), %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	imull	%esi, %esi
	call	printf
	leal	5(%rbx), %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	imull	%esi, %esi
	call	printf
	leal	6(%rbx), %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	imull	%esi, %esi
	call	printf
	leal	7(%rbx), %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	imull	%esi, %esi
	addl	$8, %ebx
	call	printf
	cmpl	$1000000, %ebx
	jne	.L2
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE22:
	.size	run_loop_unrolling, .-run_loop_unrolling
	.ident	"GCC: (GNU) 9.2.1 20190827 (Red Hat 9.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
