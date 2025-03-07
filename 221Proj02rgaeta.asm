Title 221 Project 02 (221Proj02rgaeta.asm)

; CSC221 Project 02
; description: calculate and display the first several Fibonacci numbers
; author: Ricardo Gaeta
; date: 3/7/2025

; Include the libraries and definitions
INCLUDE C:\Irvine\Irvine32.inc
INCLUDELIB C:\Irvine\Irvine32.lib
INCLUDELIB C:\Irvine\Kernel32.lib
INCLUDELIB C:\Irvine\User32.lib

.code
main PROC
    ; make F0 = 0
    mov eax, 0
    call WriteDec      ; print EAX (0)
    call Crlf          ; new line

    ; make F1 = 1
    mov ebx, 1
    mov eax, ebx       ; copy ebx -> eax
    call WriteDec      ; print EAX (1)
    call Crlf          ; new line

    mov eax, 0         ; reset eax to F0 for calc

    ; calc F2 = F0 + F1
    mov ecx, eax       ; copy F0
    add ecx, ebx       ; add F1 to F0
    mov eax, ecx       ; ready print of F2
    call WriteDec      ; print EAX
    call Crlf          ; new line
    mov eax, ebx       ; shift first factor
    mov ebx, ecx       ; shift second factor

    ; calc F3 = F1 + F2
    mov ecx, eax       ; copy F1
    add ecx, ebx       ; add F2 to F1
    mov eax, ecx       ; ready print of F3
    call WriteDec      ; print EAX
    call Crlf          ; new line
    mov eax, ebx       ; shift first factor
    mov ebx, ecx       ; shift second factor

    ; calc F4 = F2 + F3
    mov ecx, eax       ; copy F2
    add ecx, ebx       ; add F3 to F2
    mov eax, ecx       ; ready print of F4
    call WriteDec      ; print EAX
    call Crlf          ; new line
    mov eax, ebx       ; shift first factor
    mov ebx, ecx       ; shift second factor

    ; calc F5 = F3 + F4
    mov ecx, eax       ; copy F3
    add ecx, ebx       ; add F4 to F3
    mov eax, ecx       ; ready print of F5
    call WriteDec      ; print EAX
    call Crlf          ; new line
    mov eax, ebx       ; shift first factor
    mov ebx, ecx       ; shift second factor

    ; calc F6 = F4 + F5
    mov ecx, eax       ; copy F4
    add ecx, ebx       ; add F5 to F4
    mov eax, ecx       ; ready print of F6
    call WriteDec      ; print EAX
    call Crlf          ; new line
    mov eax, ebx       ; shift first factor
    mov ebx, ecx       ; shift second factor

    ; calc F7 = F5 + F6
    mov ecx, eax       ; copy F5
    add ecx, ebx       ; add F6 to F5
    mov eax, ecx       ; ready print of F7
    call WriteDec      ; print EAX
    call Crlf          ; new line

    exit
main ENDP
END main