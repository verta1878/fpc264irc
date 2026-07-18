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
	GLOBAL fpc_unicodestr_assign
fpc_unicodestr_assign:
	GLOBAL FPC_UNICODESTR_ASSIGN
FPC_UNICODESTR_ASSIGN:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jne	..@j11131
		jmp	..@j11132
..@j11131:
		mov	bx,word [bp+4]
		cmp	word [bx-4],0
		jg	..@j11133
		jmp	..@j11134
..@j11133:
		mov	bx,word [bp+4]
		lea	ax,[bx-4]
		push	ax
		call	SYSTEM_$$_INCLOCKED$SMALLINT
..@j11134:
..@j11132:
		mov	ax,word [bp+6]
		push	ax
		call	FPC_UNICODESTR_DECR_REF
		mov	bx,word [bp+6]
		mov	ax,word [bp+4]
		mov	word [bx],ax
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_UNICODESTR_DECR_REF
EXTERN	SYSTEM_$$_INCLOCKED$SMALLINT
