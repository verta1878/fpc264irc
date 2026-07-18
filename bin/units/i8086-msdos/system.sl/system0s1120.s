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
	GLOBAL fpc_read_text_qword_iso
fpc_read_text_qword_iso:
		push	bp
		mov	bp,sp
		sub	sp,262
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	SYSTEM_$$_READINTEGER$TEXT$OPENSTRING
		lea	ax,[bp-256]
		push	ax
		lea	ax,[bp-262]
		push	ax
		call	fpc_val_qword_shortstr
		mov	si,word [bp+4]
		mov	word [si],dx
		mov	word [si+2],cx
		mov	word [si+4],bx
		mov	word [si+6],ax
		mov	ax,word [bp-262]
		cwd
		mov	word [bp-260],ax
		mov	word [bp-258],dx
		mov	dx,word [bp-260]
		mov	ax,word [bp-258]
		cmp	ax,0
		jne	..@j23761
		cmp	dx,0
		jne	..@j23761
		jmp	..@j23762
..@j23761:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j23765
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j23766
..@j23765:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j23766:
		mov	word [bx],106
..@j23762:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	fpc_val_qword_shortstr
EXTERN	SYSTEM_$$_READINTEGER$TEXT$OPENSTRING
