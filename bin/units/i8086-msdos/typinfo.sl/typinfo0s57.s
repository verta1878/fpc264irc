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
	GLOBAL TYPINFO_$$_GETINTERFACEPROP$TOBJECT$PPROPINFO$$IUNKNOWN
TYPINFO_$$_GETINTERFACEPROP$TOBJECT$PPROPINFO$$IUNKNOWN:
		push	bp
		mov	bp,sp
		sub	sp,22
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
		jne	..@j1308
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_intf_assign
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		mov	al,byte [bx+16]
		mov	ah,0
		and	ax,3
		test	ax,ax
		jl	..@j1317
		test	ax,ax
		je	..@j1318
		dec	ax
		jl	..@j1317
		dec	ax
		jle	..@j1319
		jmp	..@j1317
..@j1318:
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	bx,word [bp+6]
		add	bx,ax
		push	word [bx]
		call	fpc_intf_assign
		jmp	..@j1316
..@j1319:
		mov	bx,word [bp+4]
		mov	al,byte [bx+16]
		mov	ah,0
		and	ax,3
		cmp	ax,1
		je	..@j1324
		jmp	..@j1325
..@j1324:
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	word [bp-6],ax
		jmp	..@j1328
..@j1325:
		mov	si,word [bp+4]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [si+2]
		add	bx,ax
		mov	ax,word [bx]
		mov	word [bp-6],ax
..@j1328:
		mov	ax,word [bp+6]
		mov	word [bp-4],ax
		mov	bx,word [bp+4]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,6
		shr	ax,cl
		and	ax,1
		test	ax,ax
		jne	..@j1335
		jmp	..@j1336
..@j1335:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp-4]
		lea	ax,[bp-22]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		cwd
		push	dx
		push	ax
		mov	ax,word [bp-6]
		call	ax
		push	word [bp-22]
		call	fpc_intf_assign
		jmp	..@j1347
..@j1336:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp-4]
		lea	ax,[bp-22]
		push	ax
		mov	ax,word [bp-6]
		call	ax
		push	word [bp-22]
		call	fpc_intf_assign
..@j1347:
		jmp	..@j1316
..@j1317:
..@j1316:
..@j1308:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-22]
		push	ax
		call	fpc_intf_decr_ref
		pop	ax
		test	ax,ax
		je	..@j1309
		call	FPC_RERAISE
..@j1309:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_intf_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_intf_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
