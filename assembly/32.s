	.file	"32.c"
# GNU C23 (GCC) version 16.1.1 20260430 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 16.1.1 20260430, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.4.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -fno-tree-vectorize
	.text
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
# 32.c:7:     for (volatile int32_t i = 0; i < 1000000; i++) {
	movl	$0, -4(%rsp)	#, i
# 32.c:7:     for (volatile int32_t i = 0; i < 1000000; i++) {
	cmpl	$999999, -4(%rsp)	#, i
	jg	.L2	#,
	.p2align 4
	.p2align 4
	.p2align 3
.L3:
# 32.c:7:     for (volatile int32_t i = 0; i < 1000000; i++) {
	addl	$1, -4(%rsp)	#, i
# 32.c:7:     for (volatile int32_t i = 0; i < 1000000; i++) {
	cmpl	$999999, -4(%rsp)	#, i
	jle	.L3	#,
.L2:
# 32.c:11: }
	xorl	%eax, %eax	#
	ret	
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.ident	"GCC: (GNU) 16.1.1 20260430"
	.section	.note.GNU-stack,"",@progbits
