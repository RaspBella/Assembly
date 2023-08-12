section .data
    text db "Hello, World!",10

section .text
    global _start

_start:
    mov rax, 1 ; sys call for write
    mov rdi, 1 ; stdout file descriptor
    mov rsi, text
    mov rdx, 14 ; amount of bytes in text
    syscall

    mov rax, 60 ; sys call for exit
    mov rdi, 0 ; return code for success
    syscall
