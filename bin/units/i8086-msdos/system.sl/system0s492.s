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
	GLOBAL fpc_setstring_unicodestr_pwidechar
fpc_setstring_unicodestr_pwidechar:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+8]
		mov	word [bx],0
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+4]
		call	fpc_unicodestr_setlength
		cmp	word [bp+6],0
		jne	..@j12425
		jmp	..@j12424
..@j12425:
		cmp	word [bp+4],0
		jg	..@j12423
		jmp	..@j12424
..@j12423:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		call	fpc_unicodestr_unique
		push	ax
		mov	ax,word [bp+4]
		shl	ax,1
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j12424:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_unicodestr_unique
EXTERN	fpc_unicodestr_setlength
