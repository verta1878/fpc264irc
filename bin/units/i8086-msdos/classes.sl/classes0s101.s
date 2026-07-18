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
	GLOBAL CLASSES$_$TSTRINGSTREAM_$__$$_WRITESTRING$ANSISTRING
CLASSES$_$TSTRINGSTREAM_$__$$_WRITESTRING$ANSISTRING:
		push	bp
		mov	bp,sp
		push	word [bp+6]
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j2207
		mov	ax,word FPC_EMPTYCHAR
..@j2207:
		push	ax
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j2210
		mov	bx,word [bx-2]
..@j2210:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+66]
		call	ax
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_EMPTYCHAR
