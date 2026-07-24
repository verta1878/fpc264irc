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
	GLOBAL SYSTEM_$$_DO_CHDIR$RAWBYTESTRING
SYSTEM_$$_DO_CHDIR$RAWBYTESTRING:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j25263
		mov	bx,word [bx-2]
..@j25263:
		mov	word [bp-22],bx
		cmp	word [bp-22],2
		jge	..@j25266
		jmp	..@j25265
..@j25266:
		mov	bx,word [bp+4]
		cmp	byte [bx+1],58
		je	..@j25264
		jmp	..@j25265
..@j25264:
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	ah,0
		and	ax,-33
		sub	ax,65
		mov	word [bp-14],ax
		mov	word [bp-20],3584
		lea	ax,[bp-20]
		push	ax
		call	FPC_MSDOS
		mov	word [bp-20],6400
		lea	ax,[bp-20]
		push	ax
		call	FPC_MSDOS
		mov	al,byte [bp-20]
		cmp	al,byte [bp-14]
		jne	..@j25277
		jmp	..@j25278
..@j25277:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j25281
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j25282
..@j25281:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j25282:
		mov	word [bx],15
		jmp	..@j25259
..@j25278:
		cmp	word [bp-22],2
		je	..@j25283
		jmp	..@j25284
..@j25283:
		jmp	..@j25259
..@j25284:
..@j25265:
		mov	ax,59
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_DOSDIR$BYTE$RAWBYTESTRING
..@j25259:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_DOSDIR$BYTE$RAWBYTESTRING
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	FPC_MSDOS
