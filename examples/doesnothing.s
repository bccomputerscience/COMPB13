# Filename: doesnothing.s
# Developer: Eddie Rangel
# The minimum components of a C program, in assembly language
# program

    .text
    .globl main
    .type main, @function

main:   pushq %rbp        # save the caller's frame
        movq %rsp, %rbp   # establish our frame

        movl $0, %eax     # return 0 to caller
        movq %rbp, %rsp   # restore stack pointer
        popq %rbp         # restore caller's frame
        ret               # back to caller