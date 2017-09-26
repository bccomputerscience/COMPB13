# Filename: miniassembly.s
# Developer: Eddie Rangel
# The minimum components of a C program, in assembly language
# x86

    .text
    .globl main
    .type main, @function

main:   pushl %rbp        # save the caller's frame pointer to the call stack
        movl %rsp, %rbp   # save stack pointer to establish our frame

        movl $0, %eax     # return 0 to caller
        movl %rbp, %rsp   # restore stack pointer

        popl %rbp         # popped from the call stack. restore caller's frame pointer
        ret               # back to caller