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
	GLOBAL SYSUTILS_$$_STRNEW$PCHAR$$PCHAR
SYSUTILS_$$_STRNEW$PCHAR$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word [bp-2],0
		cmp	word [bp+4],0
		je	..@j12821
		jmp	..@j12823
..@j12823:
		mov	bx,word [bp+4]
		cmp	byte [bx],0
		je	..@j12821
		jmp	..@j12822
..@j12821:
		jmp	..@j12817
..@j12822:
		push	word [bp+4]
		call	FPC_PCHAR_LENGTH
		inc	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-6],cx
		mov	word [bp-4],ax
		push	word [bp-4]
		push	word [bp-6]
		call	SYSUTILS_$$_STRALLOC$LONGWORD$$PCHAR
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jne	..@j12832
		jmp	..@j12833
..@j12832:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp-2]
		push	ax
		push	word [bp-6]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j12833:
..@j12817:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	SYSUTILS_$$_STRALLOC$LONGWORD$$PCHAR
EXTERN	FPC_PCHAR_LENGTH
