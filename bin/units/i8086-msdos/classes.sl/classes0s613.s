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
	GLOBAL CLASSES$_$TBASICACTION_$__$$_EXECUTE$$BOOLEAN
CLASSES$_$TBASICACTION_$__$$_EXECUTE$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		cmp	word [bx+34],0
		jne	..@j13207
		jmp	..@j13208
..@j13207:
		mov	bx,word [bp+4]
		push	word [bx+36]
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	ax,word [bx+34]
		call	ax
		mov	byte [bp-1],1
		jmp	..@j13215
..@j13208:
		mov	byte [bp-1],0
..@j13215:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
