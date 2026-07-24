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
	GLOBAL SYSTEM$_$TAGGREGATEDOBJECT_$__$$__ADDREF$$LONGINT
SYSTEM$_$TAGGREGATEDOBJECT_$__$$__ADDREF$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+4]
		push	word [bx+2]
		mov	bx,word [bp+4]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		call	[bx+2]
		pop	word [bp-6]
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
