	.file	"nullpointerchecks.c"
	.text
	.p2align 4
	.globl	run_delete_null_checks
	.type	run_delete_null_checks, @function
run_delete_null_checks:
.LFB22:
	.cfi_startproc
	movl	$11, %edi
	jmp	raise
	.cfi_endproc
.LFE22:
	.size	run_delete_null_checks, .-run_delete_null_checks
	.ident	"GCC: (GNU) 9.2.1 20190827 (Red Hat 9.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
