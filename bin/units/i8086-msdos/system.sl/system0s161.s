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
	GLOBAL SYSTEM_$$_ROLDWORD$LONGWORD$$LONGWORD
SYSTEM_$$_ROLDWORD$LONGWORD$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		shl	ax,1
		rcl	dx,1
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		mov	bx,si
		mov	si,0
		mov	cl,15
		shr	bx,cl
		or	bx,ax
		or	si,dx
		mov	word [bp-4],bx
		mov	word [bp-2],si
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
