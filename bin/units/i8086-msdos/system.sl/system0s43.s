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
	GLOBAL fpc_hugeptr_inc_longint
fpc_hugeptr_inc_longint:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+8]
		mov	cx,word [bx]
		mov	ax,word [bx+2]
		mov	ax,0
		mov	bx,word [bp+4]
		mov	dx,word [bp+6]
		add	bx,cx
		adc	dx,ax
		mov	word [bp-4],bx
		mov	word [bp-2],dx
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	ax,word [bx+2]
		mov	word [bp-8],ax
		mov	word [bp-6],0
		mov	ax,word [TC_$SYSTEM_$$_SELECTORINC]
		mov	dx,0
		push	dx
		push	ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	ax,dx
		mov	dx,0
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		add	ax,word [bp-8]
		adc	dx,word [bp-6]
		push	ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	dx,0
		push	ax
		call	SYSTEM_$$_PTR$WORD$WORD$$FARPOINTER
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_PTR$WORD$WORD$$FARPOINTER
EXTERN	fpc_mul_longint
EXTERN	TC_$SYSTEM_$$_SELECTORINC
