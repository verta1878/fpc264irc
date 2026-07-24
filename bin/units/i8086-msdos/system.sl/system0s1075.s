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
	GLOBAL fpc_write_text_longint
fpc_write_text_longint:
		push	bp
		mov	bp,sp
		sub	sp,256
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22329
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22330
..@j22329:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22330:
		cmp	word [bx],0
		jne	..@j22327
		jmp	..@j22328
..@j22327:
		jmp	..@j22325
..@j22328:
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,-1
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_longint
		push	word [bp+12]
		push	word [bp+10]
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-256]
		push	ax
		call	FPC_WRITE_TEXT_SHORTSTR
..@j22325:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_WRITE_TEXT_SHORTSTR
EXTERN	fpc_shortstr_longint
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
