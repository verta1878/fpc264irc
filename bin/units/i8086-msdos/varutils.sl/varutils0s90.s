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
	GLOBAL VARUTILS_$$_SAFEARRAYCOPYDATA$PVARARRAY$PVARARRAY$$HRESULT
VARUTILS_$$_SAFEARRAYCOPYDATA$PVARARRAY$PVARARRAY$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,36
		push	word [bp+4]
		call	VARUTILS_$$_CHECKVARARRAY$PVARARRAY$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,0
		jne	..@j5362
		cmp	dx,0
		jne	..@j5362
		jmp	..@j5363
..@j5362:
		jmp	..@j5356
..@j5363:
		push	word [bp+6]
		call	VARUTILS_$$_CHECKVARARRAY$PVARARRAY$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jne	..@j5368
		cmp	ax,0
		jne	..@j5368
		jmp	..@j5369
..@j5368:
		jmp	..@j5356
..@j5369:
		push	word [bp+6]
		call	VARUTILS_$$_SAFEARRAYLOCK$PVARARRAY$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jne	..@j5374
		cmp	ax,0
		jne	..@j5374
		jmp	..@j5375
..@j5374:
		jmp	..@j5356
..@j5375:
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
		jne	..@j5376
		push	word [bp+4]
		call	VARUTILS_$$_SAFEARRAYLOCK$PVARARRAY$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jne	..@j5383
		cmp	ax,0
		jne	..@j5383
		jmp	..@j5384
..@j5383:
		jmp	..@j5378
..@j5384:
		mov	ax,1
		push	ax
		lea	ax,[bp-32]
		push	ax
		lea	ax,[bp-26]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j5385
		mov	ax,word [bp+6]
		mov	word [bp-36],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	bx,word [bp-36]
		cmp	ax,word [bx+2]
		jne	..@j5390
		jmp	..@j5393
..@j5393:
		mov	bx,word [bp+4]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		mov	bx,word [bp-36]
		cmp	ax,word [bx+6]
		jne	..@j5390
		mov	bx,word [bp-36]
		cmp	dx,word [bx+4]
		jne	..@j5390
		jmp	..@j5392
		jmp	..@j5392
..@j5392:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	bx,word [bp-36]
		cmp	ax,word [bx]
		jne	..@j5390
		jmp	..@j5391
..@j5390:
		mov	word [bp-4],87
		mov	word [bp-2],-32761
		jmp	..@j5387
..@j5391:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	dx,0
		sub	ax,1
		sbb	dx,0
		mov	dx,ax
		mov	word [bp-6],0
		cmp	dx,word [bp-6]
		jl	..@j5399
		dec	word [bp-6]
	ALIGN 2
..@j5400:
		inc	word [bp-6]
		mov	bx,word [bp+4]
		mov	ax,word [bp-6]
		mov	si,ax
		mov	cl,3
		shl	si,cl
		mov	ax,word [bp-6]
		mov	di,ax
		mov	cl,3
		shl	di,cl
		mov	ax,word [bx+si+18]
		mov	cx,word [bx+si+20]
		mov	bx,word [bp-36]
		cmp	cx,word [bx+di+20]
		jne	..@j5401
		mov	bx,word [bp-36]
		cmp	ax,word [bx+di+18]
		jne	..@j5401
		jmp	..@j5403
		jmp	..@j5403
..@j5403:
		mov	bx,word [bp+4]
		mov	ax,word [bp-6]
		mov	si,ax
		mov	cl,3
		shl	si,cl
		mov	ax,word [bp-6]
		mov	di,ax
		mov	cl,3
		shl	di,cl
		mov	ax,word [bx+si+14]
		mov	cx,word [bx+si+16]
		mov	bx,word [bp-36]
		cmp	cx,word [bx+di+16]
		jne	..@j5401
		mov	bx,word [bp-36]
		cmp	ax,word [bx+di+14]
		jne	..@j5401
		jmp	..@j5402
		jmp	..@j5402
..@j5401:
		mov	word [bp-4],87
		mov	word [bp-2],-32761
		jmp	..@j5387
..@j5402:
		cmp	dx,word [bp-6]
		jg	..@j5400
..@j5399:
		push	word [bp+6]
		mov	ax,1
		push	ax
		call	VARUTILS_$$_SAFEARRAYCLEARDATASPACE$PVARARRAY$BOOLEAN$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,0
		jne	..@j5412
		cmp	dx,0
		jne	..@j5412
		jmp	..@j5413
..@j5412:
		jmp	..@j5387
..@j5413:
		push	word [bp+4]
		push	word [bp+6]
		call	VARUTILS_$$_SAFEARRAYCOPYDATASPACE$PVARARRAY$PVARARRAY$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j5385:
		call	FPC_POPADDRSTACK
		push	word [bp+4]
		push	word [bp-2]
		push	word [bp-4]
		call	VARUTILS_$$_SETUNLOCKRESULT$PVARARRAY$HRESULT
		pop	ax
		test	ax,ax
		je	..@j5386
		cmp	ax,2
		je	..@j5378
		call	FPC_RERAISE
..@j5387:
		pop	ax
		mov	dx,2
		push	dx
		jmp	..@j5385
..@j5386:
..@j5376:
		call	FPC_POPADDRSTACK
		push	word [bp+6]
		push	word [bp-2]
		push	word [bp-4]
		call	VARUTILS_$$_SETUNLOCKRESULT$PVARARRAY$HRESULT
		pop	ax
		test	ax,ax
		je	..@j5377
		cmp	ax,2
		je	..@j5356
		call	FPC_RERAISE
..@j5378:
		pop	ax
		mov	dx,2
		push	dx
		jmp	..@j5376
..@j5377:
..@j5356:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	VARUTILS_$$_SETUNLOCKRESULT$PVARARRAY$HRESULT
EXTERN	FPC_POPADDRSTACK
EXTERN	VARUTILS_$$_SAFEARRAYCOPYDATASPACE$PVARARRAY$PVARARRAY$$HRESULT
EXTERN	VARUTILS_$$_SAFEARRAYCLEARDATASPACE$PVARARRAY$BOOLEAN$$HRESULT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	VARUTILS_$$_SAFEARRAYLOCK$PVARARRAY$$HRESULT
EXTERN	VARUTILS_$$_CHECKVARARRAY$PVARARRAY$$HRESULT
