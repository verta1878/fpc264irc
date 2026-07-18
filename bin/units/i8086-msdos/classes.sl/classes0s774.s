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
	GLOBAL CLASSES$_$TBINARYOBJECTREADER_$__$$_DESTROY
CLASSES$_$TBINARYOBJECTREADER_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jg	..@j17691
		jmp	..@j17692
..@j17691:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j17692:
		mov	bx,word [bp+6]
		push	word [bx+2]
		mov	bx,word [bp+6]
		mov	si,word [bp+6]
		mov	ax,word [bx+8]
		mov	dx,word [si+10]
		sub	ax,dx
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		mov	ax,1
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+68]
		call	ax
		mov	bx,word [bp+6]
		cmp	word [bx+4],0
		jne	..@j17701
		jmp	..@j17702
..@j17701:
		mov	bx,word [bp+6]
		push	word [bx+4]
		mov	bx,word [bp+6]
		push	word [bx+6]
		call	SYSTEM_$$_FREEMEM$POINTER$WORD
..@j17702:
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		cmp	word [bp+6],0
		jne	..@j17713
		jmp	..@j17712
..@j17713:
		cmp	word [bp+4],0
		jne	..@j17711
		jmp	..@j17712
..@j17711:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j17712:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_DESTROY
EXTERN	SYSTEM_$$_FREEMEM$POINTER$WORD
