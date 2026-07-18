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
	GLOBAL CLASSES$_$TSIMPLETHREAD_$__$$_CREATE$TTHREADMETHOD$TNOTIFYEVENT$$TSIMPLETHREAD
CLASSES$_$TSIMPLETHREAD_$__$$_CREATE$TTHREADMETHOD$TNOTIFYEVENT$$TSIMPLETHREAD:
		push	bp
		mov	bp,sp
		sub	sp,36
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-8],ax
		mov	ax,word [bx+2]
		mov	word [bp-6],ax
		cmp	word [bp+8],1
		je	..@j10361
		jmp	..@j10362
..@j10361:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+10],ax
..@j10362:
		cmp	word [bp+10],0
		je	..@j10367
		jmp	..@j10368
..@j10367:
		jmp	..@j10359
..@j10368:
		mov	ax,1
		push	ax
		lea	ax,[bp-20]
		push	ax
		lea	ax,[bp-14]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j10371
		mov	bx,word [bp+10]
		mov	ax,word [bp-4]
		mov	word [bx+24],ax
		mov	ax,word [bp-2]
		mov	word [bx+26],ax
		mov	bx,word [bp+10]
		mov	ax,word [bp-8]
		mov	word [bx+13],ax
		mov	ax,word [bp-6]
		mov	word [bx+15],ax
		push	word [bp+10]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,16384
		push	ax
		call	CLASSES$_$TTHREAD_$__$$_CREATE$BOOLEAN$WORD$$TTHREAD
		cmp	word [bp+10],0
		jne	..@j10390
		jmp	..@j10389
..@j10390:
		cmp	word [bp+8],0
		jne	..@j10388
		jmp	..@j10389
..@j10388:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j10389:
..@j10371:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j10373
		mov	ax,1
		push	ax
		lea	ax,[bp-34]
		push	ax
		lea	ax,[bp-28]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j10393
		cmp	word [bp+8],0
		jne	..@j10394
		jmp	..@j10395
..@j10394:
		push	word [bp+10]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j10395:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j10393:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j10400
		call	FPC_RAISE_NESTED
..@j10400:
		call	FPC_DONEEXCEPTION
		jmp	..@j10373
..@j10373:
..@j10359:
		mov	ax,word [bp+10]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TTHREAD_$__$$_CREATE$BOOLEAN$WORD$$TTHREAD
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
