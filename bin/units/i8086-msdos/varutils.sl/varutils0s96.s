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
	GLOBAL VARUTILS_$$_SAFEARRAYLOCK$PVARARRAY$$HRESULT
VARUTILS_$$_SAFEARRAYLOCK$PVARARRAY$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+4]
		call	VARUTILS_$$_CHECKVARARRAY$PVARARRAY$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jne	..@j5496
		cmp	ax,0
		jne	..@j5496
		jmp	..@j5497
..@j5496:
		jmp	..@j5490
..@j5497:
		mov	bx,word [bp+4]
		lea	ax,[bx+8]
		push	ax
		call	SYSTEM_$$_INTERLOCKEDINCREMENT$LONGINT$$LONGINT
..@j5490:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_INTERLOCKEDINCREMENT$LONGINT$$LONGINT
EXTERN	VARUTILS_$$_CHECKVARARRAY$PVARARRAY$$HRESULT
