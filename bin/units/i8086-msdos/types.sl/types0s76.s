BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION text
	ALIGN 2
	GLOBAL TYPES_$$_CENTERPOINT$TRECT$$TPOINT
TYPES_$$_CENTERPOINT$TRECT$$TPOINT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		push	word [bx+2]
		push	word [bx]
		mov	bx,word [bp+4]
		push	word [bx+10]
		push	word [bx+8]
		call	TYPES_$$_AVG$LONGINT$LONGINT$$LONGINT
		mov	bx,word [bp+6]
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	bx,word [bp+4]
		push	word [bx+6]
		push	word [bx+4]
		mov	bx,word [bp+4]
		push	word [bx+14]
		push	word [bx+12]
		call	TYPES_$$_AVG$LONGINT$LONGINT$$LONGINT
		mov	bx,word [bp+6]
		mov	word [bx+4],ax
		mov	word [bx+6],dx
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TYPES_$$_AVG$LONGINT$LONGINT$$LONGINT
