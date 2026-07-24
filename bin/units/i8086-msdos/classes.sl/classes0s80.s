BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TCUSTOMMEMORYSTREAM_$__$$_SEEK$INT64$TSEEKORIGIN$$INT64
CLASSES$_$TCUSTOMMEMORYSTREAM_$__$$_SEEK$INT64$TSEEKORIGIN$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	ax,word [bp+4]
		test	ax,ax
		je	..@j1744
		dec	ax
		je	..@j1746
		dec	ax
		je	..@j1745
		jmp	..@j1743
..@j1744:
		mov	bx,word [bp+16]
		mov	ax,word [bp+8]
		mov	word [bx+6],ax
		jmp	..@j1742
..@j1745:
		mov	bx,word [bp+16]
		mov	ax,word [bx+4]
		cwd
		mov	bx,ax
		mov	si,dx
		mov	cl,15
		sar	si,cl
		mov	bx,si
		add	ax,word [bp+8]
		adc	dx,word [bp+10]
		adc	bx,word [bp+12]
		adc	si,word [bp+14]
		mov	bx,word [bp+16]
		mov	word [bx+6],ax
		jmp	..@j1742
..@j1746:
		mov	bx,word [bp+16]
		mov	ax,word [bx+6]
		cwd
		mov	bx,ax
		mov	si,dx
		mov	cl,15
		sar	si,cl
		mov	bx,si
		add	ax,word [bp+8]
		adc	dx,word [bp+10]
		adc	bx,word [bp+12]
		adc	si,word [bp+14]
		mov	bx,word [bp+16]
		mov	word [bx+6],ax
		jmp	..@j1742
..@j1743:
..@j1742:
		mov	bx,word [bp+16]
		mov	ax,word [bx+6]
		cwd
		mov	bx,ax
		mov	si,dx
		mov	cl,15
		sar	si,cl
		mov	bx,si
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	word [bp-4],bx
		mov	word [bp-2],si
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	14
