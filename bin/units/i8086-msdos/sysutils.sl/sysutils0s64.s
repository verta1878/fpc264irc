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
	GLOBAL SYSUTILS_$$_FILESEARCH$RAWBYTESTRING$RAWBYTESTRING$TFILESEARCHOPTIONS$$RAWBYTESTRING
SYSUTILS_$$_FILESEARCH$RAWBYTESTRING$RAWBYTESTRING$TFILESEARCHOPTIONS$$RAWBYTESTRING:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	word [bp-6],0
		mov	word [bp-22],0
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
		jne	..@j2376
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+8]
		call	fpc_ansistr_assign
		lea	ax,[bp-6]
		push	ax
		lea	ax,[bp-22]
		push	ax
		push	word [bp+6]
		call	SYSUTILS_$$_SETDIRSEPARATORS$RAWBYTESTRING$$RAWBYTESTRING
		push	word [bp-22]
		call	fpc_ansistr_assign
		test	byte [bp+4],1
		jne	..@j2393
		jmp	..@j2391
..@j2393:
		mov	bx,word [bp+10]
		cmp	word [bx],0
		jne	..@j2392
		jmp	..@j2391
..@j2392:
		mov	bx,word [bp+10]
		push	word [bx]
		call	SYSUTILS_$$_FILEEXISTS$RAWBYTESTRING$$BOOLEAN
		test	al,al
		jne	..@j2390
		jmp	..@j2391
..@j2390:
		jmp	..@j2376
..@j2391:
		jmp	..@j2397
	ALIGN 2
..@j2396:
		cmp	word [bp-6],0
		je	..@j2399
		jmp	..@j2400
..@j2399:
		jmp	..@j2398
..@j2400:
		mov	ax,59
		push	ax
		push	word [bp-6]
		call	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,0
		jne	..@j2407
		cmp	dx,0
		jne	..@j2407
		jmp	..@j2408
..@j2407:
		mov	ax,word [bp+10]
		push	ax
		lea	ax,[bp-22]
		push	ax
		push	word [bp-6]
		mov	ax,1
		push	ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		sub	ax,1
		sbb	dx,0
		push	ax
		call	fpc_ansistr_copy
		push	word [bp-22]
		call	fpc_ansistr_assign
		lea	ax,[bp-6]
		push	ax
		mov	ax,1
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
		jmp	..@j2427
..@j2408:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp-6]
		call	fpc_ansistr_assign
		lea	ax,[bp-6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
..@j2427:
		mov	bx,word [bp+10]
		cmp	word [bx],0
		jne	..@j2436
		jmp	..@j2437
..@j2436:
		test	byte [bp+4],2
		jne	..@j2441
		jmp	..@j2439
..@j2441:
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		cmp	byte [bx],34
		je	..@j2440
		jmp	..@j2439
..@j2440:
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	si,word [bp+10]
		mov	si,word [si]
		test	si,si
		je	..@j2442
		mov	si,word [si-2]
..@j2442:
		cmp	byte [bx+si-1],34
		je	..@j2438
		jmp	..@j2439
..@j2438:
		mov	ax,word [bp+10]
		push	ax
		lea	ax,[bp-22]
		push	ax
		mov	bx,word [bp+10]
		push	word [bx]
		mov	ax,2
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j2455
		mov	bx,word [bx-2]
..@j2455:
		sub	bx,2
		push	bx
		call	fpc_ansistr_copy
		push	word [bp-22]
		call	fpc_ansistr_assign
..@j2439:
		mov	bx,word [bp+10]
		cmp	word [bx],0
		jne	..@j2456
		jmp	..@j2457
..@j2456:
		mov	ax,word [bp+10]
		push	ax
		lea	ax,[bp-22]
		push	ax
		mov	bx,word [bp+10]
		push	word [bx]
		call	SYSUTILS_$$_INCLUDETRAILINGPATHDELIMITER$RAWBYTESTRING$$RAWBYTESTRING
		push	word [bp-22]
		push	word [bp+8]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
..@j2457:
..@j2437:
		mov	bx,word [bp+10]
		cmp	word [bx],0
		jne	..@j2472
		jmp	..@j2471
..@j2472:
		mov	bx,word [bp+10]
		push	word [bx]
		call	SYSUTILS_$$_FILEEXISTS$RAWBYTESTRING$$BOOLEAN
		test	al,al
		jne	..@j2470
		jmp	..@j2471
..@j2470:
		jmp	..@j2376
..@j2471:
..@j2397:
		jmp	..@j2396
..@j2398:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
..@j2376:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-22]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j2377
		call	FPC_RERAISE
..@j2377:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_concat
EXTERN	SYSUTILS_$$_INCLUDETRAILINGPATHDELIMITER$RAWBYTESTRING$$RAWBYTESTRING
EXTERN	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
EXTERN	fpc_ansistr_copy
EXTERN	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
EXTERN	SYSUTILS_$$_FILEEXISTS$RAWBYTESTRING$$BOOLEAN
EXTERN	SYSUTILS_$$_SETDIRSEPARATORS$RAWBYTESTRING$$RAWBYTESTRING
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
