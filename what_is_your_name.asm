section .data
	question db "What is your name?",10
	hello db "Hello, "

section .bss
	name resb 16

section .text
	global _start

_start:
	call _print_question
	call _get_name
	call _print_hello
	call _print_name
	
	mov rax, 60
	mov rdi, 0
	syscall

_get_name:
	mov rax, 0
	mov rdi, 0
	mov rsi, name
	mov rdx, 16
	syscall
	ret

_print_question:
	mov rax, 1
	mov rdi, 1
	mov rsi, question
	mov rdx, 19
	syscall
	ret

_print_hello:
	mov rax, 1
	mov rdi, 1
	mov rsi, hello
	mov rdx, 7
	syscall
	ret

_print_name:
	mov rax, 1
	mov rdi, 1
	mov rsi, name
	mov rdx, 16
	syscall
	ret
