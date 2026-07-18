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
	GLOBAL SYSTEM_$$_ROLWORD$WORD$BYTE$$WORD
SYSTEM_$$_ROLWORD$WORD$BYTE$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	al,byte [bp+4]
		mov	ah,0
		and	ax,15
		mov	cx,16
		sub	cx,ax
		mov	ax,word [bp+6]
		shr	ax,cl
		mov	cl,byte [bp+4]
		mov	ch,0
		and	cx,15
		mov	dx,word [bp+6]
		shl	dx,cl
		or	dx,ax
		mov	word [bp-2],dx
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
