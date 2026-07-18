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
	GLOBAL SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		mov	ax,word [si]
		mov	dx,word [si+2]
		cmp	dx,word [bx+2]
		jne	..@j14982
		cmp	ax,word [bx]
		jne	..@j14982
		jmp	..@j14985
		jmp	..@j14982
..@j14985:
		mov	bx,word [bp+6]
		lea	si,[bx+4]
		mov	bx,word [bp+4]
		lea	bx,[bx+4]
		mov	dx,word [si]
		mov	ax,word [si+2]
		cmp	ax,word [bx+2]
		jne	..@j14982
		cmp	dx,word [bx]
		jne	..@j14982
		jmp	..@j14984
		jmp	..@j14982
..@j14984:
		mov	bx,word [bp+6]
		lea	si,[bx+8]
		mov	bx,word [bp+4]
		lea	bx,[bx+8]
		mov	dx,word [si]
		mov	ax,word [si+2]
		cmp	ax,word [bx+2]
		jne	..@j14982
		cmp	dx,word [bx]
		jne	..@j14982
		jmp	..@j14983
		jmp	..@j14982
..@j14983:
		mov	bx,word [bp+6]
		lea	si,[bx+12]
		mov	bx,word [bp+4]
		lea	bx,[bx+12]
		mov	dx,word [si]
		mov	ax,word [si+2]
		cmp	ax,word [bx+2]
		jne	..@j14982
		cmp	dx,word [bx]
		jne	..@j14982
		jmp	..@j14981
		jmp	..@j14982
..@j14981:
		mov	byte [bp-1],1
		jmp	..@j14986
..@j14982:
		mov	byte [bp-1],0
..@j14986:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
