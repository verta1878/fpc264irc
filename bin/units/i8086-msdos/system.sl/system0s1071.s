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
	GLOBAL fpc_write_text_int64
fpc_write_text_int64:
		push	bp
		mov	bp,sp
		sub	sp,256
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22231
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22232
..@j22231:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22232:
		cmp	word [bx],0
		jne	..@j22229
		jmp	..@j22230
..@j22229:
		jmp	..@j22227
..@j22230:
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,-1
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_int64
		push	word [bp+16]
		push	word [bp+14]
		mov	ax,word [bp+12]
		push	ax
		lea	ax,[bp-256]
		push	ax
		call	FPC_WRITE_TEXT_SHORTSTR
..@j22227:
		mov	sp,bp
		pop	bp
		ret	14
EXTERN	FPC_WRITE_TEXT_SHORTSTR
EXTERN	fpc_shortstr_int64
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
