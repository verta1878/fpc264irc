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
	GLOBAL SYSTEM_$$_RENAME$TEXT$RAWBYTESTRING
SYSTEM_$$_RENAME$TEXT$RAWBYTESTRING:
		push	bp
		mov	bp,sp
		sub	sp,534
		mov	word [bp-2],0
		mov	ax,1
		push	ax
		lea	ax,[bp-18]
		push	ax
		lea	ax,[bp-12]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j21259
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21263
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21264
..@j21263:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21264:
		cmp	word [bx],0
		jne	..@j21261
		jmp	..@j21262
..@j21261:
		jmp	..@j21259
..@j21262:
		mov	bx,word [bp+6]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j21265
		cmp	dx,-10320
		jne	..@j21265
		jmp	..@j21266
..@j21265:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21269
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21270
..@j21269:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21270:
		mov	word [bx],102
		jmp	..@j21259
..@j21266:
		mov	byte [bp-5],0
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j21275
		mov	ax,word FPC_EMPTYCHAR
..@j21275:
		mov	word [bp-4],ax
		push	word [bp+4]
		call	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
		mov	word [bp-22],ax
		mov	ax,word [bp-22]
		mov	dx,word [bp-22]
		sub	dx,1
		jbe	..@j21287
		jmp	..@j21286
..@j21287:
		mov	ax,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j21285
..@j21286:
..@j21285:
		cmp	ax,word [U_$SYSTEM_$$_DEFAULTFILESYSTEMCODEPAGE]
		jne	..@j21276
		jmp	..@j21277
..@j21276:
		lea	ax,[bp-2]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_TOSINGLEBYTEFILESYSTEMENCODEDFILENAME$RAWBYTESTRING$$RAWBYTESTRING
		mov	ax,word [bp-2]
		test	ax,ax
		jne	..@j21296
		mov	ax,word FPC_EMPTYCHAR
..@j21296:
		mov	word [bp-4],ax
		mov	byte [bp-5],1
		jmp	..@j21299
..@j21277:
		lea	ax,[bp-2]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
..@j21299:
		mov	bx,word [bp+6]
		lea	ax,[bx+56]
		push	ax
		push	word [bp-4]
		mov	ax,0
		push	ax
		mov	al,byte [bp-5]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_DO_RENAME$PWIDECHAR$PCHAR$BOOLEAN$BOOLEAN
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21314
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21315
..@j21314:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21315:
		cmp	word [bx],0
		je	..@j21312
		jmp	..@j21313
..@j21312:
		lea	ax,[bp-534]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp-2]
		call	fpc_ansistr_to_widechararray
		mov	bx,word [bp+6]
		lea	di,[bx+56]
		push	ds
		pop	es
		lea	si,[bp-534]
		cld
		mov	cx,256
		rep
		movsw
..@j21313:
..@j21259:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j21260
		call	FPC_RERAISE
..@j21260:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_to_widechararray
EXTERN	SYSTEM_$$_DO_RENAME$PWIDECHAR$PCHAR$BOOLEAN$BOOLEAN
EXTERN	fpc_ansistr_assign
EXTERN	SYSTEM_$$_TOSINGLEBYTEFILESYSTEMENCODEDFILENAME$RAWBYTESTRING$$RAWBYTESTRING
EXTERN	U_$SYSTEM_$$_DEFAULTFILESYSTEMCODEPAGE
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
EXTERN	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
EXTERN	FPC_EMPTYCHAR
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
