	.file	"nullpointerchecks.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d\n"
.LC1:
	.string	"ptrptr[0]: %d\n"
	.text
	.p2align 4
	.globl	run_delete_null_checks
	.type	run_delete_null_checks, @function
run_delete_null_checks:
.LFB22:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$4000000, %edi
	movl	$1000000, %ebx
	call	malloc
	movl	$42, (%rax)
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L2:
	subl	$1, %ebx
	je	.L10
.L3:
	movl	0, %esi
	testl	%esi, %esi
	je	.L2
	xorl	%eax, %eax
	movl	$.LC0, %edi
	call	printf
	subl	$1, %ebx
	jne	.L3
.L10:
	movl	$42, %esi
	movl	$.LC1, %edi
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	printf
	.cfi_endproc
.LFE22:
	.size	run_delete_null_checks, .-run_delete_null_checks
	.ident	"GCC: (GNU) 9.2.1 20190827 (Red Hat 9.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
