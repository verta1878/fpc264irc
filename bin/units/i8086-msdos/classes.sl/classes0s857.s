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
	GLOBAL CLASSES$_$TBINARYOBJECTWRITER_$__$$_DESTROY
CLASSES$_$TBINARYOBJECTWRITER_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jg	..@j21128
		jmp	..@j21129
..@j21128:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j21129:
		push	word [bp+6]
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_FLUSHBUFFER
		mov	bx,word [bp+6]
		cmp	word [bx+4],0
		jne	..@j21134
		jmp	..@j21135
..@j21134:
		mov	bx,word [bp+6]
		push	word [bx+4]
		mov	bx,word [bp+6]
		push	word [bx+6]
		call	SYSTEM_$$_FREEMEM$POINTER$WORD
..@j21135:
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		cmp	word [bp+6],0
		jne	..@j21146
		jmp	..@j21145
..@j21146:
		cmp	word [bp+4],0
		jne	..@j21144
		jmp	..@j21145
..@j21144:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j21145:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_DESTROY
EXTERN	SYSTEM_$$_FREEMEM$POINTER$WORD
EXTERN	CLASSES$_$TBINARYOBJECTWRITER_$__$$_FLUSHBUFFER
