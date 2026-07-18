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
	GLOBAL SOCKETS_$$_INET_ADDR$ANSISTRING$$LONGWORD
SOCKETS_$$_INET_ADDR$ANSISTRING$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,72
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j324
		mov	bx,word [bx-2]
..@j324:
		cmp	bx,62
		jg	..@j322
		jmp	..@j323
..@j322:
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		jmp	..@j320
..@j323:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j329
		mov	bx,word [bx-2]
..@j329:
		mov	dx,bx
		mov	word [bp-70],1
		cmp	dx,word [bp-70]
		jl	..@j331
		dec	word [bp-70]
	ALIGN 2
..@j332:
		inc	word [bp-70]
		mov	ax,word [bp-70]
		mov	di,ax
		dec	di
		mov	bx,word [bp+4]
		mov	si,word [bp-70]
		mov	al,byte [bx+si-1]
		mov	byte [bp+di-68],al
		cmp	dx,word [bp-70]
		jg	..@j332
..@j331:
		mov	si,word [bp+4]
		test	si,si
		je	..@j337
		mov	si,word [si-2]
..@j337:
		mov	byte [bp+si-68],0
		lea	ax,[bp-68]
		push	ax
		call	_inet_addr
		pop	word [bp-72]
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j320:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	_inet_addr
