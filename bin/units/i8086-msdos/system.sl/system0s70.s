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
	GLOBAL SYSTEM_$$_MOVECHAR0$formal$formal$SMALLINT
SYSTEM_$$_MOVECHAR0$formal$formal$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+4],0
		je	..@j746
		jmp	..@j747
..@j746:
		jmp	..@j744
..@j747:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_INDEXBYTE$formal$SMALLINT$BYTE$$SMALLINT
		mov	word [bp-2],ax
		cmp	word [bp-2],-1
		jne	..@j756
		jmp	..@j757
..@j756:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		jmp	..@j764
..@j757:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j764:
..@j744:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	SYSTEM_$$_INDEXBYTE$formal$SMALLINT$BYTE$$SMALLINT
