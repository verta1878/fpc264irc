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
	GLOBAL SYSTEM_$$_TINYGETALIGNEDMEM$WORD$WORD$$POINTER
SYSTEM_$$_TINYGETALIGNEDMEM$WORD$WORD$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,8
		cmp	word [bp+4],2
		jbe	..@j25953
		jmp	..@j25954
..@j25953:
		push	word [bp+6]
		call	SYSTEM_$$_GETMEM$WORD$$POINTER
		mov	word [bp-2],ax
		jmp	..@j25959
..@j25954:
		mov	dx,word [bp+6]
		mov	ax,word [bp+4]
		add	ax,dx
		mov	dx,0
		sub	ax,1
		sbb	dx,0
		push	ax
		call	SYSTEM_$$_GETMEM$WORD$$POINTER
		mov	word [bp-4],ax
		mov	ax,word [bp+4]
		mov	dx,0
		sub	ax,1
		sbb	dx,0
		mov	cx,word [bp-4]
		mov	bx,0
		add	cx,ax
		adc	bx,dx
		mov	word [bp-8],cx
		mov	ax,word [bp-8]
		xor	dx,dx
		div	word [bp+4]
		mov	bx,0
		mov	ax,word [bp-8]
		mov	cx,0
		sub	ax,dx
		sbb	cx,bx
		mov	word [bp-6],ax
		push	word [bp-4]
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		sub	ax,dx
		push	ax
		call	SYSTEM_$$_INTERNALTINYFREEMEM$POINTER$WORD
		mov	ax,word [bp-6]
		mov	word [bp-2],ax
..@j25959:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_INTERNALTINYFREEMEM$POINTER$WORD
EXTERN	SYSTEM_$$_GETMEM$WORD$$POINTER
