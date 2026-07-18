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
	GLOBAL CLASSES_$$_INTTOIDENT$LONGINT$ANSISTRING$array_of_TIDENTMAPENTRY$$BOOLEAN
CLASSES_$$_INTTOIDENT$LONGINT$ANSISTRING$array_of_TIDENTMAPENTRY$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+4]
		mov	word [bp-6],ax
		mov	word [bp-4],0
		mov	ax,word [bp-6]
		cmp	ax,word [bp-4]
		jl	..@j14758
		dec	word [bp-4]
	ALIGN 2
..@j14759:
		inc	word [bp-4]
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bx+si]
		cwd
		cmp	dx,word [bp+12]
		jne	..@j14761
		cmp	ax,word [bp+10]
		jne	..@j14761
		jmp	..@j14760
		jmp	..@j14761
..@j14760:
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		push	word [bx+si+2]
		call	fpc_ansistr_assign
		mov	byte [bp-1],1
		jmp	..@j14753
..@j14761:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-4]
		jg	..@j14759
..@j14758:
		mov	byte [bp-1],0
..@j14753:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	fpc_ansistr_assign
