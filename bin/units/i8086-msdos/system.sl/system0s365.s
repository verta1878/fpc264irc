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
	GLOBAL fpc_shortstr_to_ansistr
fpc_shortstr_to_ansistr:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+4]
		mov	dx,word [bp+4]
		sub	dx,1
		jbe	..@j9152
		jmp	..@j9151
..@j9152:
		mov	ax,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j9150
..@j9151:
..@j9150:
		mov	word [bp+4],ax
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		mov	word [bp-2],ax
		mov	ax,word [bp+8]
		push	ax
		push	word [bp-2]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		cmp	word [bp-2],0
		jg	..@j9163
		jmp	..@j9164
..@j9163:
		mov	ax,word [bp+8]
		mov	word [bp-6],ax
		mov	ax,word [bp+6]
		mov	word [bp-4],ax
		mov	bx,word [bp-4]
		lea	ax,[bx+1]
		push	ax
		mov	bx,word [bp-6]
		mov	ax,word [bx]
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
..@j9164:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_ansistr_setlength
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
