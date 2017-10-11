	.file	"mystack.c"
	.comm	theStack,400,32
	.globl	stackPointer
	.data
	.align 8
	.type	stackPointer, @object
	.size	stackPointer, 8
stackPointer:
	.quad	theStack+400
	.section	.rodata
	.align 8
.LC0:
	.string	"Starting point for stack pointer: %p "
	.align 8
.LC1:
	.string	" and first value is %i, second value is %i, and third value is %i\n"
	.align 8
.LC2:
	.string	"Now stack pointer is pointed at: %p "
	.align 8
.LC3:
	.string	"The stack pointer is ends at: %p "
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
	movl	$14, -20(%rbp)
	movl	$29, -16(%rbp)
	movl	$43, -12(%rbp)
	movq	stackPointer(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	push
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	push
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	push
	movl	$100, -20(%rbp)
	movl	$200, -16(%rbp)
	movl	$300, -12(%rbp)
	movq	stackPointer(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	leaq	-20(%rbp), %rax
	movq	%rax, %rdi
	call	pop
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	pop
	leaq	-12(%rbp), %rax
	movq	%rax, %rdi
	call	pop
	movq	stackPointer(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L3
	call	__stack_chk_fail
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	push
	.type	push, @function
push:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	stackPointer(%rip), %rax
	subq	$4, %rax
	movq	%rax, stackPointer(%rip)
	movq	stackPointer(%rip), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	push, .-push
	.globl	pop
	.type	pop, @function
pop:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	stackPointer(%rip), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	stackPointer(%rip), %rax
	addq	$4, %rax
	movq	%rax, stackPointer(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	pop, .-pop
	.ident	"GCC: (Ubuntu 5.4.1-2ubuntu1~16.04) 5.4.1 20160904"
	.section	.note.GNU-stack,"",@progbits
