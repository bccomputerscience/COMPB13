	.file	"addProg.c"
	.section	.rodata
.LC0:
	.string	"Enter tow integers: "
.LC1:
	.string	"%i %i"
.LC2:
	.string	"%i + %i = %i\n"
.LC3:
	.string	"*** Overflow occurred ***"
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
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leaq	-20(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %eax
	leaq	-16(%rbp), %rdx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	sumInts
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	cmpl	$0, -12(%rbp)
	je	.L2
	movl	$.LC3, %edi
	call	puts
.L2:
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L4
	call	__stack_chk_fail
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
