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
	GLOBAL fpc_read_text_widechar
fpc_read_text_widechar:
		push	bp
		mov	bp,sp
		sub	sp,26
		mov	word [bp-2],0
		mov	ax,1
		push	ax
		lea	ax,[bp-24]
		push	ax
		lea	ax,[bp-18]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j23345
		lea	ax,[bp-12]
		push	ax
		mov	ax,6
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	word [bp-6],0
		mov	word [bp-4],0
		sub	word [bp-6],1
		sbb	word [bp-4],0
	ALIGN 2
..@j23355:
		add	word [bp-6],1
		adc	word [bp-4],0
		mov	ax,word [bp+6]
		push	ax
		mov	si,word [bp-6]
		lea	ax,[bp+si-12]
		push	ax
		call	FPC_READ_TEXT_CHAR
		lea	ax,[bp-12]
		push	ax
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		add	ax,1
		adc	dx,0
		push	ax
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+12]
		call	ax
		cmp	ax,-1
		je	..@j23362
		test	ax,ax
		je	..@j23363
		jmp	..@j23361
..@j23362:
		jmp	..@j23360
..@j23363:
		mov	bx,word [bp+4]
		mov	word [bx],0
		jmp	..@j23345
		jmp	..@j23360
..@j23361:
		lea	ax,[bp-12]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+828]
		lea	ax,[bp-2]
		push	ax
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		add	ax,1
		adc	dx,0
		push	ax
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+2]
		call	ax
		mov	bx,word [bp-2]
		test	bx,bx
		je	..@j23380
		mov	bx,word [bx-2]
..@j23380:
		cmp	bx,1
		je	..@j23378
		jmp	..@j23379
..@j23378:
		mov	si,word [bp+4]
		mov	bx,word [bp-2]
		mov	ax,word [bx]
		mov	word [si],ax
		jmp	..@j23345
		jmp	..@j23383
..@j23379:
		jmp	..@j23354
..@j23383:
..@j23360:
		cmp	word [bp-4],0
		jl	..@j23355
		jg	..@j23384
		cmp	word [bp-6],5
		jb	..@j23355
..@j23384:
..@j23354:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j23387
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j23388
..@j23387:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j23388:
		mov	word [bx],106
..@j23345:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-2]
		push	ax
		call	fpc_unicodestr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j23346
		call	FPC_RERAISE
..@j23346:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	FPC_READ_TEXT_CHAR
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
