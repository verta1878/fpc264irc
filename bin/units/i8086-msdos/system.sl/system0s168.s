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
	GLOBAL SYSTEM_$$_SARSMALLINT$SMALLINT$BYTE$$SMALLINT
SYSTEM_$$_SARSMALLINT$SMALLINT$BYTE$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+6]
		mov	cl,15
		shr	ax,cl
		mov	dx,0
		not	dx
		neg	ax
		sbb	dx,-1
		mov	dl,byte [bp+4]
		mov	dh,0
		and	dx,15
		test	dx,dx
		mov	dl,0
		je	..@j2221
		inc	dx
..@j2221:
		mov	dh,0
		neg	dx
		and	dx,ax
		mov	al,byte [bp+4]
		mov	ah,0
		and	ax,15
		mov	cx,16
		sub	cx,ax
		shl	dx,cl
		mov	cl,byte [bp+4]
		mov	ch,0
		and	cx,15
		mov	ax,word [bp+6]
		shr	ax,cl
		or	ax,dx
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
