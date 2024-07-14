.global _start

_start:
    // write
    mov $1, %rax        /* syscall number */
    mov $1, %rdi        /* stdout */
    mov $msg, %rsi	/* buffer */
    mov $len, %rdx      /* len */
    syscall

    // exit
    mov $60, %rax       /* syscall number */
    mov $0, %rdi        /* exit status */
    syscall

msg:
    .ascii "Hello World!\n"
    len = . - msg
