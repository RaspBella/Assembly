%include "linux64.inc"

section .data
    text db "Hello, world!", 10, 0 ; null terminated string

section .text
    global _start

_start:
    print text
    exit
