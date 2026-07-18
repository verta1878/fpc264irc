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
	GLOBAL SYSUTILS$_$EVARIANTERROR_$__$$_CREATECODE$LONGINT$$EVARIANTERROR
SYSUTILS$_$EVARIANTERROR_$__$$_CREATECODE$LONGINT$$EVARIANTERROR:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+8],1
		je	..@j14336
		jmp	..@j14337
..@j14336:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+10],ax
..@j14337:
		cmp	word [bp+10],0
		je	..@j14342
		jmp	..@j14343
..@j14342:
		jmp	..@j14334
..@j14343:
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j14346
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		cmp	ax,-32768
		jne	..@j14364
		cmp	dx,16385
		je	..@j14360
..@j14364:
		cmp	ax,-32768
		jne	..@j14365
		cmp	dx,-1
		je	..@j14363
..@j14365:
		cmp	ax,-32766
		jne	..@j14366
		cmp	dx,4
		je	..@j14354
..@j14366:
		cmp	ax,-32766
		jne	..@j14367
		cmp	dx,5
		je	..@j14355
..@j14367:
		cmp	ax,-32766
		jne	..@j14368
		cmp	dx,8
		je	..@j14356
..@j14368:
		cmp	ax,-32766
		jne	..@j14369
		cmp	dx,9
		je	..@j14363
..@j14369:
		cmp	ax,-32766
		jne	..@j14370
		cmp	dx,10
		je	..@j14357
..@j14370:
		cmp	ax,-32766
		jne	..@j14371
		cmp	dx,11
		je	..@j14358
..@j14371:
		cmp	ax,-32766
		jne	..@j14372
		cmp	dx,13
		je	..@j14359
..@j14372:
		cmp	ax,-32761
		jne	..@j14373
		cmp	dx,14
		je	..@j14361
..@j14373:
		cmp	ax,-32761
		jne	..@j14374
		cmp	dx,87
		je	..@j14362
..@j14374:
		test	ax,ax
		jne	..@j14375
		test	dx,dx
		je	..@j14353
..@j14375:
		jmp	..@j14352
..@j14353:
		push	word [bp+10]
		mov	ax,0
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SNOERROR+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		jmp	..@j14351
..@j14354:
		push	word [bp+10]
		mov	ax,0
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SVARPARAMNOTFOUND+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		jmp	..@j14351
..@j14355:
		push	word [bp+10]
		mov	ax,0
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SINVALIDVARCAST+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		jmp	..@j14351
..@j14356:
		push	word [bp+10]
		mov	ax,0
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SVARBADTYPE+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		jmp	..@j14351
..@j14357:
		push	word [bp+10]
		mov	ax,0
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SVAROVERFLOW+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		jmp	..@j14351
..@j14358:
		push	word [bp+10]
		mov	ax,0
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SVARARRAYBOUNDS+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		jmp	..@j14351
..@j14359:
		push	word [bp+10]
		mov	ax,0
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SVARARRAYLOCKED+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		jmp	..@j14351
..@j14360:
		push	word [bp+10]
		mov	ax,0
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SVARNOTIMPLEMENTED+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		jmp	..@j14351
..@j14361:
		push	word [bp+10]
		mov	ax,0
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SVAROUTOFMEMORY+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		jmp	..@j14351
..@j14362:
		push	word [bp+10]
		mov	ax,0
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SVARINVALID+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		jmp	..@j14351
..@j14363:
		push	word [bp+10]
		mov	ax,0
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SVARUNEXPECTED+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		jmp	..@j14351
..@j14352:
		push	word [bp+10]
		mov	ax,0
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SUNKNOWNERRORCODE+2]
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	word [bp-18],ax
		mov	word [bp-16],dx
		mov	word [bp-20],0
		lea	ax,[bp-20]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
..@j14351:
		mov	bx,word [bp+10]
		mov	ax,word [bp+4]
		mov	word [bx+8],ax
		mov	ax,word [bp+6]
		mov	word [bx+10],ax
		cmp	word [bp+10],0
		jne	..@j14456
		jmp	..@j14455
..@j14456:
		cmp	word [bp+8],0
		jne	..@j14454
		jmp	..@j14455
..@j14454:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j14455:
..@j14346:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j14348
		mov	ax,1
		push	ax
		lea	ax,[bp-26]
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j14459
		cmp	word [bp+8],0
		jne	..@j14460
		jmp	..@j14461
..@j14460:
		push	word [bp+10]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j14461:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j14459:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j14466
		call	FPC_RAISE_NESTED
..@j14466:
		call	FPC_DONEEXCEPTION
		jmp	..@j14348
..@j14348:
..@j14334:
		mov	ax,word [bp+10]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$SYSCONST_$$_SUNKNOWNERRORCODE
EXTERN	RESSTR_$SYSCONST_$$_SVARUNEXPECTED
EXTERN	RESSTR_$SYSCONST_$$_SVARINVALID
EXTERN	RESSTR_$SYSCONST_$$_SVAROUTOFMEMORY
EXTERN	RESSTR_$SYSCONST_$$_SVARNOTIMPLEMENTED
EXTERN	RESSTR_$SYSCONST_$$_SVARARRAYLOCKED
EXTERN	RESSTR_$SYSCONST_$$_SVARARRAYBOUNDS
EXTERN	RESSTR_$SYSCONST_$$_SVAROVERFLOW
EXTERN	RESSTR_$SYSCONST_$$_SVARBADTYPE
EXTERN	RESSTR_$SYSCONST_$$_SINVALIDVARCAST
EXTERN	RESSTR_$SYSCONST_$$_SVARPARAMNOTFOUND
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$SYSCONST_$$_SNOERROR
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
