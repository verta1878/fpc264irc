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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_ADDSTRINGS$array_of_ANSISTRING$BOOLEAN
CLASSES$_$TSTRINGS_$__$$_ADDSTRINGS$array_of_ANSISTRING$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,14
		push	word [bp+10]
		call	CLASSES$_$TSTRINGS_$__$$_BEGINUPDATE
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
		jne	..@j8310
		cmp	byte [bp+4],0
		jne	..@j8313
		jmp	..@j8314
..@j8313:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+92]
		call	ax
..@j8314:
		push	word [bp+10]
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+88]
		call	ax
..@j8310:
		call	FPC_POPADDRSTACK
		push	word [bp+10]
		call	CLASSES$_$TSTRINGS_$__$$_ENDUPDATE
		pop	ax
		test	ax,ax
		je	..@j8311
		call	FPC_RERAISE
..@j8311:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_RERAISE
EXTERN	CLASSES$_$TSTRINGS_$__$$_ENDUPDATE
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	CLASSES$_$TSTRINGS_$__$$_BEGINUPDATE
