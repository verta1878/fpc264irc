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
	GLOBAL fpc_read_text_shortstr
fpc_read_text_shortstr:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+6]
		lea	ax,[bx+1]
		push	ax
		mov	ax,word [bp+4]
		cwd
		push	dx
		push	ax
		call	SYSTEM_$$_READPCHARLEN$TEXT$PCHAR$LONGINT$$LONGINT
		mov	bx,word [bp+6]
		mov	byte [bx],al
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_READPCHARLEN$TEXT$PCHAR$LONGINT$$LONGINT
