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
	GLOBAL fpc_shortstr_smallint
fpc_shortstr_smallint:
	GLOBAL FPC_SHORTSTR_SMALLINT
FPC_SHORTSTR_SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,512
		mov	ax,word [bp+10]
		cwd
		push	dx
		push	ax
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_INT_STR$LONGINT$OPENSTRING
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		cmp	ax,word [bp+8]
		jl	..@j4251
		jmp	..@j4252
..@j4251:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-512]
		push	ax
		mov	bx,word [bp+6]
		mov	dl,byte [bx]
		mov	dh,0
		mov	ax,word [bp+8]
		sub	ax,dx
		push	ax
		call	SYSTEM_$$_SPACE$BYTE$$SHORTSTRING
		lea	ax,[bp-512]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		call	fpc_shortstr_concat
		lea	ax,[bp-256]
		push	ax
		call	fpc_shortstr_to_shortstr
..@j4252:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_shortstr_to_shortstr
EXTERN	fpc_shortstr_concat
EXTERN	SYSTEM_$$_SPACE$BYTE$$SHORTSTRING
EXTERN	SYSTEM_$$_INT_STR$LONGINT$OPENSTRING
