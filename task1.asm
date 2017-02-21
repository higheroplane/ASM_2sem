;======================================

.model tiny
.code
org 100h

start:	mov ah, 09h		; ah = 09h;
	mov dx, offset output	; dx = &str;
	int 21h			; execute 21h (ax, dx) => print str
	mov ax,4c00h		; ah = 4ch;
	int 21h			; execute 21h (ax) => exit programm
.data
output	db 'Wuzzup$'

end start
