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
	GLOBAL CLASSES$_$TFPLIST_$__$$_EXPAND$$TFPLIST
CLASSES$_$TFPLIST_$__$$_EXPAND$$TFPLIST:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx+4]
		cmp	ax,word [si+6]
		jl	..@j4952
		jmp	..@j4953
..@j4952:
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
		jmp	..@j4950
..@j4953:
		mov	bx,word [bp+4]
		cmp	word [bx+6],128
		jg	..@j4956
		jmp	..@j4957
..@j4956:
		mov	bx,word [bp+4]
		mov	ax,word [bx+6]
		mov	cl,2
		shr	ax,cl
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-6],cx
		mov	word [bp-4],ax
		jmp	..@j4960
..@j4957:
		mov	bx,word [bp+4]
		cmp	word [bx+6],8
		jg	..@j4961
		jmp	..@j4962
..@j4961:
		mov	word [bp-6],16
		mov	word [bp-4],0
		jmp	..@j4965
..@j4962:
		mov	word [bp-6],4
		mov	word [bp-4],0
..@j4965:
..@j4960:
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	ax,word [bx+6]
		cwd
		mov	cx,word [bp-6]
		mov	bx,word [bp-4]
		add	cx,ax
		adc	bx,dx
		push	cx
		call	CLASSES$_$TFPLIST_$__$$_SETCAPACITY$SMALLINT
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
..@j4950:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TFPLIST_$__$$_SETCAPACITY$SMALLINT
