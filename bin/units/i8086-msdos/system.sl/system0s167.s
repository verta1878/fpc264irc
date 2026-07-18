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
	GLOBAL SYSTEM_$$_SARSHORTINT$SHORTINT$BYTE$$SHORTINT
SYSTEM_$$_SARSHORTINT$SHORTINT$BYTE$$SHORTINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	al,byte [bp+6]
		mov	ah,0
		mov	cl,7
		shr	ax,cl
		mov	ah,0
		neg	ax
		mov	dl,byte [bp+4]
		mov	dh,0
		and	dx,7
		test	dx,dx
		mov	dl,0
		je	..@j2214
		inc	dx
..@j2214:
		mov	dh,0
		neg	dx
		and	dl,al
		mov	dh,0
		mov	al,byte [bp+4]
		mov	ah,0
		and	ax,7
		mov	cx,8
		sub	cx,ax
		shl	dx,cl
		mov	al,byte [bp+6]
		mov	ah,0
		mov	cl,byte [bp+4]
		mov	ch,0
		and	cx,7
		shr	ax,cl
		mov	ah,0
		or	ax,dx
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
