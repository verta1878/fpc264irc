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
	GLOBAL SYSUTILS_$$_INTERNALFINDCLOSE$POINTER
SYSUTILS_$$_INTERNALFINDCLOSE$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jne	..@j15569
		jmp	..@j15570
..@j15569:
		mov	ax,word [bp-2]
		push	ax
		call	DOS_$$_FINDCLOSE$SEARCHREC
		push	word [bp-2]
		mov	ax,286
		push	ax
		call	SYSTEM_$$_FREEMEM$POINTER$WORD
..@j15570:
		mov	bx,word [bp+4]
		mov	word [bx],0
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_FREEMEM$POINTER$WORD
EXTERN	DOS_$$_FINDCLOSE$SEARCHREC
