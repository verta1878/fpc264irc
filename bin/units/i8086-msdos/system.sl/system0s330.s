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
	GLOBAL fpc_val_sint_shortstr
fpc_val_sint_shortstr:
	GLOBAL FPC_VAL_SINT_SHORTSTR
FPC_VAL_SINT_SHORTSTR:
		push	bp
		mov	bp,sp
		sub	sp,26
		mov	word [bp-2],0
		mov	word [bp-4],0
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-13]
		push	ax
		lea	ax,[bp-11]
		push	ax
		call	SYSTEM_$$_INITVAL$SHORTSTRING$BOOLEAN$BYTE$$SMALLINT
		mov	bx,word [bp+4]
		mov	word [bx],ax
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+4]
		cmp	ax,word [bx]
		jl	..@j7403
		jmp	..@j7404
..@j7403:
		jmp	..@j7389
..@j7404:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-26],al
		mov	byte [bp-25],0
		mov	si,word [bp-26]
		cmp	byte [bx+si],0
		je	..@j7405
		jmp	..@j7406
..@j7405:
		mov	bx,word [bp+4]
		cmp	word [bx],1
		jg	..@j7409
		jmp	..@j7408
..@j7409:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	ax,word [si]
		dec	ax
		mov	byte [bp-24],al
		mov	byte [bp-23],0
		mov	si,word [bp-24]
		cmp	byte [bx+si],48
		je	..@j7407
		jmp	..@j7408
..@j7407:
		mov	bx,word [bp+4]
		mov	word [bx],0
..@j7408:
		jmp	..@j7389
..@j7406:
		mov	cl,byte [bp-11]
		mov	ch,0
		mov	ax,-1
		xor	dx,dx
		div	cx
		mov	word [bp-8],ax
		cmp	byte [bp-11],10
		je	..@j7414
		jmp	..@j7415
..@j7414:
		mov	al,byte [bp-13]
		mov	ah,0
		add	ax,32767
		mov	word [bp-10],ax
		jmp	..@j7420
..@j7415:
		mov	word [bp-10],-1
..@j7420:
		jmp	..@j7424
	ALIGN 2
..@j7423:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-16],al
		mov	byte [bp-15],0
		mov	si,word [bp-16]
		mov	al,byte [bx+si]
		test	al,al
		je	..@j7431
		sub	al,48
		jb	..@j7427
		sub	al,9
		jbe	..@j7428
		sub	al,8
		jb	..@j7427
		sub	al,5
		jbe	..@j7429
		sub	al,27
		jb	..@j7427
		sub	al,5
		jbe	..@j7430
		jmp	..@j7427
..@j7428:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-20],al
		mov	byte [bp-19],0
		mov	si,word [bp-20]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,48
		mov	byte [bp-12],al
		jmp	..@j7426
..@j7429:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-22],al
		mov	byte [bp-21],0
		mov	si,word [bp-22]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,55
		mov	byte [bp-12],al
		jmp	..@j7426
..@j7430:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-18],al
		mov	byte [bp-17],0
		mov	si,word [bp-18]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,87
		mov	byte [bp-12],al
		jmp	..@j7426
..@j7431:
		jmp	..@j7425
		jmp	..@j7426
..@j7427:
		mov	byte [bp-12],16
..@j7426:
		mov	ax,word [bp-4]
		mov	word [bp-6],ax
		mov	dl,byte [bp-11]
		mov	dh,0
		mov	ax,word [bp-4]
		mul	dx
		mov	word [bp-4],ax
		mov	al,byte [bp-12]
		cmp	al,byte [bp-11]
		jae	..@j7444
		jmp	..@j7447
..@j7447:
		mov	dx,word [bp-10]
		mov	cx,0
		mov	bx,0
		mov	al,byte [bp-12]
		mov	ah,0
		sub	dx,ax
		sbb	cx,bx
		cmp	dx,word [bp-4]
		jb	..@j7444
		jmp	..@j7446
..@j7446:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-8]
		ja	..@j7444
		jmp	..@j7445
..@j7444:
		mov	word [bp-2],0
		jmp	..@j7389
..@j7445:
		mov	dl,byte [bp-12]
		mov	dh,0
		mov	ax,word [bp-4]
		add	ax,dx
		mov	word [bp-4],ax
		mov	bx,word [bp+4]
		inc	word [bx]
..@j7424:
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+4]
		cmp	ax,word [bx]
		jge	..@j7423
		jmp	..@j7425
..@j7425:
		mov	bx,word [bp+4]
		mov	word [bx],0
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		cmp	byte [bp-13],0
		jne	..@j7456
		jmp	..@j7457
..@j7456:
		mov	ax,word [bp-2]
		neg	ax
		mov	word [bp-2],ax
..@j7457:
		cmp	byte [bp-13],0
		je	..@j7462
		jmp	..@j7461
..@j7462:
		cmp	byte [bp-11],10
		jne	..@j7460
		jmp	..@j7461
..@j7460:
		mov	ax,word [bp+8]
		cmp	ax,1
		jl	..@j7464
		dec	ax
		je	..@j7465
		dec	ax
		je	..@j7466
		jmp	..@j7464
..@j7465:
		mov	al,byte [bp-2]
		cbw
		mov	dx,ax
		mov	word [bp-2],dx
		jmp	..@j7463
..@j7466:
		mov	ax,word [bp-2]
		mov	word [bp-2],ax
		jmp	..@j7463
..@j7464:
..@j7463:
..@j7461:
..@j7389:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_INITVAL$SHORTSTRING$BOOLEAN$BYTE$$SMALLINT
