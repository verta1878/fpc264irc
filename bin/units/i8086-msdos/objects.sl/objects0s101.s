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
	GLOBAL OBJECTS$_$TSTRINGCOLLECTION_$__$$_COMPARE$POINTER$POINTER$$LONGINT
OBJECTS$_$TSTRINGCOLLECTION_$__$$_COMPARE$POINTER$POINTER$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,40
		mov	ax,word [bp+6]
		mov	word [bp-14],ax
		mov	ax,word [bp+4]
		mov	word [bp-16],ax
		mov	bx,word [bp-14]
		mov	si,word [bp-16]
		mov	al,byte [bx]
		cmp	al,byte [si]
		jb	..@j2369
		jmp	..@j2370
..@j2369:
		mov	bx,word [bp-14]
		mov	ax,0
		mov	dl,byte [bx]
		mov	dh,0
		mov	word [bp-12],dx
		mov	word [bp-10],ax
		jmp	..@j2373
..@j2370:
		mov	bx,word [bp-16]
		mov	ax,0
		mov	dl,byte [bx]
		mov	dh,0
		mov	word [bp-12],dx
		mov	word [bp-10],ax
..@j2373:
		mov	word [bp-8],1
		mov	word [bp-6],0
		jmp	..@j2379
	ALIGN 2
..@j2378:
		add	word [bp-8],1
		adc	word [bp-6],0
..@j2379:
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		cmp	ax,word [bp-10]
		jl	..@j2381
		jg	..@j2380
		cmp	dx,word [bp-12]
		jb	..@j2381
		jmp	..@j2380
		jmp	..@j2380
..@j2381:
		mov	bx,word [bp-14]
		mov	al,byte [bp-8]
		mov	byte [bp-32],al
		mov	byte [bp-31],0
		mov	ax,word [bp-16]
		mov	word [bp-24],ax
		mov	al,byte [bp-8]
		mov	byte [bp-40],al
		mov	byte [bp-39],0
		mov	si,word [bp-32]
		mov	al,byte [bx+si]
		mov	bx,word [bp-24]
		mov	si,word [bp-40]
		cmp	al,byte [bx+si]
		je	..@j2378
		jmp	..@j2380
..@j2380:
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		cmp	ax,word [bp-10]
		jne	..@j2383
		cmp	dx,word [bp-12]
		jne	..@j2383
		jmp	..@j2382
		jmp	..@j2383
..@j2382:
		mov	bx,word [bp-14]
		mov	al,byte [bp-8]
		mov	byte [bp-30],al
		mov	byte [bp-29],0
		mov	ax,word [bp-16]
		mov	word [bp-22],ax
		mov	al,byte [bp-8]
		mov	byte [bp-36],al
		mov	byte [bp-35],0
		mov	si,word [bp-30]
		mov	al,byte [bx+si]
		mov	bx,word [bp-22]
		mov	si,word [bp-36]
		cmp	al,byte [bx+si]
		jb	..@j2384
		jmp	..@j2385
..@j2384:
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		jmp	..@j2388
..@j2385:
		mov	bx,word [bp-14]
		mov	al,byte [bp-8]
		mov	byte [bp-26],al
		mov	byte [bp-25],0
		mov	ax,word [bp-16]
		mov	word [bp-20],ax
		mov	al,byte [bp-8]
		mov	byte [bp-34],al
		mov	byte [bp-33],0
		mov	si,word [bp-26]
		mov	al,byte [bx+si]
		mov	bx,word [bp-20]
		mov	si,word [bp-34]
		cmp	al,byte [bx+si]
		ja	..@j2389
		jmp	..@j2390
..@j2389:
		mov	word [bp-4],1
		mov	word [bp-2],0
		jmp	..@j2393
..@j2390:
		mov	bx,word [bp-14]
		mov	si,word [bp-16]
		mov	al,byte [bx]
		cmp	al,byte [si]
		ja	..@j2394
		jmp	..@j2395
..@j2394:
		mov	word [bp-4],1
		mov	word [bp-2],0
		jmp	..@j2398
..@j2395:
		mov	bx,word [bp-14]
		mov	si,word [bp-16]
		mov	al,byte [bx]
		cmp	al,byte [si]
		jb	..@j2399
		jmp	..@j2400
..@j2399:
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		jmp	..@j2403
..@j2400:
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j2403:
..@j2398:
..@j2393:
..@j2388:
		jmp	..@j2406
..@j2383:
		mov	bx,word [bp-14]
		mov	al,byte [bp-8]
		mov	byte [bp-28],al
		mov	byte [bp-27],0
		mov	ax,word [bp-16]
		mov	word [bp-18],ax
		mov	al,byte [bp-8]
		mov	byte [bp-38],al
		mov	byte [bp-37],0
		mov	si,word [bp-28]
		mov	al,byte [bx+si]
		mov	bx,word [bp-18]
		mov	si,word [bp-38]
		cmp	al,byte [bx+si]
		jb	..@j2407
		jmp	..@j2408
..@j2407:
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		jmp	..@j2411
..@j2408:
		mov	word [bp-4],1
		mov	word [bp-2],0
..@j2411:
..@j2406:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
