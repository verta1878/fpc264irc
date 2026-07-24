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
	GLOBAL SYSTEM_$$_RENAME$TEXT$UNICODESTRING
SYSTEM_$$_RENAME$TEXT$UNICODESTRING:
		push	bp
		mov	bp,sp
		sub	sp,528
		mov	word [bp-2],0
		mov	ax,1
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j21216
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21220
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21221
..@j21220:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21221:
		cmp	word [bx],0
		jne	..@j21218
		jmp	..@j21219
..@j21218:
		jmp	..@j21216
..@j21219:
		mov	bx,word [bp+6]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j21222
		cmp	dx,-10320
		jne	..@j21222
		jmp	..@j21223
..@j21222:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21226
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21227
..@j21226:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21227:
		mov	word [bx],102
		jmp	..@j21216
..@j21223:
		lea	ax,[bp-2]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_TOSINGLEBYTEFILESYSTEMENCODEDFILENAME$UNICODESTRING$$RAWBYTESTRING
		mov	bx,word [bp+6]
		lea	ax,[bx+56]
		push	ax
		mov	ax,word [bp-2]
		test	ax,ax
		jne	..@j21236
		mov	ax,word FPC_EMPTYCHAR
..@j21236:
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DO_RENAME$PWIDECHAR$PCHAR$BOOLEAN$BOOLEAN
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21243
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21244
..@j21243:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21244:
		cmp	word [bx],0
		je	..@j21241
		jmp	..@j21242
..@j21241:
		lea	ax,[bp-528]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp-2]
		call	fpc_ansistr_to_widechararray
		mov	bx,word [bp+6]
		lea	di,[bx+56]
		push	ds
		pop	es
		lea	si,[bp-528]
		cld
		mov	cx,256
		rep
		movsw
..@j21242:
..@j21216:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j21217
		call	FPC_RERAISE
..@j21217:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_to_widechararray
EXTERN	SYSTEM_$$_DO_RENAME$PWIDECHAR$PCHAR$BOOLEAN$BOOLEAN
EXTERN	FPC_EMPTYCHAR
EXTERN	SYSTEM_$$_TOSINGLEBYTEFILESYSTEMENCODEDFILENAME$UNICODESTRING$$RAWBYTESTRING
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
