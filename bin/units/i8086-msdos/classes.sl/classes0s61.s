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
	GLOBAL CLASSES$_$TSTREAM_$__$$_READANSISTRING$$ANSISTRING
CLASSES$_$TSTREAM_$__$$_READANSISTRING$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,6
		push	word [bp+6]
		lea	ax,[bp-4]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_READBUFFER$formal$LONGINT
		mov	ax,word [bp+4]
		push	ax
		push	word [bp-4]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jg	..@j1414
		jl	..@j1415
		cmp	ax,0
		ja	..@j1414
		jmp	..@j1415
..@j1414:
		push	word [bp+6]
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		call	CLASSES$_$TSTREAM_$__$$_READBUFFER$formal$LONGINT
		mov	bx,word [bp+4]
		mov	dx,word [bx]
		mov	ax,word [bp-4]
		add	ax,dx
		mov	word [bp-6],ax
		mov	bx,word [bp-6]
		mov	byte [bx],0
..@j1415:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_setlength
EXTERN	CLASSES$_$TSTREAM_$__$$_READBUFFER$formal$LONGINT
