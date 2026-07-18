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
	GLOBAL CLASSES$_$TWRITER_$__$$_DOFINDANCESTOR$TCOMPONENT
CLASSES$_$TWRITER_$__$$_DOFINDANCESTOR$TCOMPONENT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+6]
		cmp	word [bx+22],0
		jne	..@j22116
		jmp	..@j22117
..@j22116:
		mov	bx,word [bp+6]
		cmp	word [bx+6],0
		je	..@j22118
		jmp	..@j22120
..@j22120:
		mov	ax,word VMT_$CLASSES_$$_TCOMPONENT
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+6]
		call	fpc_do_is
		test	al,al
		jne	..@j22118
		jmp	..@j22119
..@j22118:
		mov	bx,word [bp+6]
		mov	ax,word [bx+6]
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		push	word [bx+24]
		push	word [bp+6]
		push	word [bp+4]
		mov	bx,word [bp+4]
		push	word [bx+8]
		lea	ax,[bp-2]
		push	ax
		mov	bx,word [bp+6]
		lea	ax,[bx+12]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+22]
		call	ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-2]
		mov	word [bx+6],ax
..@j22119:
..@j22117:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_do_is
EXTERN	VMT_$CLASSES_$$_TCOMPONENT
