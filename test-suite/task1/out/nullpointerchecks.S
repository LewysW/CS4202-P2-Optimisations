	.file	"nullpointerchecks.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%p\n"
	.text
	.p2align 4
	.globl	run_delete_null_checks
	.type	run_delete_null_checks, @function
run_delete_null_checks:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$4000000, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	malloc
	movq	%rax, %rbx
	leaq	4000000(%rax), %rbp
	.p2align 4,,10
	.p2align 3
.L3:
	testq	%rbx, %rbx
	je	.L2
	movq	%rbx, %rsi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	call	printf
.L2:
	addq	$4, %rbx
	cmpq	%rbp, %rbx
	jne	.L3
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE22:
	.size	run_delete_null_checks, .-run_delete_null_checks
	.ident	"GCC: (GNU) 9.2.1 20190827 (Red Hat 9.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
