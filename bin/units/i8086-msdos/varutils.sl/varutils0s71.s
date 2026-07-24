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
	GLOBAL VARUTILS_$$_VARIANTCOPY$TVARDATA$TVARDATA$$HRESULT
VARUTILS_$$_VARIANTCOPY$TVARDATA$TVARDATA$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+6]
		mov	dx,word [bp+4]
		cmp	ax,dx
		je	..@j4358
		jmp	..@j4359
..@j4358:
		mov	word [bp-4],0
		mov	word [bp-2],0
		jmp	..@j4356
..@j4359:
		mov	ax,word [bp+4]
		push	ax
		call	VARUTILS_$$_VARIANTCLEAR$TVARDATA$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jne	..@j4366
		cmp	ax,0
		jne	..@j4366
		jmp	..@j4367
..@j4366:
		jmp	..@j4356
..@j4367:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		and	ax,8192
		test	ax,ax
		jne	..@j4368
		jmp	..@j4369
..@j4368:
		mov	bx,word [bp+4]
		lea	ax,[bx+8]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+8]
		call	VARUTILS_$$_SAFEARRAYCOPY$PVARARRAY$PVARARRAY$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j4376
..@j4369:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		and	ax,16384
		test	ax,ax
		jne	..@j4377
		jmp	..@j4378
..@j4377:
		mov	si,word [bp+4]
		mov	bx,word [bp+6]
		mov	ax,word [bx+8]
		mov	word [si+8],ax
		jmp	..@j4381
..@j4378:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		and	ax,4095
		sub	ax,1
		jbe	..@j4384
		sub	ax,1
		sub	ax,5
		jbe	..@j4385
		dec	ax
		je	..@j4386
		dec	ax
		je	..@j4387
		sub	ax,1
		jb	..@j4383
		sub	ax,1
		jbe	..@j4385
		sub	ax,2
		je	..@j4388
		sub	ax,3
		jb	..@j4383
		sub	ax,3
		jbe	..@j4385
		sub	ax,1
		sub	ax,1
		jbe	..@j4385
		jmp	..@j4383
..@j4384:
		jmp	..@j4382
..@j4385:
		mov	bx,word [bp+6]
		lea	ax,[bx+2]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+2]
		push	ax
		mov	ax,14
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		jmp	..@j4382
..@j4386:
		mov	bx,word [bp+4]
		lea	ax,[bx+8]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+8]
		call	VARUTILS_$$_COPYASWIDESTRING$PWIDECHAR$PWIDECHAR
		jmp	..@j4382
..@j4387:
		mov	bx,word [bp+4]
		lea	ax,[bx+8]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+8]
		call	fpc_intf_assign
		jmp	..@j4382
..@j4388:
		mov	bx,word [bp+4]
		lea	ax,[bx+8]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+8]
		call	fpc_intf_assign
		jmp	..@j4382
..@j4383:
		mov	word [bp-4],8
		mov	word [bp-2],-32766
		jmp	..@j4356
..@j4382:
..@j4381:
..@j4376:
		mov	si,word [bp+4]
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	word [si],ax
..@j4356:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_intf_assign
EXTERN	VARUTILS_$$_COPYASWIDESTRING$PWIDECHAR$PWIDECHAR
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	VARUTILS_$$_SAFEARRAYCOPY$PVARARRAY$PVARARRAY$$HRESULT
EXTERN	VARUTILS_$$_VARIANTCLEAR$TVARDATA$$HRESULT
