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
	GLOBAL CLASSES$_$TSIMPLESTATUSTHREAD_$__$$_CREATE$crcBE33C1BB
CLASSES$_$TSIMPLESTATUSTHREAD_$__$$_CREATE$crcBE33C1BB:
		push	bp
		mov	bp,sp
		sub	sp,40
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	word [bp-8],ax
		mov	ax,word [bx+2]
		mov	word [bp-6],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-12],ax
		mov	ax,word [bx+2]
		mov	word [bp-10],ax
		cmp	word [bp+10],1
		je	..@j10409
		jmp	..@j10410
..@j10409:
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+12],ax
..@j10410:
		cmp	word [bp+12],0
		je	..@j10415
		jmp	..@j10416
..@j10415:
		jmp	..@j10407
..@j10416:
		mov	ax,1
		push	ax
		lea	ax,[bp-24]
		push	ax
		lea	ax,[bp-18]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j10419
		mov	bx,word [bp+12]
		mov	ax,word [bp-4]
		mov	word [bx+24],ax
		mov	ax,word [bp-2]
		mov	word [bx+26],ax
		mov	bx,word [bp+12]
		mov	ax,word [bp-12]
		mov	word [bx+13],ax
		mov	ax,word [bp-10]
		mov	word [bx+15],ax
		mov	bx,word [bp+12]
		mov	ax,word [bp-8]
		mov	word [bx+30],ax
		mov	ax,word [bp-6]
		mov	word [bx+32],ax
		mov	bx,word [bp+12]
		lea	ax,[bx+28]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		push	word [bp+12]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,16384
		push	ax
		call	CLASSES$_$TTHREAD_$__$$_CREATE$BOOLEAN$WORD$$TTHREAD
		cmp	word [bp+12],0
		jne	..@j10444
		jmp	..@j10443
..@j10444:
		cmp	word [bp+10],0
		jne	..@j10442
		jmp	..@j10443
..@j10442:
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j10443:
..@j10419:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j10421
		mov	ax,1
		push	ax
		lea	ax,[bp-38]
		push	ax
		lea	ax,[bp-32]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j10447
		cmp	word [bp+10],0
		jne	..@j10448
		jmp	..@j10449
..@j10448:
		push	word [bp+12]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j10449:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j10447:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j10454
		call	FPC_RAISE_NESTED
..@j10454:
		call	FPC_DONEEXCEPTION
		jmp	..@j10421
..@j10421:
..@j10407:
		mov	ax,word [bp+12]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TTHREAD_$__$$_CREATE$BOOLEAN$WORD$$TTHREAD
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
