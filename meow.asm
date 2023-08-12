section .data
    message db "Hello, everynyan :3c!", 10

section .text
    global _start

_start:
    mov rax, 1 ; sys call for write
    mov rdi, 1 ; stdout file descripter
    mov rsi, message
    mov rdx, 22 ; amount of bytes in message
    syscall

    mov rax, 60 ; sys call for exit
    mov rdi, 0 ; return code for success
    syscall
