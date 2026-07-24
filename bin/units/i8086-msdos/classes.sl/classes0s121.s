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
	GLOBAL CLASSES$_$TPROXYSTREAM_$__$$_CREATE$ISTREAM$$TPROXYSTREAM
CLASSES$_$TPROXYSTREAM_$__$$_CREATE$ISTREAM$$TPROXYSTREAM:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+6],1
		je	..@j2768
		jmp	..@j2769
..@j2768:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+8],ax
..@j2769:
		cmp	word [bp+8],0
		je	..@j2774
		jmp	..@j2775
..@j2774:
		jmp	..@j2766
..@j2775:
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j2778
		mov	bx,word [bp+8]
		lea	ax,[bx+2]
		push	ax
		push	word [bp+4]
		call	fpc_intf_assign
		cmp	word [bp+8],0
		jne	..@j2789
		jmp	..@j2788
..@j2789:
		cmp	word [bp+6],0
		jne	..@j2787
		jmp	..@j2788
..@j2787:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j2788:
..@j2778:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j2780
		mov	ax,1
		push	ax
		lea	ax,[bp-26]
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j2792
		cmp	word [bp+6],0
		jne	..@j2793
		jmp	..@j2794
..@j2793:
		push	word [bp+8]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j2794:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j2792:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j2799
		call	FPC_RAISE_NESTED
..@j2799:
		call	FPC_DONEEXCEPTION
		jmp	..@j2780
..@j2780:
..@j2766:
		mov	ax,word [bp+8]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_intf_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
