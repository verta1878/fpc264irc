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
	GLOBAL fpc_write_text_boolean
fpc_write_text_boolean:
		push	bp
		mov	bp,sp
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22616
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22617
..@j22616:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22617:
		cmp	word [bx],0
		jne	..@j22614
		jmp	..@j22615
..@j22614:
		jmp	..@j22612
..@j22615:
		cmp	byte [bp+4],0
		jne	..@j22618
		jmp	..@j22619
..@j22618:
		push	word [bp+10]
		push	word [bp+8]
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word _$SYSTEM$_Ld18
		push	ax
		call	FPC_WRITE_TEXT_SHORTSTR
		jmp	..@j22626
..@j22619:
		push	word [bp+10]
		push	word [bp+8]
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word _$SYSTEM$_Ld19
		push	ax
		call	FPC_WRITE_TEXT_SHORTSTR
..@j22626:
..@j22612:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	_$SYSTEM$_Ld19
EXTERN	FPC_WRITE_TEXT_SHORTSTR
EXTERN	_$SYSTEM$_Ld18
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
