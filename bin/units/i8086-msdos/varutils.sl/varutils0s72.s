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
	GLOBAL VARUTILS_$$_VARIANTCOPYIND$TVARDATA$TVARDATA$$HRESULT
VARUTILS_$$_VARIANTCOPYIND$TVARDATA$TVARDATA$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		and	ax,16384
		test	ax,ax
		je	..@j4413
		jmp	..@j4414
..@j4413:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	VARUTILS_$$_VARIANTCOPY$TVARDATA$TVARDATA$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j4411
..@j4414:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		and	ax,8192
		test	ax,ax
		jne	..@j4421
		jmp	..@j4422
..@j4421:
		mov	word [bp-4],87
		mov	word [bp-2],-32761
		jmp	..@j4411
..@j4422:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		and	ax,4095
		sub	ax,1
		jbe	..@j4427
		dec	ax
		je	..@j4428
		dec	ax
		je	..@j4429
		dec	ax
		je	..@j4430
		dec	ax
		je	..@j4431
		dec	ax
		je	..@j4432
		dec	ax
		je	..@j4433
		dec	ax
		je	..@j4443
		dec	ax
		je	..@j4444
		dec	ax
		je	..@j4435
		dec	ax
		je	..@j4434
		dec	ax
		je	..@j4442
		dec	ax
		je	..@j4444
		sub	ax,3
		je	..@j4438
		dec	ax
		je	..@j4436
		dec	ax
		je	..@j4437
		dec	ax
		je	..@j4440
		dec	ax
		je	..@j4439
		dec	ax
		je	..@j4441
		jmp	..@j4426
..@j4427:
		jmp	..@j4425
..@j4428:
		mov	bx,word [bp+6]
		mov	bx,word [bx+8]
		mov	si,word [bp+4]
		mov	ax,word [bx]
		mov	word [si+8],ax
		jmp	..@j4425
..@j4429:
		mov	bx,word [bp+6]
		mov	si,word [bx+8]
		mov	bx,word [bp+4]
		mov	ax,word [si]
		mov	word [bx+8],ax
		mov	ax,word [si+2]
		mov	word [bx+10],ax
		jmp	..@j4425
..@j4430:
		mov	bx,word [bp+6]
		mov	si,word [bx+8]
		mov	bx,word [bp+4]
		mov	ax,word [si]
		mov	word [bx+8],ax
		mov	ax,word [si+2]
		mov	word [bx+10],ax
		jmp	..@j4425
..@j4431:
		mov	bx,word [bp+6]
		mov	si,word [bx+8]
		mov	bx,word [bp+4]
		lea	di,[bx+8]
		push	ds
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j4425
..@j4432:
		mov	bx,word [bp+6]
		mov	si,word [bx+8]
		mov	bx,word [bp+4]
		lea	di,[bx+8]
		push	ds
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j4425
..@j4433:
		mov	bx,word [bp+6]
		mov	si,word [bx+8]
		mov	bx,word [bp+4]
		lea	di,[bx+8]
		push	ds
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j4425
..@j4434:
		mov	bx,word [bp+6]
		mov	bx,word [bx+8]
		mov	si,word [bp+4]
		mov	ax,word [bx]
		mov	word [si+8],ax
		jmp	..@j4425
..@j4435:
		mov	bx,word [bp+6]
		mov	si,word [bx+8]
		mov	bx,word [bp+4]
		mov	ax,word [si]
		mov	word [bx+8],ax
		mov	ax,word [si+2]
		mov	word [bx+10],ax
		jmp	..@j4425
..@j4436:
		mov	bx,word [bp+6]
		mov	bx,word [bx+8]
		mov	si,word [bp+4]
		mov	al,byte [bx]
		mov	byte [si+8],al
		jmp	..@j4425
..@j4437:
		mov	bx,word [bp+6]
		mov	bx,word [bx+8]
		mov	si,word [bp+4]
		mov	ax,word [bx]
		mov	word [si+8],ax
		jmp	..@j4425
..@j4438:
		mov	bx,word [bp+6]
		mov	bx,word [bx+8]
		mov	si,word [bp+4]
		mov	al,byte [bx]
		mov	byte [si+8],al
		jmp	..@j4425
..@j4439:
		mov	bx,word [bp+6]
		mov	si,word [bx+8]
		mov	bx,word [bp+4]
		lea	di,[bx+8]
		push	ds
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j4425
..@j4440:
		mov	bx,word [bp+6]
		mov	si,word [bx+8]
		mov	bx,word [bp+4]
		mov	ax,word [si]
		mov	word [bx+8],ax
		mov	ax,word [si+2]
		mov	word [bx+10],ax
		jmp	..@j4425
..@j4441:
		mov	bx,word [bp+6]
		mov	si,word [bx+8]
		mov	bx,word [bp+4]
		lea	di,[bx+8]
		push	ds
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j4425
..@j4442:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+8]
		push	ax
		call	fpc_variant_copy
		jmp	..@j4425
..@j4443:
		mov	bx,word [bp+4]
		lea	ax,[bx+8]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+8]
		push	word [bx+8]
		call	VARUTILS_$$_COPYASWIDESTRING$PWIDECHAR$PWIDECHAR
		jmp	..@j4425
..@j4444:
		mov	bx,word [bp+4]
		lea	ax,[bx+8]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+8]
		push	word [bx]
		call	fpc_intf_assign
		jmp	..@j4425
..@j4426:
		mov	word [bp-4],8
		mov	word [bp-2],-32766
		jmp	..@j4411
..@j4425:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		and	ax,4095
		mov	bx,word [bp+4]
		mov	word [bx],ax
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j4411:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_intf_assign
EXTERN	VARUTILS_$$_COPYASWIDESTRING$PWIDECHAR$PWIDECHAR
EXTERN	fpc_variant_copy
EXTERN	VARUTILS_$$_VARIANTCOPY$TVARDATA$TVARDATA$$HRESULT
