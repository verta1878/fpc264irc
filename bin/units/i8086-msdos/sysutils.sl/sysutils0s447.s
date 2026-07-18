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
	GLOBAL SYSUTILS_$$_FINDEXCEPTMAPENTRY$LONGINT$$PEXCEPTMAPENTRY
SYSUTILS_$$_FINDEXCEPTMAPENTRY$LONGINT$$PEXCEPTMAPENTRY:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word [bp-6],0
		mov	word [bp-4],0
		sub	word [bp-6],1
		sbb	word [bp-4],0
	ALIGN 2
..@j14633:
		add	word [bp-6],1
		adc	word [bp-4],0
		mov	ax,word [bp-6]
		mov	bx,ax
		mov	ax,5
		mul	bx
		mov	bx,ax
		mov	ax,0
		mov	dl,byte [TC_$SYSUTILS_$$_EXCEPTMAP+bx]
		mov	dh,0
		cmp	ax,word [bp+6]
		jne	..@j14635
		cmp	dx,word [bp+4]
		jne	..@j14635
		jmp	..@j14634
		jmp	..@j14635
..@j14634:
		mov	bx,word [bp-6]
		mov	ax,5
		mul	bx
		mov	bx,ax
		lea	ax,[TC_$SYSUTILS_$$_EXCEPTMAP+bx]
		mov	word [bp-2],ax
		jmp	..@j14629
..@j14635:
		cmp	word [bp-4],0
		jl	..@j14633
		jg	..@j14638
		cmp	word [bp-6],28
		jb	..@j14633
..@j14638:
		mov	word [bp-2],0
..@j14629:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TC_$SYSUTILS_$$_EXCEPTMAP
