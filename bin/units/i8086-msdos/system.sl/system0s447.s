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
	GLOBAL fpc_uchar_to_char
fpc_uchar_to_char:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	word [bp-4],0
		mov	ax,1
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j11331
		lea	ax,[bp+4]
		push	ax
		lea	ax,[bp-4]
		push	ax
		push	word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		mov	ax,1
		push	ax
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+38]
		call	ax
		mov	bx,word [bp-4]
		test	bx,bx
		je	..@j11343
		mov	bx,word [bx-2]
..@j11343:
		cmp	bx,1
		je	..@j11341
		jmp	..@j11342
..@j11341:
		mov	bx,word [bp-4]
		mov	al,byte [bx]
		mov	byte [bp-1],al
		jmp	..@j11346
..@j11342:
		mov	byte [bp-1],63
..@j11346:
..@j11331:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j11332
		call	FPC_RERAISE
..@j11332:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
