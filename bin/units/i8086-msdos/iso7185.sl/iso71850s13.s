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
	GLOBAL ISO7185_$$_GET$TYPEDFILE
ISO7185_$$_GET$TYPEDFILE:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+4]
		push	ax
		call	ISO7185_$$_EOF$TYPEDFILE$$BOOLEAN
		test	al,al
		je	..@j132
		jmp	..@j133
..@j132:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+568]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_BLOCKREAD$file$formal$INT64
..@j133:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_BLOCKREAD$file$formal$INT64
EXTERN	ISO7185_$$_EOF$TYPEDFILE$$BOOLEAN
