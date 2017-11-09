# Filename: fib.s
# Developer: Eddie Rangel
# The minimum components of a C program, in assembly language
# x86-64

# Read only data

    .section    .rodata
prompt:
    .string "Enter an integer: "
getData:
    .string "%i"
display:
    .string "Fib of %i, is %i\n"
warning:
    .string "Overflow has occurred.\n"
    
# Code

	.globl	fib
	.type	fib, @function
fib:

    	pushq %rbp        # save the caller's frame pointer to the call stack
        movq %rsp, %rbp   # save stack pointer to establish our frame

        pushq	%rbx
	    subq	$24, %rsp  # Carve out space for local variables

        movl	%edi, -20(%rbp) # argument passed in 'n'
        cmpl	$0, -20(%rbp) # if n == 0
        jne	    NotZero        
        movl	$0, %eax # return 0
        jmp	    Exit

NotZero:	
    	cmpl	$1, -20(%rbp) # if n == 1
    	jne	    NotOne	
	    movl	$1, %eax # return 1
	    jmp	    Exit

NotOne:    
	    movl	-20(%rbp), %eax
	    subl	$1, %eax # n - 1
	    movl	%eax, %edi
	    call	fib # fib(n - 1)
	    movl	%eax, %ebx  # move results of fib(n - 1)
	    movl	-20(%rbp), %eax
	    subl	$2, %eax # n - 2
	    movl	%eax, %edi
	    call	fib # fib(n - 2 )        
	    addl	%ebx, %eax # fib(n - 1) + fib(n - 2)

Exit:	
	    addq	$24, %rsp   # Remove space for local variables
        popq	%rbx        
	    popq	%rbp
        ret

    .text
    .globl main
    .type main, @function

main:
        pushq %rbp        # save the caller's frame pointer to the call stack
        movq %rsp, %rbp   # save stack pointer to establish our frame
        subq	$16, %rsp   # Carve out space for local variables

	    xorl	%eax, %eax
        movl    $prompt, %edi   # prompt user
        movl    $0, %eax        # no floats
        call    printf

        leaq	-16(%rbp), %rax  # &value
        movq	%rax, %rsi
        movl    $getData, %edi  # Get user data
        movl    $0, %eax    # no floats
        call    scanf

        movl	-16(%rbp), %eax
        movl	%eax, %edi  # &value
        call	fib
        movl	%eax, -12(%rbp)
        movl	-16(%rbp), %eax
	    movl	-12(%rbp), %edx
        movl	%eax, %esi
        movl	$display, %edi
        movl	$0, %eax
        call	printf

        movl    $0, %eax     # return 0 to caller
        popq	%rbx        
	    popq	%rbp
        ret              # back to caller
