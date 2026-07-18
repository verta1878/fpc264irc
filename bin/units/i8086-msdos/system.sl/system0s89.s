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
	GLOBAL fpc_shortstr_to_chararray
fpc_shortstr_to_chararray:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		mov	ax,0
		mov	dl,byte [bx]
		mov	dh,0
		mov	word [bp-4],dx
		mov	word [bp-2],ax
		mov	ax,word [bp+6]
		inc	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,word [bp-2]
		jl	..@j1362
		jg	..@j1363
		cmp	cx,word [bp-4]
		jb	..@j1362
		jmp	..@j1363
		jmp	..@j1363
..@j1362:
		mov	ax,word [bp+6]
		inc	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
..@j1363:
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,0
		jg	..@j1366
		jl	..@j1367
		cmp	dx,0
		ja	..@j1366
		jmp	..@j1367
..@j1366:
		mov	bx,word [bp+4]
		lea	ax,[bx+1]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j1367:
		mov	bx,word [bp+8]
		mov	si,word [bp-4]
		lea	ax,[bx+si]
		push	ax
		mov	ax,word [bp+6]
		inc	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	bx,word [bp-4]
		mov	dx,word [bp-2]
		sub	cx,bx
		sbb	ax,dx
		push	cx
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
