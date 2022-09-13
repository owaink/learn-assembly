global _start;

SYS_WRITE       equ 1
SYS_EXIT        equ 60
STDOUT          equ 1
SECTION .text

_start:
    mov         rax,    SYS_WRITE
    mov         rdi,    STDOUT
    mov         rsi,    hello
    mov         rdx,    hello_len
    syscall
    push        rax

    mov         rax,     SYS_EXIT
    pop         rdi
    sub         rdi,     hello_len
    syscall

SECTION .data

hello       db  "Hello World!", 10
hello_len   equ $-hello
