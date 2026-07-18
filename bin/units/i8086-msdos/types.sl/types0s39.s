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
	GLOBAL TYPES$_$TRECT_$__$$_CENTERPOINT$$TPOINT
TYPES$_$TRECT_$__$$_CENTERPOINT$$TPOINT:
		push	bp
		mov	bp,sp
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		mov	si,word [bp+6]
		mov	bx,word [bp+6]
		mov	ax,word [si+8]
		mov	dx,word [si+10]
		mov	cx,word [bx]
		mov	bx,word [bx+2]
		sub	ax,cx
		sbb	dx,bx
		push	dx
		push	ax
		call	fpc_div_longint
		mov	bx,word [bp+6]
		mov	cx,word [bx]
		mov	bx,word [bx+2]
		add	cx,ax
		adc	bx,dx
		mov	si,word [bp+4]
		mov	word [si],cx
		mov	word [si+2],bx
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		mov	si,word [bp+6]
		mov	bx,word [bp+6]
		mov	ax,word [si+12]
		mov	dx,word [si+14]
		mov	cx,word [bx+4]
		mov	bx,word [bx+6]
		sub	ax,cx
		sbb	dx,bx
		push	dx
		push	ax
		call	fpc_div_longint
		mov	bx,word [bp+6]
		mov	cx,word [bx+4]
		mov	bx,word [bx+6]
		add	cx,ax
		adc	bx,dx
		mov	si,word [bp+4]
		mov	word [si+4],cx
		mov	word [si+6],bx
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_div_longint
