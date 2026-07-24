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
	GLOBAL OBJECTS$_$TSTRCOLLECTION_$__$$_COMPARE$POINTER$POINTER$$LONGINT
OBJECTS$_$TSTRCOLLECTION_$__$$_COMPARE$POINTER$POINTER$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	ax,word [bp+6]
		mov	word [bp-14],ax
		mov	ax,word [bp+4]
		mov	word [bp-16],ax
		mov	word [bp-8],0
		mov	word [bp-6],0
		cmp	word [bp-14],0
		jne	..@j2432
		jmp	..@j2433
..@j2432:
		jmp	..@j2435
	ALIGN 2
..@j2434:
		add	word [bp-8],1
		adc	word [bp-6],0
..@j2435:
		mov	bx,word [bp-14]
		mov	si,word [bp-8]
		cmp	byte [bx+si],0
		jne	..@j2434
		jmp	..@j2436
..@j2436:
..@j2433:
		mov	word [bp-12],0
		mov	word [bp-10],0
		cmp	word [bp-16],0
		jne	..@j2439
		jmp	..@j2440
..@j2439:
		jmp	..@j2442
	ALIGN 2
..@j2441:
		add	word [bp-12],1
		adc	word [bp-10],0
..@j2442:
		mov	bx,word [bp-16]
		mov	si,word [bp-12]
		cmp	byte [bx+si],0
		jne	..@j2441
		jmp	..@j2443
..@j2443:
..@j2440:
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		cmp	ax,word [bp-10]
		jl	..@j2444
		jg	..@j2445
		cmp	dx,word [bp-12]
		jb	..@j2444
		jmp	..@j2445
		jmp	..@j2445
..@j2444:
		mov	ax,word [bp-8]
		mov	word [bp-12],ax
		mov	ax,word [bp-6]
		mov	word [bp-10],ax
..@j2445:
		mov	word [bp-8],0
		mov	word [bp-6],0
		jmp	..@j2451
	ALIGN 2
..@j2450:
		add	word [bp-8],1
		adc	word [bp-6],0
..@j2451:
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		cmp	ax,word [bp-10]
		jl	..@j2453
		jg	..@j2452
		cmp	dx,word [bp-12]
		jb	..@j2453
		jmp	..@j2452
		jmp	..@j2452
..@j2453:
		mov	bx,word [bp-14]
		mov	si,word [bp-8]
		mov	ax,word [bp-16]
		mov	word [bp-22],ax
		mov	di,word [bp-8]
		mov	al,byte [bx+si]
		mov	bx,word [bp-22]
		cmp	al,byte [bx+di]
		je	..@j2450
		jmp	..@j2452
..@j2452:
		mov	bx,word [bp-14]
		mov	si,word [bp-8]
		mov	ax,word [bp-16]
		mov	word [bp-18],ax
		mov	di,word [bp-8]
		mov	al,byte [bx+si]
		mov	bx,word [bp-18]
		cmp	al,byte [bx+di]
		je	..@j2454
		jmp	..@j2455
..@j2454:
		mov	word [bp-4],0
		mov	word [bp-2],0
		jmp	..@j2458
..@j2455:
		mov	bx,word [bp-14]
		mov	si,word [bp-8]
		mov	ax,word [bp-16]
		mov	word [bp-20],ax
		mov	di,word [bp-8]
		mov	al,byte [bx+si]
		mov	bx,word [bp-20]
		cmp	al,byte [bx+di]
		jb	..@j2459
		jmp	..@j2460
..@j2459:
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		jmp	..@j2463
..@j2460:
		mov	word [bp-4],1
		mov	word [bp-2],0
..@j2463:
..@j2458:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
