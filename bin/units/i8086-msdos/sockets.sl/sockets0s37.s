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
	GLOBAL SOCKETS_$$_INET_ATON$ANSISTRING$TINADDR$$BOOLEAN
SOCKETS_$$_INET_ATON$ANSISTRING$TINADDR$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,68
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j375
		mov	bx,word [bx-2]
..@j375:
		cmp	bx,62
		jg	..@j373
		jmp	..@j374
..@j373:
		mov	byte [bp-1],0
		jmp	..@j371
..@j374:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j380
		mov	bx,word [bx-2]
..@j380:
		mov	dx,bx
		mov	word [bp-68],1
		cmp	dx,word [bp-68]
		jl	..@j382
		dec	word [bp-68]
	ALIGN 2
..@j383:
		inc	word [bp-68]
		mov	ax,word [bp-68]
		mov	di,ax
		dec	di
		mov	bx,word [bp+6]
		mov	si,word [bp-68]
		mov	al,byte [bx+si-1]
		mov	byte [bp+di-65],al
		cmp	dx,word [bp-68]
		jg	..@j383
..@j382:
		mov	si,word [bp+6]
		test	si,si
		je	..@j388
		mov	si,word [si-2]
..@j388:
		mov	byte [bp+si-65],0
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-65]
		push	ax
		call	_inet_aton
		add	sp,4
		cmp	dx,0
		jne	..@j389
		cmp	ax,0
		jne	..@j389
		jmp	..@j390
..@j389:
		mov	byte [bp-1],1
		jmp	..@j395
..@j390:
		mov	byte [bp-1],0
..@j395:
..@j371:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	_inet_aton
