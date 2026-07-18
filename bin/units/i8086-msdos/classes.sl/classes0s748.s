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
	GLOBAL CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTR$ANSISTRING
CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTR$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,14
		push	word [bp+4]
		call	fpc_ansistr_incr_ref
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
		jne	..@j16566
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j16570
		mov	bx,word [bx-2]
..@j16570:
		cmp	bx,0
		jg	..@j16568
		jmp	..@j16569
..@j16568:
		mov	bx,word [bp+6]
		push	word [bx+8]
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j16577
		mov	bx,word [bx-2]
..@j16577:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		mov	bx,word [bp+6]
		mov	bx,word [bx+8]
		mov	bx,word [bx]
		mov	ax,word [bx+66]
		call	ax
..@j16569:
..@j16566:
		call	FPC_POPADDRSTACK
		lea	ax,[bp+4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j16567
		call	FPC_RERAISE
..@j16567:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_ansistr_incr_ref
