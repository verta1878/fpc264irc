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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_LOADFROMSTREAM$TSTREAM
CLASSES$_$TSTRINGS_$__$$_LOADFROMSTREAM$TSTREAM:
		push	bp
		mov	bp,sp
		sub	sp,46
		mov	word [bp-2],0
		mov	ax,1
		push	ax
		lea	ax,[bp-30]
		push	ax
		lea	ax,[bp-24]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j8678
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_BEGINUPDATE
		mov	ax,1
		push	ax
		lea	ax,[bp-44]
		push	ax
		lea	ax,[bp-38]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j8682
		lea	ax,[bp-2]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	word [bp-10],0
		mov	word [bp-8],0
		mov	word [bp-14],1
		mov	word [bp-12],0
	ALIGN 2
..@j8693:
		mov	ax,word [bp-14]
		mov	dx,word [bp-12]
		mov	cx,10
..@j8698:
		shl	ax,1
		rcl	dx,1
		loop	..@j8698
		mov	word [bp-18],ax
		mov	word [bp-16],dx
		lea	ax,[bp-2]
		push	ax
		mov	bx,word [bp-10]
		mov	cx,word [bp-8]
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		add	ax,bx
		adc	dx,cx
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		push	word [bp+4]
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		add	ax,1
		adc	dx,0
		mov	si,ax
		lea	ax,[bx+si-1]
		push	ax
		push	word [bp-16]
		push	word [bp-18]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		mov	dx,word [bp-18]
		mov	ax,word [bp-16]
		add	word [bp-10],dx
		adc	word [bp-8],ax
		mov	ax,word [bp-14]
		mov	dx,word [bp-12]
		cmp	dx,8192
		jl	..@j8715
		jg	..@j8716
		cmp	ax,0
		jb	..@j8715
		jmp	..@j8716
..@j8715:
		mov	ax,word [bp-14]
		mov	dx,word [bp-12]
		shl	ax,1
		rcl	dx,1
		mov	word [bp-14],ax
		mov	word [bp-12],dx
..@j8716:
		mov	dx,word [bp-6]
		mov	ax,word [bp-4]
		cmp	ax,word [bp-16]
		jne	..@j8695
		cmp	dx,word [bp-18]
		jne	..@j8695
		jmp	..@j8693
		jmp	..@j8693
..@j8695:
		lea	ax,[bp-2]
		push	ax
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		mov	cx,word [bp-18]
		mov	bx,word [bp-16]
		sub	ax,cx
		sbb	dx,bx
		mov	cx,word [bp-6]
		mov	bx,word [bp-4]
		add	cx,ax
		adc	bx,dx
		push	cx
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		push	word [bp+6]
		push	word [bp-2]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+76]
		call	ax
		lea	ax,[bp-2]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
..@j8682:
		call	FPC_POPADDRSTACK
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_ENDUPDATE
		pop	ax
		test	ax,ax
		je	..@j8683
		call	FPC_RERAISE
..@j8683:
..@j8678:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j8679
		call	FPC_RERAISE
..@j8679:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_RERAISE
EXTERN	CLASSES$_$TSTRINGS_$__$$_ENDUPDATE
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_unique
EXTERN	fpc_ansistr_setlength
EXTERN	fpc_ansistr_assign
EXTERN	CLASSES$_$TSTRINGS_$__$$_BEGINUPDATE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
