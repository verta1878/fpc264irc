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
	GLOBAL CLASSES$_$TSTREAMADAPTER_$__$$_SETSIZE$QWORD$$HRESULT
CLASSES$_$TSTREAMADAPTER_$__$$_SETSIZE$QWORD$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,32
		mov	bx,word [bp+4]
		cmp	byte [bx+14],0
		jne	..@j2641
		jmp	..@j2642
..@j2641:
		mov	word [bp-4],258
		mov	word [bp-2],-32765
		jmp	..@j2639
..@j2642:
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
		jne	..@j2647
		mov	bx,word [bp+4]
		push	word [bx+8]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	bx,word [bx]
		mov	ax,word [bx+58]
		call	ax
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j2647:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j2649
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
		jne	..@j2657
		mov	word [bp-4],16389
		mov	word [bp-2],-32768
..@j2657:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j2660
		call	FPC_RAISE_NESTED
..@j2660:
		call	FPC_DONEEXCEPTION
		jmp	..@j2649
..@j2649:
..@j2639:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
