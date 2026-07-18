BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION text
	ALIGN 2
	GLOBAL STRUTILS_$$_ANSIINDEXTEXT$ANSISTRING$array_of_ANSISTRING$$SMALLINT
STRUTILS_$$_ANSIINDEXTEXT$ANSISTRING$array_of_ANSISTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word [bp-2],-1
		cmp	word [bp+4],-1
		je	..@j1107
		jmp	..@j1109
..@j1109:
		jmp	..@j1108
..@j1107:
		jmp	..@j1103
..@j1108:
		mov	ax,word [bp+4]
		mov	word [bp-6],ax
		mov	word [bp-4],0
		mov	ax,word [bp-6]
		cmp	ax,word [bp-4]
		jl	..@j1113
		dec	word [bp-4]
	ALIGN 2
..@j1114:
		inc	word [bp-4]
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		push	word [bp+8]
		call	SYSUTILS_$$_COMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT
		test	ax,ax
		je	..@j1115
		jmp	..@j1116
..@j1115:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		jmp	..@j1103
..@j1116:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-4]
		jg	..@j1114
..@j1113:
..@j1103:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSUTILS_$$_COMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT
