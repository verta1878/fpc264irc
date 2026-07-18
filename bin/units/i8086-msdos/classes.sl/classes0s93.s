BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TSTRINGSTREAM_$__$$_GETSIZE$$INT64
CLASSES$_$TSTRINGSTREAM_$__$$_GETSIZE$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+4]
		mov	bx,word [bx+2]
		test	bx,bx
		je	..@j2055
		mov	bx,word [bx-2]
..@j2055:
		mov	ax,bx
		cwd
		mov	si,ax
		mov	di,dx
		mov	ax,bx
		cwd
		mov	si,ax
		mov	di,dx
		mov	ax,si
		mov	dx,di
		mov	cl,15
		sar	dx,cl
		mov	ax,dx
		mov	word [bp-8],si
		mov	word [bp-6],di
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	2
