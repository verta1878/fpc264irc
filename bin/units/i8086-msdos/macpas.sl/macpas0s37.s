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
	GLOBAL MACPAS_$$_BCLR$LONGINT$LONGWORD
MACPAS_$$_BCLR$LONGINT$LONGWORD:
		push	bp
		mov	bp,sp
		mov	ax,1
		mov	cx,word [bp+4]
		shl	ax,cl
		not	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	bx,word [bp+8]
		mov	dx,word [bx]
		mov	bx,word [bx+2]
		and	dx,cx
		and	bx,ax
		mov	si,word [bp+8]
		mov	word [si],dx
		mov	word [si+2],bx
		mov	sp,bp
		pop	bp
		ret	6
