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
	GLOBAL SYSUTILS_$$_FILECREATE$RAWBYTESTRING$$WORD
SYSUTILS_$$_FILECREATE$RAWBYTESTRING$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+4]
		lea	ax,[bp-2]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,18
		push	ax
		call	SYSUTILS_$$_OPENFILE$RAWBYTESTRING$WORD$WORD$WORD$$LONGINT
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		jne	..@j15196
		jmp	..@j15197
..@j15196:
		mov	word [bp-2],-1
..@j15197:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSUTILS_$$_OPENFILE$RAWBYTESTRING$WORD$WORD$WORD$$LONGINT
