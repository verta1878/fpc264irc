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
	GLOBAL TYPINFO_$$_SETRAWINTERFACEPROP$TOBJECT$PPROPINFO$POINTER
TYPINFO_$$_SETRAWINTERFACEPROP$TOBJECT$PPROPINFO$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	al,byte [bx]
		cmp	al,14
		jb	..@j1454
		sub	al,14
		je	..@j1456
		sub	al,8
		je	..@j1455
		jmp	..@j1454
..@j1455:
		mov	bx,word [bp+6]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,2
		shr	ax,cl
		and	ax,3
		test	ax,ax
		je	..@j1459
		sub	ax,1
		jb	..@j1458
		sub	ax,1
		jbe	..@j1460
		jmp	..@j1458
..@j1459:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	bx,word [bp+8]
		add	bx,ax
		mov	ax,word [bp+4]
		mov	word [bx],ax
		jmp	..@j1457
..@j1460:
		mov	bx,word [bp+6]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,2
		shr	ax,cl
		and	ax,3
		cmp	ax,1
		je	..@j1463
		jmp	..@j1464
..@j1463:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	word [bp-4],ax
		jmp	..@j1467
..@j1464:
		mov	si,word [bp+6]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [si+4]
		add	bx,ax
		mov	ax,word [bx]
		mov	word [bp-4],ax
..@j1467:
		mov	ax,word [bp+8]
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,6
		shr	ax,cl
		and	ax,1
		test	ax,ax
		jne	..@j1474
		jmp	..@j1475
..@j1474:
		push	word [bp-2]
		mov	bx,word [bp+6]
		mov	ax,word [bx+8]
		cwd
		push	dx
		push	ax
		push	word [bp+4]
		mov	ax,word [bp-4]
		call	ax
		jmp	..@j1482
..@j1475:
		push	word [bp-2]
		push	word [bp+4]
		mov	ax,word [bp-4]
		call	ax
..@j1482:
		jmp	..@j1457
..@j1458:
..@j1457:
		jmp	..@j1453
..@j1456:
..@j1487:
		mov	ax,word VMT_$SYSUTILS_$$_EXCEPTION
		push	ax
		mov	ax,1
		push	ax
		mov	ax,word _$TYPINFO$_Ld10
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j1487
		push	ax
		push	bp
		call	fpc_raiseexception
		jmp	..@j1453
..@j1454:
..@j1453:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	_$TYPINFO$_Ld10
EXTERN	VMT_$SYSUTILS_$$_EXCEPTION
