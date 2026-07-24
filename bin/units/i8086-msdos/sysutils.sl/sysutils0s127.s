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
	GLOBAL SYSUTILS_$$_ISVALIDIDENT$ANSISTRING$BOOLEAN$BOOLEAN$$BOOLEAN
SYSUTILS_$$_ISVALIDIDENT$ANSISTRING$BOOLEAN$BOOLEAN$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j3570
		mov	bx,word [bx-2]
..@j3570:
		mov	word [bp-6],bx
		cmp	word [bp-6],1
		jl	..@j3571
		jmp	..@j3572
..@j3571:
		mov	byte [bp-1],0
		jmp	..@j3566
..@j3572:
		mov	byte [bp-2],1
		mov	ax,word [bp-6]
		mov	word [bp-4],1
		cmp	ax,word [bp-4]
		jl	..@j3580
		dec	word [bp-4]
	ALIGN 2
..@j3581:
		inc	word [bp-4]
		cmp	byte [bp-2],0
		jne	..@j3582
		jmp	..@j3583
..@j3582:
		mov	bx,word [bp+8]
		mov	si,word [bp-4]
		mov	dl,byte [bx+si-1]
		mov	dh,0
		sub	dx,65
		cmp	dx,26
		jb	..@j3586
		cmp	dx,30
		stc
		je	..@j3586
		sub	dx,32
		cmp	dx,26
		jb	..@j3586
..@j3586:
		mov	dl,0
		jnc	..@j3587
		inc	dx
..@j3587:
		mov	byte [bp-1],dl
		mov	byte [bp-2],0
		jmp	..@j3590
..@j3583:
		cmp	byte [bp+6],0
		jne	..@j3593
		jmp	..@j3592
..@j3593:
		mov	bx,word [bp+8]
		mov	si,word [bp-4]
		cmp	byte [bx+si-1],46
		je	..@j3591
		jmp	..@j3592
..@j3591:
		cmp	byte [bp+4],0
		jne	..@j3594
		jmp	..@j3595
..@j3594:
		mov	dx,word [bp-4]
		cmp	dx,word [bp-6]
		mov	dl,0
		jge	..@j3598
		inc	dx
..@j3598:
		mov	byte [bp-1],dl
		mov	byte [bp-2],1
..@j3595:
		jmp	..@j3601
..@j3592:
		mov	bx,word [bp+8]
		mov	si,word [bp-4]
		mov	dl,byte [bx+si-1]
		mov	dh,0
		sub	dx,48
		cmp	dx,10
		jb	..@j3604
		sub	dx,17
		cmp	dx,26
		jb	..@j3604
		cmp	dx,30
		stc
		je	..@j3604
		sub	dx,32
		cmp	dx,26
		jb	..@j3604
..@j3604:
		mov	dl,0
		jnc	..@j3605
		inc	dx
..@j3605:
		mov	byte [bp-1],dl
..@j3601:
..@j3590:
		cmp	byte [bp-1],0
		je	..@j3606
		jmp	..@j3607
..@j3606:
		jmp	..@j3580
..@j3607:
		cmp	ax,word [bp-4]
		jg	..@j3581
..@j3580:
..@j3566:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
