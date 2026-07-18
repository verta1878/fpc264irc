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
	GLOBAL fpc_ansistr_to_chararray
fpc_ansistr_to_chararray:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j9318
		mov	bx,word [bx-2]
..@j9318:
		mov	word [bp-2],bx
		mov	ax,word [bp+6]
		inc	ax
		cmp	ax,word [bp-2]
		jl	..@j9319
		jmp	..@j9320
..@j9319:
		mov	ax,word [bp+6]
		inc	ax
		mov	word [bp-2],ax
..@j9320:
		cmp	word [bp-2],0
		jg	..@j9323
		jmp	..@j9324
..@j9323:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j9324:
		mov	bx,word [bp+8]
		mov	si,word [bp-2]
		lea	ax,[bx+si]
		push	ax
		mov	ax,word [bp+6]
		inc	ax
		mov	dx,word [bp-2]
		sub	ax,dx
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
