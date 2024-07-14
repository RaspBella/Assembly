.section .data
question:
    .ascii "What is your name? (20 character limit)\n"
    question_len = . - question

name:
    .space 20
    name_len = 20

hello:
    .ascii "Hello, "
    hello_len = . - hello

.section .text
.global _start

_start:
    // write question
    mov $1, %rax                /* syscall number */
    mov $1, %rdi                /* stdout */
    lea question(%rip), %rsi    /* buffer */
    mov $question_len, %rdx     /* len */
    syscall

    // read name
    mov $0, %rax                /* syscall number */
    mov $0, %rdi                /* stdin */
    mov $100, %edx              /* maximum number of bytes */
    mov $name, %rsi             /* buffer */
    mov $name_len, %rdx         /* len */
    syscall

    // write hello
    mov $1, %rax                /* syscall number */
    mov $1, %rdi                /* stdout */
    mov $hello, %rsi            /* buffer */
    mov $hello_len, %rdx        /* len */
    syscall

    // write name
    mov $1, %rax                /* syscall number */
    mov $1, %rdi                /* stdout */
    mov $name, %rsi             /* buffer */
    mov $name_len, %rdx         /* len */
    syscall

    // exit
    mov $60, %rax               /* syscall number */
    mov $0, %rdi                /* exit status */
    syscall
