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
	GLOBAL SYSUTILS_$$_ANSIEXTRACTQUOTEDSTR$PCHAR$CHAR$$ANSISTRING
SYSUTILS_$$_ANSIEXTRACTQUOTEDSTR$PCHAR$CHAR$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		push	word [bp-2]
		call	SYSUTILS_$$_STREND$PCHAR$$PCHAR
		mov	word [bp-4],ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		je	..@j3445
		jmp	..@j3446
..@j3445:
		jmp	..@j3433
..@j3446:
		mov	bx,word [bp-2]
		mov	al,byte [bx]
		cmp	al,byte [bp+4]
		jne	..@j3447
		jmp	..@j3448
..@j3447:
		jmp	..@j3433
..@j3448:
		inc	word [bp-2]
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		sub	ax,dx
		inc	ax
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	word [bp-6],ax
		jmp	..@j3458
	ALIGN 2
..@j3457:
		mov	si,word [bp-6]
		mov	bx,word [bp-2]
		mov	al,byte [bx]
		mov	byte [si],al
		inc	word [bp-6]
		mov	bx,word [bp-2]
		mov	al,byte [bx]
		cmp	al,byte [bp+4]
		je	..@j3462
		jmp	..@j3463
..@j3462:
		mov	ax,word [bp-2]
		inc	ax
		mov	word [bp-2],ax
		mov	bx,word [bp-2]
		mov	al,byte [bx]
		cmp	al,byte [bp+4]
		jne	..@j3466
		jmp	..@j3467
..@j3466:
		dec	word [bp-6]
		jmp	..@j3459
..@j3467:
..@j3463:
		mov	ax,word [bp-2]
		inc	ax
		mov	word [bp-2],ax
..@j3458:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		jne	..@j3457
		jmp	..@j3459
..@j3459:
		mov	bx,word [bp+6]
		mov	ax,word [bp-2]
		mov	word [bx],ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	dx,word [bp-6]
		sub	dx,ax
		push	dx
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
..@j3433:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_ansistr_setlength
EXTERN	fpc_ansistr_assign
EXTERN	SYSUTILS_$$_STREND$PCHAR$$PCHAR
