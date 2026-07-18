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
	GLOBAL STRINGS_$$_STRNEW$PCHAR$$PCHAR
STRINGS_$$_STRNEW$PCHAR$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-2],0
		cmp	word [bp+4],0
		je	..@j423
		jmp	..@j425
..@j425:
		mov	bx,word [bp+4]
		cmp	byte [bx],0
		je	..@j423
		jmp	..@j424
..@j423:
		jmp	..@j419
..@j424:
		push	word [bp+4]
		call	FPC_PCHAR_LENGTH
		inc	ax
		mov	word [bp-4],ax
		lea	ax,[bp-2]
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		cmp	word [bp-2],0
		jne	..@j434
		jmp	..@j435
..@j434:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp-2]
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j435:
..@j419:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
EXTERN	FPC_PCHAR_LENGTH
