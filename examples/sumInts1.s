	.file	"sumInts1.c"
	.text
	.globl	sumInts
	.type	sumInts, @function
sumInts:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -4(%rbp)
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	cmpl	$0, -20(%rbp)
	jle	.L2
	cmpl	$0, -24(%rbp)
	jle	.L2
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.L3
.L2:
	cmpl	$0, -20(%rbp)
	jns	.L4
	cmpl	$0, -24(%rbp)
	jns	.L4
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L4
.L3:
	movl	$1, -4(%rbp)
.L4:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	sumInts, .-sumInts
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
