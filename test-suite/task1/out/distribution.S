	.file	"loopdistribution.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"a[%d]: %d\n"
.LC1:
	.string	"b[%d]: %d\n"
	.text
	.p2align 4
	.globl	run_loop_distribution
	.type	run_loop_distribution, @function
run_loop_distribution:
.LFB22:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L2:
	movl	%ebx, %esi
	movl	$1024, %edx
	movl	$.LC0, %edi
	xorl	%eax, %eax
	call	printf
	movl	%ebx, %esi
	movl	$2048, %edx
	xorl	%eax, %eax
	movl	$.LC1, %edi
	addl	$1, %ebx
	call	printf
	cmpl	$1000000, %ebx
	jne	.L2
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE22:
	.size	run_loop_distribution, .-run_loop_distribution
	.ident	"GCC: (GNU) 9.2.1 20190827 (Red Hat 9.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
