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
	GLOBAL MACPAS_$$_BSL$LONGINT$LONGWORD$$LONGINT
MACPAS_$$_BSL$LONGINT$LONGWORD$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		mov	cx,word [bp+4]
		and	cx,31
		jz	..@j113
..@j114:
		shl	ax,1
		rcl	dx,1
		loop	..@j114
..@j113:
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
