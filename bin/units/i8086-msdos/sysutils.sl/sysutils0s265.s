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
	GLOBAL SYSUTILS$_$SSCANF$crcFD40E9A9_$$_GETINT$BOOLEAN$$SMALLINT
SYSUTILS$_$SSCANF$crcFD40E9A9_$$_GETINT$BOOLEAN$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	word [bp-18],0
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
		jne	..@j9311
		mov	bx,word [bp+6]
		lea	ax,[bx-12]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j9318
	ALIGN 2
..@j9317:
		mov	bx,word [bp+6]
		inc	word [bx-8]
..@j9318:
		mov	bx,word [bp+6]
		mov	bx,word [bx+10]
		test	bx,bx
		je	..@j9321
		mov	bx,word [bx-2]
..@j9321:
		mov	si,word [bp+6]
		cmp	bx,word [si-8]
		jg	..@j9320
		jmp	..@j9319
..@j9320:
		mov	bx,word [bp+6]
		mov	bx,word [bx+10]
		mov	si,word [bp+6]
		mov	si,word [si-8]
		cmp	byte [bx+si-1],32
		je	..@j9317
		jmp	..@j9319
..@j9319:
		mov	bx,word [bp+6]
		mov	si,word [bx+10]
		test	si,si
		je	..@j9325
		mov	si,word [si-2]
..@j9325:
		mov	bx,word [bp+6]
		cmp	si,word [bx-8]
		jge	..@j9324
		jmp	..@j9323
..@j9324:
		mov	bx,word [bp+6]
		mov	bx,word [bx+10]
		mov	si,word [bp+6]
		mov	si,word [si-8]
		mov	al,byte [bx+si-1]
		mov	ah,0
		cmp	ax,43
		je	..@j9326
		cmp	ax,45
		je	..@j9326
..@j9326:
		je	..@j9322
		jmp	..@j9323
..@j9322:
		cmp	byte [bp+4],0
		jne	..@j9329
		jmp	..@j9328
..@j9329:
		mov	bx,word [bp+6]
		mov	bx,word [bx+10]
		mov	si,word [bp+6]
		mov	si,word [si-8]
		cmp	byte [bx+si-1],45
		je	..@j9327
		jmp	..@j9328
..@j9327:
		mov	bx,word [bp+6]
		mov	bx,word [bx-12]
		test	bx,bx
		je	..@j9332
		mov	bx,word [bx-2]
..@j9332:
		mov	word [bp-2],bx
		jmp	..@j9311
		jmp	..@j9333
..@j9328:
		mov	bx,word [bp+6]
		lea	ax,[bx-12]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx-12]
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+10]
		mov	si,word [bp+6]
		mov	si,word [si-8]
		mov	al,byte [bx+si-1]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-18]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		mov	bx,word [bp+6]
		inc	word [bx-8]
..@j9333:
..@j9323:
		jmp	..@j9349
	ALIGN 2
..@j9348:
		mov	bx,word [bp+6]
		lea	ax,[bx-12]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx-12]
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+10]
		mov	si,word [bp+6]
		mov	si,word [si-8]
		mov	al,byte [bx+si-1]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-18]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		mov	bx,word [bp+6]
		inc	word [bx-8]
..@j9349:
		mov	bx,word [bp+6]
		mov	si,word [bx+10]
		test	si,si
		je	..@j9366
		mov	si,word [si-2]
..@j9366:
		mov	bx,word [bp+6]
		cmp	si,word [bx-8]
		jge	..@j9365
		jmp	..@j9350
..@j9365:
		mov	bx,word [bp+6]
		mov	bx,word [bx+10]
		mov	si,word [bp+6]
		mov	si,word [si-8]
		mov	al,byte [bx+si-1]
		mov	ah,0
		sub	ax,48
		cmp	ax,10
		jb	..@j9367
..@j9367:
		jc	..@j9348
		jmp	..@j9350
..@j9350:
		mov	bx,word [bp+6]
		mov	bx,word [bx-12]
		test	bx,bx
		je	..@j9370
		mov	bx,word [bx-2]
..@j9370:
		mov	word [bp-2],bx
..@j9311:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j9312
		call	FPC_RERAISE
..@j9312:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_concat
EXTERN	fpc_char_to_ansistr
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
