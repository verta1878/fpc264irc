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
	GLOBAL SYSTEM$_$TSINGLEREC_$__$$_SETSIGN$BOOLEAN
SYSTEM$_$TSINGLEREC_$__$$_SETSIGN$BOOLEAN:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	bx,word [bx+2]
		and	bx,32767
		mov	si,0
		mov	dl,byte [bp+4]
		mov	dh,0
		mov	si,dx
		mov	dx,0
		mov	cl,15
		shl	si,cl
		or	dx,ax
		or	si,bx
		mov	bx,word [bp+6]
		mov	word [bx],dx
		mov	word [bx+2],si
		mov	sp,bp
		pop	bp
		ret	4
