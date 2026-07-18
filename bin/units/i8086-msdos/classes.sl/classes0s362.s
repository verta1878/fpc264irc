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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_EQUALS$TSTRINGS$$BOOLEAN
CLASSES$_$TSTRINGS_$__$$_EQUALS$TSTRINGS$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,32
		mov	word [bp-28],0
		mov	word [bp-26],0
		mov	ax,1
		push	ax
		lea	ax,[bp-22]
		push	ax
		lea	ax,[bp-16]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j8408
		mov	byte [bp-1],0
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-10],cx
		mov	word [bp-8],ax
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,word [bp-8]
		jne	..@j8416
		cmp	cx,word [bp-10]
		jne	..@j8416
		jmp	..@j8417
		jmp	..@j8417
..@j8416:
		jmp	..@j8408
..@j8417:
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-32],ax
		mov	word [bp-30],dx
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	ax,word [bp-30]
		cmp	ax,word [bp-4]
		jl	..@j8423
		jg	..@j8425
		mov	ax,word [bp-32]
		cmp	ax,word [bp-6]
		jb	..@j8423
..@j8425:
		sub	word [bp-6],1
		sbb	word [bp-4],0
	ALIGN 2
..@j8424:
		add	word [bp-6],1
		adc	word [bp-4],0
		push	word [bp+6]
		lea	ax,[bp-26]
		push	ax
		push	word [bp-6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		push	word [bp-26]
		push	word [bp+4]
		lea	ax,[bp-28]
		push	ax
		push	word [bp-6]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		push	word [bp-28]
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j8426
		cmp	cx,0
		jne	..@j8426
		jmp	..@j8427
..@j8426:
		jmp	..@j8408
..@j8427:
		mov	ax,word [bp-30]
		cmp	ax,word [bp-4]
		jg	..@j8424
		jl	..@j8444
		mov	ax,word [bp-32]
		cmp	ax,word [bp-6]
		ja	..@j8424
..@j8444:
..@j8423:
		mov	byte [bp-1],1
..@j8408:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-28]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-26]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j8409
		call	FPC_RERAISE
..@j8409:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_compare_equal
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
