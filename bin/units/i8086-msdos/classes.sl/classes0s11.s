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
	GLOBAL CLASSES$_$TBITS_$__$$_CREATE$LONGINT$$TBITS
CLASSES$_$TBITS_$__$$_CREATE$LONGINT$$TBITS:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+8],1
		je	..@j229
		jmp	..@j230
..@j229:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+10],ax
..@j230:
		cmp	word [bp+10],0
		je	..@j235
		jmp	..@j236
..@j235:
		jmp	..@j227
..@j236:
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
		jne	..@j239
		mov	bx,word [bp+10]
		mov	word [bx+4],0
		mov	word [bx+6],0
		mov	bx,word [bp+10]
		mov	word [bx+8],0
		mov	word [bx+10],0
		mov	bx,word [bp+10]
		mov	word [bx+2],0
		mov	bx,word [bp+10]
		mov	word [bx+12],-1
		mov	word [bx+14],-1
		mov	bx,word [bp+10]
		mov	byte [bx+16],1
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jg	..@j254
		jl	..@j255
		cmp	ax,0
		ja	..@j254
		jmp	..@j255
..@j254:
		push	word [bp+10]
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TBITS_$__$$_GROW$LONGINT
..@j255:
		cmp	word [bp+10],0
		jne	..@j262
		jmp	..@j261
..@j262:
		cmp	word [bp+8],0
		jne	..@j260
		jmp	..@j261
..@j260:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j261:
..@j239:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j241
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
		jne	..@j265
		cmp	word [bp+8],0
		jne	..@j266
		jmp	..@j267
..@j266:
		push	word [bp+10]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j267:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j265:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j272
		call	FPC_RAISE_NESTED
..@j272:
		call	FPC_DONEEXCEPTION
		jmp	..@j241
..@j241:
..@j227:
		mov	ax,word [bp+10]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TBITS_$__$$_GROW$LONGINT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
