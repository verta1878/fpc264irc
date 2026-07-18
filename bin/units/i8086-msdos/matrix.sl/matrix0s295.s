BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION text
	ALIGN 2
	GLOBAL MATRIX$_$TMATRIX3_SINGLE_$__$$_INIT$crc55E0C90F
MATRIX$_$TMATRIX3_SINGLE_$__$$_INIT$crc55E0C90F:
		push	bp
		mov	bp,sp
		sub	sp,28
		push	word [bp+42]
		lea	ax,[bp+40]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,36
		push	ax
		call	fpc_help_constructor
		mov	word [bp+42],ax
		cmp	word [bp+42],0
		je	..@j3248
		jmp	..@j3249
..@j3248:
		jmp	..@j3238
..@j3249:
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
		jne	..@j3252
		mov	bx,word [bp+42]
		mov	ax,word [bp+36]
		mov	word [bx],ax
		mov	ax,word [bp+38]
		mov	word [bx+2],ax
		mov	bx,word [bp+42]
		mov	ax,word [bp+32]
		mov	word [bx+4],ax
		mov	ax,word [bp+34]
		mov	word [bx+6],ax
		mov	bx,word [bp+42]
		mov	ax,word [bp+28]
		mov	word [bx+8],ax
		mov	ax,word [bp+30]
		mov	word [bx+10],ax
		mov	bx,word [bp+42]
		mov	ax,word [bp+24]
		mov	word [bx+12],ax
		mov	ax,word [bp+26]
		mov	word [bx+14],ax
		mov	bx,word [bp+42]
		mov	ax,word [bp+20]
		mov	word [bx+16],ax
		mov	ax,word [bp+22]
		mov	word [bx+18],ax
		mov	bx,word [bp+42]
		mov	ax,word [bp+16]
		mov	word [bx+20],ax
		mov	ax,word [bp+18]
		mov	word [bx+22],ax
		mov	bx,word [bp+42]
		mov	ax,word [bp+12]
		mov	word [bx+24],ax
		mov	ax,word [bp+14]
		mov	word [bx+26],ax
		mov	bx,word [bp+42]
		mov	ax,word [bp+8]
		mov	word [bx+28],ax
		mov	ax,word [bp+10]
		mov	word [bx+30],ax
		mov	bx,word [bp+42]
		mov	ax,word [bp+4]
		mov	word [bx+32],ax
		mov	ax,word [bp+6]
		mov	word [bx+34],ax
..@j3252:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j3254
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
		jne	..@j3274
		push	word [bp+42]
		lea	ax,[bp+40]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,36
		push	ax
		call	fpc_help_fail
		call	fpc_popaddrstack
		call	fpc_reraise
..@j3274:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j3281
		call	FPC_RAISE_NESTED
..@j3281:
		call	FPC_DONEEXCEPTION
		jmp	..@j3254
..@j3254:
..@j3238:
		mov	ax,word [bp+42]
		mov	sp,bp
		pop	bp
		ret	40
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	fpc_help_fail
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_help_constructor
