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
	GLOBAL OBJECTS$_$TCOLLECTION_$__$$_LASTTHAT$NEARPOINTER$$POINTER
OBJECTS$_$TCOLLECTION_$__$$_LASTTHAT$NEARPOINTER$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	bx,word [bp+6]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		mov	word [bp-6],dx
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		jl	..@j1779
		jg	..@j1781
		cmp	word [bp-6],1
		jb	..@j1779
..@j1781:
		add	word [bp-6],1
		adc	word [bp-4],0
	ALIGN 2
..@j1780:
		sub	word [bp-6],1
		sbb	word [bp-4],0
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
		jne	..@j1782
		jmp	..@j1783
..@j1782:
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
		jmp	..@j1776
..@j1783:
		cmp	word [bp-4],0
		jg	..@j1780
		jl	..@j1802
		cmp	word [bp-6],1
		ja	..@j1780
..@j1802:
..@j1779:
		mov	word [bp-2],0
..@j1776:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_GET_CALLER_FRAME$POINTER$NEARPOINTER$$POINTER
EXTERN	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
