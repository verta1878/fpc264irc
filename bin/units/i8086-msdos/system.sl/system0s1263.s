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
	GLOBAL SYSTEM_$$_REGISTERTINYHEAPBLOCK$POINTER$WORD
SYSTEM_$$_REGISTERTINYHEAPBLOCK$POINTER$WORD:
		push	bp
		mov	bp,sp
		sub	sp,6
		lea	ax,[bp+6]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_INTERNALTINYALIGN$POINTER$WORD
		cmp	word [TC_$SYSTEM_$$_HEAPORG],0
		je	..@j26439
		jmp	..@j26440
..@j26439:
		mov	ax,word [bp+6]
		mov	word [TC_$SYSTEM_$$_HEAPORG],ax
		mov	ax,word [bp+6]
		mov	word [TC_$SYSTEM_$$_HEAPPTR],ax
		mov	ax,word [bp+6]
		mov	word [TC_$SYSTEM_$$_FREELIST],ax
		mov	dx,word [bp+6]
		mov	ax,word [bp+4]
		add	ax,dx
		mov	word [TC_$SYSTEM_$$_HEAPEND],ax
		jmp	..@j26449
..@j26440:
		mov	ax,word [TC_$SYSTEM_$$_HEAPORG]
		cmp	ax,word [bp+6]
		ja	..@j26450
		jmp	..@j26451
..@j26450:
		mov	ax,word [bp+6]
		mov	word [TC_$SYSTEM_$$_HEAPORG],ax
..@j26451:
		mov	ax,word [bp+6]
		cmp	ax,word [TC_$SYSTEM_$$_HEAPEND]
		ja	..@j26454
		jmp	..@j26455
..@j26454:
		mov	ax,word [TC_$SYSTEM_$$_HEAPPTR]
		cmp	ax,word [TC_$SYSTEM_$$_HEAPEND]
		je	..@j26456
		jmp	..@j26457
..@j26456:
		mov	ax,word [TC_$SYSTEM_$$_FREELIST]
		cmp	ax,word [TC_$SYSTEM_$$_HEAPPTR]
		je	..@j26458
		jmp	..@j26459
..@j26458:
		mov	ax,word [bp+6]
		mov	word [TC_$SYSTEM_$$_FREELIST],ax
		jmp	..@j26462
..@j26459:
		mov	ax,word [TC_$SYSTEM_$$_FREELIST]
		mov	word [bp-4],ax
		jmp	..@j26466
	ALIGN 2
..@j26465:
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		mov	word [bp-4],ax
..@j26466:
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		cmp	ax,word [TC_$SYSTEM_$$_HEAPPTR]
		jne	..@j26465
		jmp	..@j26467
..@j26467:
		mov	bx,word [TC_$SYSTEM_$$_HEAPPTR]
		mov	ax,word [bp+6]
		mov	word [bx],ax
..@j26462:
		jmp	..@j26472
..@j26457:
		mov	ax,word [TC_$SYSTEM_$$_HEAPEND]
		mov	dx,word [TC_$SYSTEM_$$_HEAPPTR]
		sub	ax,dx
		mov	word [bp-6],ax
		mov	ax,word [bp-6]
		mov	bx,word [TC_$SYSTEM_$$_HEAPPTR]
		mov	word [bx+2],ax
		mov	bx,word [TC_$SYSTEM_$$_HEAPPTR]
		mov	ax,word [bp+6]
		mov	word [bx],ax
..@j26472:
		mov	ax,word [bp+6]
		mov	word [TC_$SYSTEM_$$_HEAPPTR],ax
		mov	dx,word [bp+6]
		mov	ax,word [bp+4]
		add	ax,dx
		mov	word [TC_$SYSTEM_$$_HEAPEND],ax
		jmp	..@j26485
..@j26455:
		mov	ax,word [bp+6]
		cmp	ax,word [TC_$SYSTEM_$$_HEAPEND]
		je	..@j26486
		jmp	..@j26487
..@j26486:
		mov	dx,word [bp+6]
		mov	ax,word [bp+4]
		add	ax,dx
		mov	word [TC_$SYSTEM_$$_HEAPEND],ax
		jmp	..@j26490
..@j26487:
		push	word [bp+6]
		push	word [bp+4]
		call	SYSTEM_$$_INTERNALTINYFREEMEM$POINTER$WORD
..@j26490:
..@j26485:
..@j26449:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_INTERNALTINYFREEMEM$POINTER$WORD
EXTERN	TC_$SYSTEM_$$_HEAPEND
EXTERN	TC_$SYSTEM_$$_FREELIST
EXTERN	TC_$SYSTEM_$$_HEAPPTR
EXTERN	TC_$SYSTEM_$$_HEAPORG
EXTERN	SYSTEM_$$_INTERNALTINYALIGN$POINTER$WORD
