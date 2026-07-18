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
	GLOBAL CLASSES$_$TSIMPLESTATUSPROCTHREAD_$__$$_CREATE$crc25F3FDF4
CLASSES$_$TSIMPLESTATUSPROCTHREAD_$__$$_CREATE$crc25F3FDF4:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+12],1
		je	..@j10553
		jmp	..@j10554
..@j10553:
		push	word [bp+14]
		mov	bx,word [bp+14]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+14],ax
..@j10554:
		cmp	word [bp+14],0
		je	..@j10559
		jmp	..@j10560
..@j10559:
		jmp	..@j10551
..@j10560:
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
		jne	..@j10563
		mov	bx,word [bp+14]
		mov	ax,word [bp+10]
		mov	word [bx+24],ax
		mov	bx,word [bp+14]
		mov	ax,word [bp+4]
		mov	word [bx+26],ax
		mov	bx,word [bp+14]
		mov	ax,word [bp+8]
		mov	word [bx+32],ax
		mov	bx,word [bp+14]
		cmp	word [bx+26],0
		jne	..@j10574
		jmp	..@j10575
..@j10574:
		mov	bx,word [bp+14]
		mov	ax,word [bp+14]
		mov	dx,word CLASSES$_$TSIMPLESTATUSPROCTHREAD_$__$$_TERMINATECALLBACK$TOBJECT
		mov	word [bx+13],dx
		mov	word [bx+15],ax
..@j10575:
		mov	bx,word [bp+14]
		mov	ax,word [bp+6]
		mov	word [bx+30],ax
		mov	bx,word [bp+14]
		lea	ax,[bx+28]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		push	word [bp+14]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,16384
		push	ax
		call	CLASSES$_$TTHREAD_$__$$_CREATE$BOOLEAN$WORD$$TTHREAD
		cmp	word [bp+14],0
		jne	..@j10594
		jmp	..@j10593
..@j10594:
		cmp	word [bp+12],0
		jne	..@j10592
		jmp	..@j10593
..@j10592:
		push	word [bp+14]
		mov	bx,word [bp+14]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j10593:
..@j10563:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j10565
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
		jne	..@j10597
		cmp	word [bp+12],0
		jne	..@j10598
		jmp	..@j10599
..@j10598:
		push	word [bp+14]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+14]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j10599:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j10597:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j10604
		call	FPC_RAISE_NESTED
..@j10604:
		call	FPC_DONEEXCEPTION
		jmp	..@j10565
..@j10565:
..@j10551:
		mov	ax,word [bp+14]
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TTHREAD_$__$$_CREATE$BOOLEAN$WORD$$TTHREAD
EXTERN	fpc_ansistr_assign
EXTERN	CLASSES$_$TSIMPLESTATUSPROCTHREAD_$__$$_TERMINATECALLBACK$TOBJECT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
