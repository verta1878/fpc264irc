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
	GLOBAL SYSUTILS_$$_STRBUFSIZE$PCHAR$$LONGWORD
SYSUTILS_$$_STRBUFSIZE$PCHAR$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		cmp	word [bp+4],0
		jne	..@j12884
		jmp	..@j12885
..@j12884:
		mov	bx,word [bp+4]
		mov	ax,word [bx-4]
		mov	dx,word [bx-2]
		sub	ax,4
		sbb	dx,0
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j12888
..@j12885:
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j12888:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
