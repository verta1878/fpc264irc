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
	GLOBAL SYSTEM_$$_RORDWORD$LONGWORD$BYTE$$LONGWORD
SYSTEM_$$_RORDWORD$LONGWORD$BYTE$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	al,byte [bp+4]
		mov	ah,0
		and	ax,31
		mov	cx,32
		sub	cx,ax
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		and	cx,31
		jz	..@j2158
..@j2159:
		shl	ax,1
		rcl	dx,1
		loop	..@j2159
..@j2158:
		mov	cl,byte [bp+4]
		mov	ch,0
		and	cx,31
		mov	bx,word [bp+6]
		mov	si,word [bp+8]
		and	cx,31
		jz	..@j2160
..@j2161:
		shr	si,1
		rcr	bx,1
		loop	..@j2161
..@j2160:
		or	bx,ax
		or	si,dx
		mov	word [bp-4],bx
		mov	word [bp-2],si
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
