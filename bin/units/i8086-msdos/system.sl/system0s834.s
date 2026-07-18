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
	GLOBAL SYSTEM_$$_FINALIZEUNITS
SYSTEM_$$_FINALIZEUNITS:
	GLOBAL FPC_FINALIZEUNITS
FPC_FINALIZEUNITS:
		push	bp
		mov	bp,sp
		jmp	..@j17696
	ALIGN 2
..@j17695:
		dec	word [INITFINAL+2]
		mov	ax,word [INITFINAL+2]
		mov	bx,ax
		inc	bx
		mov	cl,2
		shl	bx,cl
		cmp	word [INITFINAL+bx+2],0
		jne	..@j17698
		jmp	..@j17699
..@j17698:
		mov	bx,word [INITFINAL+2]
		inc	bx
		mov	cl,2
		shl	bx,cl
		mov	ax,word [INITFINAL+bx+2]
		call	ax
..@j17699:
..@j17696:
		cmp	word [INITFINAL+2],0
		jg	..@j17695
		jmp	..@j17697
..@j17697:
		mov	sp,bp
		pop	bp
		ret
EXTERN	INITFINAL
