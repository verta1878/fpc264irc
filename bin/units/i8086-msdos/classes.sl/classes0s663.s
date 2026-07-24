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
	GLOBAL CLASSES$_$TINTERFACELIST_$__$$_DESTROY
CLASSES$_$TINTERFACELIST_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jg	..@j14112
		jmp	..@j14113
..@j14112:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j14113:
		push	word [bp+6]
		call	CLASSES$_$TINTERFACELIST_$__$$_CLEAR
		mov	bx,word [bp+6]
		push	word [bx+8]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		cmp	word [bp+6],0
		jne	..@j14126
		jmp	..@j14125
..@j14126:
		cmp	word [bp+4],0
		jne	..@j14124
		jmp	..@j14125
..@j14124:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j14125:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_DESTROY
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	CLASSES$_$TINTERFACELIST_$__$$_CLEAR
