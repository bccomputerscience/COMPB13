	.file	"Decisions.c"
	.section	.rodata
.LC0:
	.string	"x is greater than y"
.LC1:
	.string	"y is greater than x"
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
	movl	$30, -8(%rbp)
	movl	$45, -4(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L2
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	jmp	.L3
.L2:
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
.L3:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.1-2ubuntu1~16.04) 5.4.1 20160904"
	.section	.note.GNU-stack,"",@progbits
