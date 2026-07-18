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
	GLOBAL fpc_read_text_longword
fpc_read_text_longword:
		push	bp
		mov	bp,sp
		sub	sp,262
		mov	bx,word [bp+4]
		mov	word [bx],0
		mov	word [bx+2],0
		mov	ax,word [bp+6]
		push	ax
		call	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
		test	al,al
		je	..@j23829
		jmp	..@j23830
..@j23829:
		jmp	..@j23825
..@j23830:
		mov	byte [bp-256],0
		mov	ax,word [bp+6]
		push	ax
		call	SYSTEM_$$_IGNORESPACES$TEXT$$BOOLEAN
		test	al,al
		jne	..@j23835
		jmp	..@j23836
..@j23835:
		mov	bx,word [bp+6]
		mov	si,word [bp+6]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j23839
		jmp	..@j23840
..@j23839:
		jmp	..@j23825
..@j23840:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	SYSTEM_$$_READNUMERIC$TEXT$OPENSTRING
..@j23836:
		lea	ax,[bp-256]
		push	ax
		lea	ax,[bp-262]
		push	ax
		call	fpc_val_longword_shortstr
		mov	bx,word [bp+4]
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	ax,word [bp-262]
		cwd
		mov	word [bp-260],ax
		mov	word [bp-258],dx
		mov	dx,word [bp-260]
		mov	ax,word [bp-258]
		cmp	ax,0
		jne	..@j23855
		cmp	dx,0
		jne	..@j23855
		jmp	..@j23856
..@j23855:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j23859
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j23860
..@j23859:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j23860:
		mov	word [bx],106
..@j23856:
..@j23825:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	fpc_val_longword_shortstr
EXTERN	SYSTEM_$$_READNUMERIC$TEXT$OPENSTRING
EXTERN	SYSTEM_$$_IGNORESPACES$TEXT$$BOOLEAN
EXTERN	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
