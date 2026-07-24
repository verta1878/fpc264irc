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
	GLOBAL CLASSES$_$TSTRINGSTREAM_$__$$_WRITE$formal$LONGINT$$LONGINT
CLASSES$_$TSTRINGSTREAM_$__$$_WRITE$formal$LONGINT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
		mov	bx,word [bp+10]
		mov	ax,word [bx+4]
		cwd
		mov	bx,word [bp+4]
		mov	cx,word [bp+6]
		add	bx,ax
		adc	cx,dx
		mov	word [bp-12],bx
		mov	word [bp-10],cx
		mov	word [bp-12],bx
		mov	word [bp-10],cx
		mov	ax,word [bp-12]
		mov	word [bp-8],ax
		mov	ax,word [bp-10]
		mov	word [bp-6],ax
		mov	cl,15
		sar	word [bp-6],cl
		mov	ax,word [bp-6]
		mov	word [bp-8],ax
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+56]
		call	ax
		mov	si,dx
		mov	dx,bx
		cmp	word [bp-6],ax
		jg	..@j2184
		jl	..@j2185
		cmp	word [bp-8],dx
		ja	..@j2184
		jb	..@j2185
		cmp	word [bp-10],cx
		ja	..@j2184
		jb	..@j2185
		cmp	word [bp-12],si
		ja	..@j2184
		jmp	..@j2185
..@j2184:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	ax,word [bx+4]
		cwd
		mov	bx,word [bp+4]
		mov	cx,word [bp+6]
		add	bx,ax
		adc	cx,dx
		push	cx
		push	bx
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
..@j2185:
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+2]
		test	bx,bx
		jne	..@j2196
		mov	bx,word FPC_EMPTYCHAR
..@j2196:
		mov	si,word [bp+10]
		mov	si,word [si+4]
		lea	ax,[bx+si]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+10]
		mov	ax,word [bx+4]
		cwd
		mov	si,word [bp+4]
		mov	cx,word [bp+6]
		add	si,ax
		adc	cx,dx
		mov	bx,word [bp+10]
		mov	word [bx+4],si
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	FPC_EMPTYCHAR
