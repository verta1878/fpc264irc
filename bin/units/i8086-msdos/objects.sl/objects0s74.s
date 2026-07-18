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
	GLOBAL OBJECTS$_$TCOLLECTION_$__$$_FIRSTTHAT$NEARPOINTER$$POINTER
OBJECTS$_$TCOLLECTION_$__$$_FIRSTTHAT$NEARPOINTER$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,14
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	word [bp-14],ax
		mov	ax,word [bx+6]
		mov	word [bp-12],ax
		mov	word [bp-6],1
		mov	word [bp-4],0
		mov	ax,word [bp-12]
		cmp	ax,word [bp-4]
		jl	..@j1810
		jg	..@j1812
		mov	ax,word [bp-14]
		cmp	ax,word [bp-6]
		jb	..@j1810
..@j1812:
		sub	word [bp-6],1
		sbb	word [bp-4],0
	ALIGN 2
..@j1811:
		add	word [bp-6],1
		adc	word [bp-4],0
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		sub	ax,1
		sbb	dx,0
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	word [bp-8],ax
		push	bp
		call	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
		push	ax
		call	SYSTEM_$$_GET_CALLER_FRAME$POINTER$NEARPOINTER$$POINTER
		mov	word [bp-10],ax
		push	word [bp-10]
		push	word [bp-8]
		mov	ax,word [bp+4]
		call	ax
		test	al,al
		jne	..@j1813
		jmp	..@j1814
..@j1813:
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		sub	ax,1
		sbb	dx,0
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	word [bp-2],ax
		jmp	..@j1805
..@j1814:
		mov	ax,word [bp-12]
		cmp	ax,word [bp-4]
		jg	..@j1811
		jl	..@j1833
		mov	ax,word [bp-14]
		cmp	ax,word [bp-6]
		ja	..@j1811
..@j1833:
..@j1810:
		mov	word [bp-2],0
..@j1805:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_GET_CALLER_FRAME$POINTER$NEARPOINTER$$POINTER
EXTERN	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
