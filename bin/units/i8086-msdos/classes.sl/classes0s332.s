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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_WRITEDATA$TWRITER
CLASSES$_$TSTRINGS_$__$$_WRITEDATA$TWRITER:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	word [bp-18],0
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
		jne	..@j7689
		push	word [bp+4]
		call	CLASSES$_$TWRITER_$__$$_WRITELISTBEGIN
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		dec	ax
		mov	word [bp-20],ax
		mov	word [bp-2],0
		mov	ax,word [bp-20]
		cmp	ax,word [bp-2]
		jl	..@j7698
		dec	word [bp-2]
	ALIGN 2
..@j7699:
		inc	word [bp-2]
		push	word [bp+4]
		push	word [bp+6]
		lea	ax,[bp-18]
		push	ax
		push	word [bp-2]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		push	word [bp-18]
		call	CLASSES$_$TWRITER_$__$$_WRITESTRING$ANSISTRING
		mov	ax,word [bp-20]
		cmp	ax,word [bp-2]
		jg	..@j7699
..@j7698:
		push	word [bp+4]
		call	CLASSES$_$TWRITER_$__$$_WRITELISTEND
..@j7689:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j7690
		call	FPC_RERAISE
..@j7690:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TWRITER_$__$$_WRITELISTEND
EXTERN	CLASSES$_$TWRITER_$__$$_WRITESTRING$ANSISTRING
EXTERN	CLASSES$_$TWRITER_$__$$_WRITELISTBEGIN
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
