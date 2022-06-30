; Felix's First Ever Assembly Program!!!
global _start

section .text

_start:
    ; write to stdout the message
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, msglen
    syscall

    ; exit
    mov rax, 60
    mov rdi, 0
    syscall

section .rodata
    msg: db "Hello, this is Felix in x86 assembly!!!", 10
    msglen: equ $ - msg
