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
	GLOBAL TYPINFO_$$_SETINTERFACEPROP$TOBJECT$PPROPINFO$IUNKNOWN
TYPINFO_$$_SETINTERFACEPROP$TOBJECT$PPROPINFO$IUNKNOWN:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	al,byte [bx]
		cmp	al,14
		jb	..@j1371
		sub	al,14
		je	..@j1372
		sub	al,8
		je	..@j1373
		jmp	..@j1371
..@j1372:
		mov	bx,word [bp+6]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,2
		shr	ax,cl
		and	ax,3
		test	ax,ax
		je	..@j1376
		sub	ax,1
		jb	..@j1375
		sub	ax,1
		jbe	..@j1377
		jmp	..@j1375
..@j1376:
		mov	bx,word [bp+6]
		mov	dx,word [bx+4]
		mov	ax,word [bp+8]
		add	ax,dx
		push	ax
		push	word [bp+4]
		call	fpc_intf_assign
		jmp	..@j1374
..@j1377:
		mov	bx,word [bp+6]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,2
		shr	ax,cl
		and	ax,3
		cmp	ax,1
		je	..@j1382
		jmp	..@j1383
..@j1382:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	word [bp-4],ax
		jmp	..@j1386
..@j1383:
		mov	si,word [bp+6]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [si+4]
		add	bx,ax
		mov	ax,word [bx]
		mov	word [bp-4],ax
..@j1386:
		mov	ax,word [bp+8]
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,6
		shr	ax,cl
		and	ax,1
		test	ax,ax
		jne	..@j1393
		jmp	..@j1394
..@j1393:
		push	word [bp-2]
		mov	bx,word [bp+6]
		mov	ax,word [bx+8]
		cwd
		push	dx
		push	ax
		push	word [bp+4]
		mov	ax,word [bp-4]
		call	ax
		jmp	..@j1401
..@j1394:
		push	word [bp-2]
		push	word [bp+4]
		mov	ax,word [bp-4]
		call	ax
..@j1401:
		jmp	..@j1374
..@j1375:
..@j1374:
		jmp	..@j1370
..@j1373:
..@j1406:
		mov	ax,word VMT_$SYSUTILS_$$_EXCEPTION
		push	ax
		mov	ax,1
		push	ax
		mov	ax,word _$TYPINFO$_Ld9
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j1406
		push	ax
		push	bp
		call	fpc_raiseexception
		jmp	..@j1370
..@j1371:
..@j1370:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	_$TYPINFO$_Ld9
EXTERN	VMT_$SYSUTILS_$$_EXCEPTION
EXTERN	fpc_intf_assign
