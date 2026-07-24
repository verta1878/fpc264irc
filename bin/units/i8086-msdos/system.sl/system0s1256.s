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
	GLOBAL SYSTEM_$$_MEMAVAIL$$WORD
SYSTEM_$$_MEMAVAIL$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [TC_$SYSTEM_$$_HEAPEND]
		mov	dx,word [TC_$SYSTEM_$$_HEAPPTR]
		sub	ax,dx
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		ja	..@j26350
		jmp	..@j26351
..@j26350:
		sub	word [bp-2],2
..@j26351:
		mov	ax,word [TC_$SYSTEM_$$_FREELIST]
		mov	word [bp-4],ax
		jmp	..@j26355
	ALIGN 2
..@j26354:
		mov	bx,word [bp-4]
		mov	ax,word [bx+2]
		mov	word [bp-6],ax
		mov	ax,word [bp-6]
		mov	dx,0
		sub	ax,2
		sbb	dx,0
		add	word [bp-2],ax
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		mov	word [bp-4],ax
..@j26355:
		mov	ax,word [bp-4]
		cmp	ax,word [TC_$SYSTEM_$$_HEAPPTR]
		jne	..@j26354
		jmp	..@j26356
..@j26356:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
EXTERN	TC_$SYSTEM_$$_FREELIST
EXTERN	TC_$SYSTEM_$$_HEAPPTR
EXTERN	TC_$SYSTEM_$$_HEAPEND
