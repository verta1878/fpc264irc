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
	GLOBAL SYSTEM_$$_FPC_WRITEBLANKS$TEXT$LONGINT
SYSTEM_$$_FPC_WRITEBLANKS$TEXT$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+8]
		mov	si,word [bp+8]
		mov	ax,word [bx+6]
		mov	dx,word [si+10]
		sub	ax,dx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		jmp	..@j21704
	ALIGN 2
..@j21703:
		mov	bx,word [bp+8]
		mov	bx,word [bx+14]
		mov	si,word [bp+8]
		mov	si,word [si+10]
		lea	ax,[bx+si]
		push	ax
		push	word [bp-4]
		mov	ax,32
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		sub	word [bp+4],dx
		sbb	word [bp+6],ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-4]
		add	word [bx+10],ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+18]
		call	ax
		mov	bx,word [bp+8]
		mov	si,word [bp+8]
		mov	ax,word [bx+6]
		mov	dx,word [si+10]
		sub	ax,dx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
..@j21704:
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		cmp	ax,word [bp-2]
		jg	..@j21703
		jl	..@j21705
		cmp	dx,word [bp-4]
		ja	..@j21703
		jmp	..@j21705
		jmp	..@j21705
..@j21705:
		mov	bx,word [bp+8]
		mov	bx,word [bx+14]
		mov	si,word [bp+8]
		mov	si,word [si+10]
		lea	ax,[bx+si]
		push	ax
		push	word [bp+4]
		mov	ax,32
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		add	word [bx+10],ax
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
