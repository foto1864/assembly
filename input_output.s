.global _start
.intel_syntax noprefix

.section .bss
buff:
    .skip 64

.section .text
_start:

    mov rax, 0
    mov rdi, 0
    lea rsi, [buff]
    mov rdx, 64
    syscall

    mov rax, 1
    mov rdi, 1
    lea rsi, [buff]
    mov rdx, 64
    syscall

    mov rax, 60
    mov rdi, 0
    syscall

