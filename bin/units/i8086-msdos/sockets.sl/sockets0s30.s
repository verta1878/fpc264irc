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
	GLOBAL SOCKETS_$$_SOCKETERROR$$LONGINT
SOCKETS_$$_SOCKETERROR$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		call	___errno
		mov	word [bp-6],ax
		cmp	word [bp-6],0
		je	..@j291
		jmp	..@j292
..@j291:
		mov	word [bp-4],0
		mov	word [bp-2],0
		jmp	..@j295
..@j292:
		mov	bx,word [bp-6]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
..@j295:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
EXTERN	___errno
