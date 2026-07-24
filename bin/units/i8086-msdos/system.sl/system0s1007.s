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
	GLOBAL SYSTEM_$$_DO_FILESIZE$WORD$$LONGINT
SYSTEM_$$_DO_FILESIZE$WORD$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,8
		push	word [bp+4]
		call	SYSTEM_$$_DO_FILEPOS$WORD$$LONGINT
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		push	word [bp+4]
		call	SYSTEM_$$_DO_SEEKEND$WORD$$LONGINT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		push	word [bp+4]
		push	word [bp-6]
		push	word [bp-8]
		call	SYSTEM_$$_DO_SEEK$WORD$LONGINT
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_DO_SEEK$WORD$LONGINT
EXTERN	SYSTEM_$$_DO_SEEKEND$WORD$$LONGINT
EXTERN	SYSTEM_$$_DO_FILEPOS$WORD$$LONGINT
