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
	GLOBAL CLASSES_$$_IDENTTOINT$ANSISTRING$LONGINT$array_of_TIDENTMAPENTRY$$BOOLEAN
CLASSES_$$_IDENTTOINT$ANSISTRING$LONGINT$array_of_TIDENTMAPENTRY$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+4]
		mov	word [bp-6],ax
		mov	word [bp-4],0
		mov	ax,word [bp-6]
		cmp	ax,word [bp-4]
		jl	..@j14739
		dec	word [bp-4]
	ALIGN 2
..@j14740:
		inc	word [bp-4]
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		push	word [bx+si+2]
		push	word [bp+10]
		call	SYSUTILS_$$_COMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT
		test	ax,ax
		je	..@j14741
		jmp	..@j14742
..@j14741:
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bx+si]
		cwd
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	byte [bp-1],1
		jmp	..@j14734
..@j14742:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-4]
		jg	..@j14740
..@j14739:
		mov	byte [bp-1],0
..@j14734:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSUTILS_$$_COMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT
