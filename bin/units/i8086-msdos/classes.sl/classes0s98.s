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
	GLOBAL CLASSES$_$TSTRINGSTREAM_$__$$_READSTRING$LONGINT$$ANSISTRING
CLASSES$_$TSTRINGSTREAM_$__$$_READSTRING$LONGINT$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+10]
		mov	bx,word [bx+2]
		test	bx,bx
		je	..@j2136
		mov	bx,word [bx-2]
..@j2136:
		mov	si,word [bp+10]
		mov	dx,word [si+4]
		mov	ax,bx
		sub	ax,dx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,word [bp+6]
		jg	..@j2137
		jl	..@j2138
		cmp	dx,word [bp+4]
		ja	..@j2137
		jmp	..@j2138
		jmp	..@j2138
..@j2137:
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
..@j2138:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp-4]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		push	word [bp+10]
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_ansistr_setlength
