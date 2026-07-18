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
	GLOBAL CLASSES$_$TSTRINGSTREAM_$__$$_SETSIZE$LONGINT
CLASSES$_$TSTRINGSTREAM_$__$$_SETSIZE$LONGINT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+8]
		lea	ax,[bx+2]
		push	ax
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		cwd
		cmp	dx,word [bp+6]
		jg	..@j2068
		jl	..@j2069
		cmp	ax,word [bp+4]
		ja	..@j2068
		jmp	..@j2069
		jmp	..@j2069
..@j2068:
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		mov	word [bx+4],ax
..@j2069:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_ansistr_setlength
