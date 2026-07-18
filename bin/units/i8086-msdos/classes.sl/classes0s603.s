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
	GLOBAL CLASSES$_$TBASICACTIONLINK_$__$$_EXECUTE$TCOMPONENT$$BOOLEAN
CLASSES$_$TBASICACTIONLINK_$__$$_EXECUTE$TCOMPONENT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	bx,word [bp+6]
		mov	bx,word [bx+6]
		mov	ax,word [bp+4]
		mov	word [bx+28],ax
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
		jne	..@j13088
		mov	bx,word [bp+6]
		push	word [bx+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx+6]
		mov	bx,word [bx]
		mov	ax,word [bx+118]
		call	ax
		mov	byte [bp-1],al
..@j13088:
		call	FPC_POPADDRSTACK
		mov	bx,word [bp+6]
		cmp	word [bx+6],0
		jne	..@j13095
		jmp	..@j13096
..@j13095:
		mov	bx,word [bp+6]
		mov	bx,word [bx+6]
		mov	word [bx+28],0
..@j13096:
		pop	ax
		test	ax,ax
		je	..@j13089
		call	FPC_RERAISE
..@j13089:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
