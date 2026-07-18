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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_ADDSTRINGS$TSTRINGS
CLASSES$_$TSTRINGS_$__$$_ADDSTRINGS$TSTRINGS:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	word [bp-20],0
		mov	ax,1
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j8254
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		dec	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-24],cx
		mov	word [bp-22],ax
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	ax,word [bp-22]
		cmp	ax,word [bp-2]
		jl	..@j8261
		jg	..@j8263
		mov	ax,word [bp-24]
		cmp	ax,word [bp-4]
		jb	..@j8261
..@j8263:
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j8262:
		add	word [bp-4],1
		adc	word [bp-2],0
		push	word [bp+6]
		push	word [bp+4]
		lea	ax,[bp-20]
		push	ax
		push	word [bp-4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		push	word [bp-20]
		push	word [bp+4]
		push	word [bp-4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+66]
		call	ax
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+84]
		call	ax
		mov	ax,word [bp-22]
		cmp	ax,word [bp-2]
		jg	..@j8262
		jl	..@j8280
		mov	ax,word [bp-24]
		cmp	ax,word [bp-4]
		ja	..@j8262
..@j8280:
..@j8261:
..@j8254:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-20]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j8255
		call	FPC_RERAISE
..@j8255:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
