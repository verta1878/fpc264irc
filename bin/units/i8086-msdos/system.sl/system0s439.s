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
	GLOBAL fpc_pwidechar_to_unicodestr
fpc_pwidechar_to_unicodestr:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_unicodestr_assign
		cmp	word [bp+4],0
		je	..@j11045
		jmp	..@j11046
..@j11045:
		jmp	..@j11039
..@j11046:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_INDEXWORD$formal$SMALLINT$WORD$$SMALLINT
		mov	word [bp-2],ax
		mov	ax,word [bp+6]
		push	ax
		push	word [bp-2]
		call	fpc_unicodestr_setlength
		cmp	word [bp-2],0
		jg	..@j11059
		jmp	..@j11060
..@j11059:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		mov	ax,word [bp-2]
		shl	ax,1
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j11060:
..@j11039:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_unicodestr_setlength
EXTERN	SYSTEM_$$_INDEXWORD$formal$SMALLINT$WORD$$SMALLINT
EXTERN	fpc_unicodestr_assign
