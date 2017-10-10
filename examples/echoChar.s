	.file	"echoChar.c"
	.section	.rodata
.LC0:
	.string	"Enter one character: "
.LC1:
	.string	"You entered: "
.LC2:
	.string	"\n"
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
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$21, %edx
	movl	$.LC0, %esi
	movl	$1, %edi
	call	write
	leaq	-9(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	read
	movl	%eax, -16(%rbp)
	movl	$13, %edx
	movl	$.LC1, %esi
	movl	$1, %edi
	call	write
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-9(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	write
	movl	$1, %edx
	movl	$.LC2, %esi
	movl	$1, %edi
	call	write
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L3
	call	__stack_chk_fail
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
