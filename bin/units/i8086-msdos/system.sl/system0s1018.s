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
	GLOBAL SYSTEM_$$_FILEREADFUNC$TEXTREC
SYSTEM_$$_FILEREADFUNC$TEXTREC:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		push	word [bx]
		mov	bx,word [bp+4]
		push	word [bx+14]
		mov	bx,word [bp+4]
		mov	ax,word [bx+6]
		cwd
		push	dx
		push	ax
		call	SYSTEM_$$_DO_READ$WORD$POINTER$LONGINT$$LONGINT
		mov	bx,word [bp+4]
		mov	word [bx+12],ax
		mov	bx,word [bp+4]
		mov	word [bx+10],0
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_DO_READ$WORD$POINTER$LONGINT$$LONGINT
