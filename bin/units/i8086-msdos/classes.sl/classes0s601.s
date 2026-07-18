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
	GLOBAL CLASSES$_$TBASICACTIONLINK_$__$$_DESTROY
CLASSES$_$TBASICACTIONLINK_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jg	..@j13057
		jmp	..@j13058
..@j13057:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j13058:
		mov	bx,word [bp+6]
		cmp	word [bx+6],0
		jne	..@j13061
		jmp	..@j13062
..@j13061:
		mov	bx,word [bp+6]
		push	word [bx+6]
		push	word [bp+6]
		call	CLASSES$_$TBASICACTION_$__$$_UNREGISTERCHANGES$TBASICACTIONLINK
..@j13062:
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		cmp	word [bp+6],0
		jne	..@j13073
		jmp	..@j13072
..@j13073:
		cmp	word [bp+4],0
		jne	..@j13071
		jmp	..@j13072
..@j13071:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j13072:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_DESTROY
EXTERN	CLASSES$_$TBASICACTION_$__$$_UNREGISTERCHANGES$TBASICACTIONLINK
