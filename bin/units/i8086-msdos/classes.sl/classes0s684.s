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
	GLOBAL CLASSES$_$EXTRACTSTRINGS$crcE0409673_$$_ADDSTRING
CLASSES$_$EXTRACTSTRINGS$crcE0409673_$$_ADDSTRING:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	word [bp-4],0
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
		jne	..@j14512
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx-6]
		mov	dx,word [si-4]
		sub	ax,dx
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jg	..@j14516
		jmp	..@j14518
..@j14518:
		mov	bx,word [bp+4]
		cmp	byte [bx+4],0
		jne	..@j14516
		jmp	..@j14517
..@j14516:
		mov	bx,word [bp+4]
		cmp	word [bx+6],0
		jne	..@j14519
		jmp	..@j14520
..@j14519:
		lea	ax,[bp-4]
		push	ax
		push	word [bp-2]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		cmp	word [bp-2],0
		jg	..@j14527
		jmp	..@j14528
..@j14527:
		mov	bx,word [bp+4]
		mov	ax,word [bx-4]
		push	ax
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_unique
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j14528:
		mov	bx,word [bp+4]
		push	word [bx+6]
		push	word [bp-4]
		mov	bx,word [bp+4]
		mov	bx,word [bx+6]
		mov	bx,word [bx]
		mov	ax,word [bx+82]
		call	ax
..@j14520:
		mov	bx,word [bp+4]
		inc	word [bx-2]
..@j14517:
..@j14512:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j14513
		call	FPC_RERAISE
..@j14513:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_ansistr_unique
EXTERN	fpc_ansistr_setlength
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
