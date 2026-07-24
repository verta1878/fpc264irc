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
	GLOBAL SYSTEM_$$_INITINTERFACEPOINTERS$TCLASS$POINTER
SYSTEM_$$_INITINTERFACEPOINTERS$TCLASS$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
		jmp	..@j14619
	ALIGN 2
..@j14618:
		mov	bx,word [bp-2]
		mov	ax,word [bx+20]
		mov	word [bp-8],ax
		cmp	word [bp-8],0
		jne	..@j14623
		jmp	..@j14624
..@j14623:
		mov	bx,word [bp-8]
		mov	dx,word [bx]
		mov	ax,0
		mov	word [bp-6],dx
		mov	word [bp-4],ax
		mov	bx,word [bp-8]
		lea	ax,[bx+2]
		mov	word [bp-10],ax
		jmp	..@j14630
	ALIGN 2
..@j14629:
		mov	bx,word [bp-10]
		cmp	word [bx+8],0
		je	..@j14632
		jmp	..@j14633
..@j14632:
		mov	bx,word [bp+4]
		mov	si,word [bp-10]
		mov	si,word [si+4]
		lea	si,[bx+si]
		mov	bx,word [bp-10]
		mov	ax,word [bx+2]
		mov	word [si],ax
..@j14633:
		add	word [bp-10],12
		sub	word [bp-6],1
		sbb	word [bp-4],0
..@j14630:
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		cmp	dx,0
		jg	..@j14629
		jl	..@j14631
		cmp	ax,0
		ja	..@j14629
		jmp	..@j14631
..@j14631:
..@j14624:
		mov	bx,word [bp-2]
		mov	ax,word [bx+4]
		mov	word [bp-2],ax
..@j14619:
		cmp	word [bp-2],0
		jne	..@j14638
		jmp	..@j14620
..@j14638:
		mov	bx,word [bp-2]
		mov	ax,word FPC_EMPTYINTF
		cmp	ax,word [bx+20]
		jne	..@j14618
		jmp	..@j14620
..@j14620:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_EMPTYINTF
