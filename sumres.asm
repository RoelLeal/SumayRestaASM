section .data
resultado db '0'
section .bss
resultado2 resb 1
section .text
    global _start
_start: 
; ---------------------- SUMA --------------------------------
mov eax, 2 ;REGISTRO EAX
mov ebx, 5 ;REGISTRO EAX
add eax, ebx ;SUMA EAX + EBX

add eax, 48 ;CONVERSOR
mov [resultado], eax ;RESULTADO DE SUMA

mov eax, 4
mov ebx, 1
mov ecx, resultado
mov edx, 1

int 0x80
; ---------------------- RESTA --------------------------------
mov eax, 9 ;REGISTRO EAX
mov ebx, 4 ;REGISTRO EAX

sub eax, ebx ;SUMA EAX + EBX

add eax, 48 ;CONVERSOR
mov [resultado2], eax ;RESULTADO DE SUMA

mov eax, 4
mov ebx, 1
mov ecx, resultado2
mov edx, 1

int 0x80

mov eax, 1
mov ebx, 0
int 0x80