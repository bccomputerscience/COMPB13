#   AddAndSubtractAsm.s
#   Eddie Rangel

# Stack Frame

    .equ    w, -16
    .equ    x, -12
    .equ    y, -8
    .equ    z, -4
    .equ    localSize, -16

# Read only data

    .section    .rodata
prompt:
    .string "Enter two integers: "
getData:
    .string "%i %i"
display:
    .string "sum = %i, difference = %i\n"
warning:
    .string "Overflow has occurred.\n"

# Code
    .text
    .globl main
    .type main, @function
main:
    pushq   %rbp    # save caller's base pointer
    movq    %rsp, %rbp  # establish our base pointer
    addq    $localSize, %rsp    # Carve out space for local variables

    movl    $prompt, %edi   # prompt user
    movl    $0, %eax        # no floats
    call printf

    leaq    x(%rbp), %rdx   # &x
    leaq    w(%rbp), %rsi   # &w
    movl    $getData, %edi  # Get user data
    movl    $0, %eax    # no floats
    call scanf

    movl    w(%rbp), %eax   # load w
    movl    %eax,   y(%rbp) # y = w
    movl    x(%rbp), %eax   # load x
    addl    %eax, y(%rbp)   # y = w + x
    jno     nOver1      # skip warning if no OF
    movl    $warning, %edi
    movl    $0, %eax
    call    printf

nOver1:
    movl    w(%rbp), %eax   # load w
    movl    %eax,   z(%rbp) # z = w
    movl    x(%rbp), %eax   # load x
    subl    %eax, z(%rbp)   # z = w - x
    jno     nOver2      # skip warning if no OF
    movl    $warning, %edi
    movl    $0, %eax
    call    printf

nOver2:
    movl    z(%rbp), %edx   # load z
    movl    y(%rbp), %esi   # load y
    movl    $display, %edi  # display results
    movl    $0, %eax    # no floats
    call printf

    movl    $0, %eax    # return 0 to OS
    movq    %rbp, %rsp  # restore stack pointer
    popq    %rbp        # restore caller's base pointer
    ret
