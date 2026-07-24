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
	GLOBAL fpc_widechararray_to_ansistr
fpc_widechararray_to_ansistr:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	byte [bp+4],0
		jne	..@j11547
		jmp	..@j11548
..@j11547:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,word [bp+8]
		inc	ax
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_INDEXWORD$formal$SMALLINT$WORD$$SMALLINT
		mov	word [bp-2],ax
		cmp	word [bp-2],-1
		je	..@j11557
		jmp	..@j11558
..@j11557:
		mov	ax,word [bp+8]
		inc	ax
		mov	word [bp-2],ax
..@j11558:
		jmp	..@j11561
..@j11548:
		mov	ax,word [bp+8]
		inc	ax
		mov	word [bp-2],ax
..@j11561:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,word [bp+12]
		push	ax
		push	word [bp+6]
		push	word [bp-2]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER]
		call	ax
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	SYSTEM_$$_INDEXWORD$formal$SMALLINT$WORD$$SMALLINT
