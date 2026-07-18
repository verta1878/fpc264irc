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
	GLOBAL SYSUTILS_$$_FILEAGE$RAWBYTESTRING$$LONGINT
SYSUTILS_$$_FILEAGE$RAWBYTESTRING$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,8
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$SMALLINT$$WORD
		mov	dx,0
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		cmp	dx,-1
		jne	..@j15369
		cmp	ax,-1
		jne	..@j15369
		jmp	..@j15370
..@j15369:
		push	word [bp-8]
		call	SYSUTILS_$$_FILEGETDATE$WORD$$LONGINT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		push	word [bp-8]
		call	SYSUTILS_$$_FILECLOSE$WORD
		jmp	..@j15377
..@j15370:
		mov	word [bp-4],-1
		mov	word [bp-2],-1
..@j15377:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSUTILS_$$_FILECLOSE$WORD
EXTERN	SYSUTILS_$$_FILEGETDATE$WORD$$LONGINT
EXTERN	SYSUTILS_$$_FILEOPEN$RAWBYTESTRING$SMALLINT$$WORD
