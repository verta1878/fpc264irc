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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_SAVETOSTREAM$TSTREAM
CLASSES$_$TSTRINGS_$__$$_SAVETOSTREAM$TSTREAM:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	word [bp-2],0
		mov	ax,1
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j8809
		push	word [bp+6]
		lea	ax,[bp-2]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+68]
		call	ax
		cmp	word [bp-2],0
		je	..@j8815
		jmp	..@j8816
..@j8815:
		jmp	..@j8809
..@j8816:
		push	word [bp+4]
		mov	ax,word [bp-2]
		push	ax
		mov	bx,word [bp-2]
		test	bx,bx
		je	..@j8823
		mov	bx,word [bx-2]
..@j8823:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		call	CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
..@j8809:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j8810
		call	FPC_RERAISE
..@j8810:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
