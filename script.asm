; x86 Assembly

section .bss
    ;variables

section .data
    ;contants
    hello: db "Heyy, Mommy..!, 10      ; string to print, by itself does nothing
    helloLen: equ $-hello       ; length of string

section .text
    global _start        ; entry level for code

    _start:     ; program starts here
        ;instructions       ;operand
        mov rax, 1      ; system write
        mov rdi, 1      ; standard out
        mov rsi, hello      ; message to write
        mov rdx, helloLen       ; message length
        syscall     ; call kernel

        ; each program needs to end otherwhise we'll get segmentation fault

        ; end program
        mov rax, 60     ; system exit
        mov rdi,0       ; 0 error code (success)
        syscall