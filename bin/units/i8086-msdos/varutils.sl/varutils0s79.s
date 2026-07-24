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
	GLOBAL VARUTILS_$$_VARIANTARRAYTYPE$PVARARRAY$$TVARIANTARRAYTYPE
VARUTILS_$$_VARIANTARRAYTYPE$PVARARRAY$$TVARIANTARRAYTYPE:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		and	ax,1024
		test	ax,ax
		jne	..@j4722
		jmp	..@j4724
..@j4724:
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		and	ax,512
		test	ax,ax
		jne	..@j4722
		jmp	..@j4723
..@j4722:
		mov	word [bp-4],1
		mov	word [bp-2],0
		jmp	..@j4727
..@j4723:
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		and	ax,256
		test	ax,ax
		jne	..@j4728
		jmp	..@j4729
..@j4728:
		mov	word [bp-4],2
		mov	word [bp-2],0
		jmp	..@j4732
..@j4729:
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		and	ax,2048
		test	ax,ax
		jne	..@j4733
		jmp	..@j4734
..@j4733:
		mov	word [bp-4],3
		mov	word [bp-2],0
		jmp	..@j4737
..@j4734:
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j4737:
..@j4732:
..@j4727:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
