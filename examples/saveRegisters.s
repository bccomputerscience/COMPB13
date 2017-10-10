# Eddie Rangel
# saveRegisters.s


    .text
    .globl main
    .type main, @function

main:

    pushq   %rbp        # save caller's frame pointer
    movq    %rsp, %rbp  # establish our frame pointer

    pushq   %rbx        # must save registers
    pushq   %r12
    pushq   %r13
    pushq   %r14
    pushq   %r15

    movb    $0x12, %bl  # using the registers
    movw    $0xabcd, %r12w
    movl    $0x1234abcd, %r12d
    movq    $0xbcda, %r14
    movq    $0x9876, %r15

    popq    %r15        # restore registers
    popq    %r14
    popq    %r13
    popq    %r12
    popq    %rbx

    movl    $0, %eax    # return 0

    popq    %rbp        # restore callers frame pointer
    ret                 # return to caller