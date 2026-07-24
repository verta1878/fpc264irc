BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTCHARS$POINTER$POINTER$CHARTOORDFUNCTY$BOOLEAN
CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTCHARS$POINTER$POINTER$CHARTOORDFUNCTY$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,26
		mov	word [bp-2],0
		mov	word [bp-4],0
		mov	word [bp-26],0
		mov	ax,1
		push	ax
		lea	ax,[bp-22]
		push	ax
		lea	ax,[bp-16]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j16439
		cmp	word [bp+10],0
		je	..@j16441
		jmp	..@j16442
..@j16441:
		lea	ax,[bp-2]
		push	ax
		mov	ax,word _$CLASSES$_Ld60
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j16447
..@j16442:
		lea	ax,[bp-2]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	byte [bp-9],0
		jmp	..@j16455
	ALIGN 2
..@j16454:
		mov	al,byte [bp-9]
		mov	byte [bp-10],al
		lea	ax,[bp+10]
		push	ax
		mov	ax,word [bp+6]
		call	ax
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		cmp	ax,0
		jne	..@j16464
		cmp	dx,39
		jne	..@j16464
		jmp	..@j16463
..@j16463:
		cmp	byte [bp-9],0
		je	..@j16465
		jmp	..@j16466
..@j16465:
		mov	byte [bp-10],1
..@j16466:
		lea	ax,[bp-4]
		push	ax
		mov	ax,word _$CLASSES$_Ld60
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j16473
..@j16464:
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		cmp	dx,0
		ja	..@j16476
		jb	..@j16475
		cmp	ax,32
		jae	..@j16476
		jmp	..@j16475
..@j16476:
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		cmp	dx,0
		jb	..@j16474
		ja	..@j16477
		cmp	ax,127
		jb	..@j16474
		jmp	..@j16477
..@j16477:
		cmp	byte [bp+4],0
		jne	..@j16478
		jmp	..@j16475
..@j16478:
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		cmp	dx,0
		jb	..@j16474
		ja	..@j16475
		cmp	ax,256
		jb	..@j16474
		jmp	..@j16475
..@j16474:
		cmp	byte [bp-9],0
		je	..@j16479
		jmp	..@j16480
..@j16479:
		mov	byte [bp-10],1
..@j16480:
		lea	ax,[bp-4]
		push	ax
		lea	ax,[bp-26]
		push	ax
		mov	al,byte [bp-8]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-26]
		call	fpc_ansistr_assign
		jmp	..@j16493
..@j16475:
		cmp	byte [bp-9],0
		jne	..@j16494
		jmp	..@j16495
..@j16494:
		mov	byte [bp-10],0
..@j16495:
		lea	ax,[bp-4]
		push	ax
		mov	ax,word _$CLASSES$_Ld61
		push	ax
		lea	ax,[bp-26]
		push	ax
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		mov	cx,0
		mov	bx,0
		push	bx
		push	cx
		push	dx
		push	ax
		call	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
		push	word [bp-26]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
..@j16493:
..@j16473:
		mov	al,byte [bp-10]
		cmp	al,byte [bp-9]
		jne	..@j16510
		jmp	..@j16511
..@j16510:
		lea	ax,[bp-4]
		push	ax
		mov	ax,word _$CLASSES$_Ld62
		push	ax
		push	word [bp-4]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		mov	al,byte [bp-10]
		mov	byte [bp-9],al
..@j16511:
		lea	ax,[bp-2]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
..@j16455:
		mov	ax,word [bp+10]
		cmp	ax,word [bp+8]
		jb	..@j16454
		jmp	..@j16456
..@j16456:
		cmp	byte [bp-9],0
		jne	..@j16530
		jmp	..@j16531
..@j16530:
		lea	ax,[bp-2]
		push	ax
		push	word [bp-2]
		mov	ax,word _$CLASSES$_Ld62
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
..@j16531:
..@j16447:
		mov	ax,word [bp+12]
		push	ax
		push	word [bp-2]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTR$ANSISTRING
..@j16439:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-26]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j16440
		call	FPC_RERAISE
..@j16440:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTR$ANSISTRING
EXTERN	_$CLASSES$_Ld62
EXTERN	fpc_ansistr_concat
EXTERN	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
EXTERN	_$CLASSES$_Ld61
EXTERN	fpc_char_to_ansistr
EXTERN	fpc_ansistr_assign
EXTERN	_$CLASSES$_Ld60
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
