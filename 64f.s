	.file	"64f.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$0, -16(%rbp)
	movq	$1, -8(%rbp)
	jmp	.L2
.L3:
	movl	$1, %eax
	cqto
	idivq	-8(%rbp)
	addq	%rax, -16(%rbp)
	incq	-8(%rbp)
.L2:
	cmpq	$999999, -8(%rbp)
	jle	.L3
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 16.1.1 20260430"
	.section	.note.GNU-stack,"",@progbits
