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
	GLOBAL fpc_write_text_sint
fpc_write_text_sint:
		push	bp
		mov	bp,sp
		sub	sp,256
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22113
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22114
..@j22113:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22114:
		cmp	word [bx],0
		jne	..@j22111
		jmp	..@j22112
..@j22111:
		jmp	..@j22109
..@j22112:
		push	word [bp+4]
		mov	ax,-1
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_sint
		push	word [bp+10]
		push	word [bp+8]
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-256]
		push	ax
		call	FPC_WRITE_TEXT_SHORTSTR
..@j22109:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_WRITE_TEXT_SHORTSTR
EXTERN	fpc_shortstr_sint
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
