# Filename: miniassembly.s
# Developer: Eddie Rangel
# The minimum components of a C program, in assembly language
# x86-64

    .text
    .globl main
    .type main, @function

main:   pushq %rbp        # save the caller's frame pointer to the call stack
        movq %rsp, %rbp   # save stack pointer to establish our frame

        movl $0, %eax     # return 0 to caller
        movq %rbp, %rsp   # restore stack pointer

        popq %rbp         # popped from the call stack. restore caller's frame pointer
        ret               # back to caller