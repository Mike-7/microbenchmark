	.file	"32f.c"
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
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -16(%rbp)
	vmovsd	.LC1(%rip), %xmm0
	vmovsd	%xmm0, -8(%rbp)
	jmp	.L2
.L3:
	vmovsd	.LC1(%rip), %xmm0
	vdivsd	-8(%rbp), %xmm0, %xmm0
	vmovsd	-16(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -16(%rbp)
	vmovsd	-8(%rbp), %xmm1
	vmovsd	.LC1(%rip), %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%rbp)
.L2:
	vmovsd	.LC2(%rip), %xmm0
	vcomisd	-8(%rbp), %xmm0
	ja	.L3
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	0
	.long	1093567616
	.ident	"GCC: (GNU) 16.1.1 20260430"
	.section	.note.GNU-stack,"",@progbits
