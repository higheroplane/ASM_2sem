
.model tiny
.code
org 100h

Start:	
	mov dh, X	; dh = X
	call bPrint
;----------------------------------------------
; Prints a number in bin, reversed
; Entry: DH = value to print
; Exit: None
; Desrtucts: 
;----------------------------------------------	

	mov ax, 4c00h
	int 21h

.data
X	db 12h

bPrint:	mov cx, 8	; cx = 8 (cx - counter)

Next:	mov al, dh
	and al, 128d	; al &= 128
	shr al, 7	;
	mov dl, al	; dl = al
	add dl, '0'	; dl + '0'
	mov ah, 02h	; ah = 02h //ah - int21 arg
	int 21h		; putchar
	
	shl dh, 1
	dec cx
	jcxz Stop
	jmp Next

Stop:	ret

end	Start
