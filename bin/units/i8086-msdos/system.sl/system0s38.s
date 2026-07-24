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
	GLOBAL fpc_hugeptr_add_longint
fpc_hugeptr_add_longint:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	dx,word [bp+8]
		mov	ax,word [bp+10]
		mov	ax,dx
		mov	dx,0
		mov	cx,word [bp+4]
		mov	bx,word [bp+6]
		add	cx,ax
		adc	bx,dx
		mov	word [bp-8],cx
		mov	word [bp-6],bx
		mov	ax,word [bp+8]
		mov	ax,word [bp+10]
		mov	word [bp-12],ax
		mov	word [bp-10],0
		mov	dx,word [TC_$SYSTEM_$$_SELECTORINC]
		mov	ax,0
		push	ax
		push	dx
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
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
		add	ax,word [bp-12]
		adc	dx,word [bp-10]
		push	ax
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		mov	dx,0
		push	ax
		call	SYSTEM_$$_PTR$WORD$WORD$$FARPOINTER
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_PTR$WORD$WORD$$FARPOINTER
EXTERN	fpc_mul_longint
EXTERN	TC_$SYSTEM_$$_SELECTORINC
