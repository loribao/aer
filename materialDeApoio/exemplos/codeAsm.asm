;Compile e Link 
;nasm -f elf codeAsm.asm
;ld -s -o executavel codeAsm.o


section .text
	global _start

section .data
	msg db  'Estude Assembly!',0xa 	; a mensagem "DATA"
	len equ $ - msg         	;tamanho do texto

section .text

_start:

    mov rdx,len ;tamanho da mensagem
    mov rcx,msg ;mensagem para ser escrita
    mov rbx,0x1   ;descricao (stdout)
    mov rax,0x4   ;Numero da system call (sys_write)
    int 0x80    ;call kernel

; Exit via kernel:

    mov rbx,0   ;process' exit code
    mov rax,1   ;system call number (sys_exit)
    int 0x80    ;call kernel
