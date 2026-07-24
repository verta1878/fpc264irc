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
	GLOBAL CLASSES$_$TLINKEDLIST_$__$$_REMOVEITEM$TLINKEDLISTITEM$BOOLEAN
CLASSES$_$TLINKEDLIST_$__$$_REMOVEITEM$TLINKEDLISTITEM$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+6],0
		jne	..@j11210
		jmp	..@j11209
..@j11210:
		mov	bx,word [bp+8]
		cmp	word [bx+4],0
		jne	..@j11208
		jmp	..@j11209
..@j11208:
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		cmp	ax,word [bp+6]
		je	..@j11211
		jmp	..@j11212
..@j11211:
		mov	si,word [bp+8]
		mov	bx,word [bp+6]
		mov	ax,word [bx+2]
		mov	word [si+4],ax
		jmp	..@j11215
..@j11212:
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		mov	word [bp-2],ax
		jmp	..@j11219
	ALIGN 2
..@j11218:
		mov	bx,word [bp-2]
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
..@j11219:
		mov	bx,word [bp-2]
		cmp	word [bx+2],0
		jne	..@j11223
		jmp	..@j11220
..@j11223:
		mov	bx,word [bp-2]
		mov	ax,word [bx+2]
		cmp	ax,word [bp+6]
		jne	..@j11218
		jmp	..@j11220
..@j11220:
		mov	bx,word [bp-2]
		mov	ax,word [bx+2]
		cmp	ax,word [bp+6]
		je	..@j11224
		jmp	..@j11225
..@j11224:
		mov	si,word [bp-2]
		mov	bx,word [bp+6]
		mov	ax,word [bx+2]
		mov	word [si+2],ax
..@j11225:
..@j11215:
		cmp	byte [bp+4],0
		jne	..@j11228
		jmp	..@j11229
..@j11228:
		push	word [bp+6]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
..@j11229:
..@j11209:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
