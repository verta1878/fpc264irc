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
	GLOBAL CLASSES$_$TPERSISTENT_$__$$_ASSIGN$TPERSISTENT
CLASSES$_$TPERSISTENT_$__$$_ASSIGN$TPERSISTENT:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jne	..@j10925
		jmp	..@j10926
..@j10925:
		push	word [bp+4]
		push	word [bp+6]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+50]
		call	ax
		jmp	..@j10931
..@j10926:
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	CLASSES$_$TPERSISTENT_$__$$_ASSIGNERROR$TPERSISTENT
..@j10931:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TPERSISTENT_$__$$_ASSIGNERROR$TPERSISTENT
