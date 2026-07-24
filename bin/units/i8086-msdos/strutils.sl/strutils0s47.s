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
	GLOBAL STRUTILS_$$_STUFFSTRING$ANSISTRING$LONGWORD$LONGWORD$ANSISTRING$$ANSISTRING
STRUTILS_$$_STUFFSTRING$ANSISTRING$LONGWORD$LONGWORD$ANSISTRING$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j1322
		mov	bx,word [bx-2]
..@j1322:
		mov	word [bp-4],bx
		mov	bx,word [bp+14]
		test	bx,bx
		je	..@j1325
		mov	bx,word [bx-2]
..@j1325:
		mov	word [bp-2],bx
		mov	ax,word [bp-2]
		mov	dx,0
		cmp	dx,word [bp+12]
		jb	..@j1326
		ja	..@j1327
		cmp	ax,word [bp+10]
		jb	..@j1326
		jmp	..@j1327
		jmp	..@j1327
..@j1326:
		mov	ax,word [bp-2]
		inc	ax
		mov	dx,0
		mov	word [bp+10],ax
		mov	word [bp+12],dx
..@j1327:
		mov	ax,word [bp-2]
		inc	ax
		mov	dx,0
		mov	bx,word [bp+10]
		mov	cx,word [bp+12]
		sub	ax,bx
		sbb	dx,cx
		mov	word [bp-6],ax
		mov	dx,word [bp-6]
		mov	ax,0
		cmp	ax,word [bp+8]
		jb	..@j1332
		ja	..@j1333
		cmp	dx,word [bp+6]
		jb	..@j1332
		jmp	..@j1333
		jmp	..@j1333
..@j1332:
		mov	dx,word [bp-6]
		mov	ax,0
		mov	word [bp+6],dx
		mov	word [bp+8],ax
..@j1333:
		mov	ax,word [bp+16]
		push	ax
		mov	dx,word [bp-2]
		mov	ax,word [bp-4]
		add	ax,dx
		mov	dx,0
		mov	bx,word [bp+6]
		mov	cx,word [bp+8]
		sub	ax,bx
		sbb	dx,cx
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	ax,word [bp+14]
		push	ax
		mov	ax,word [bp+16]
		push	ax
		call	fpc_ansistr_unique
		push	ax
		mov	ax,word [bp+10]
		mov	dx,word [bp+12]
		sub	ax,1
		sbb	dx,0
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp+16]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	si,word [bp+10]
		lea	ax,[bx+si-1]
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+14]
		mov	si,word [bp+10]
		mov	dx,word [bp+12]
		mov	ax,word [bp+6]
		mov	cx,word [bp+8]
		add	ax,si
		adc	cx,dx
		mov	si,ax
		lea	ax,[bx+si-1]
		push	ax
		mov	ax,word [bp+16]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	si,word [bp-4]
		mov	dx,0
		mov	ax,word [bp+10]
		mov	cx,word [bp+12]
		add	ax,si
		adc	cx,dx
		mov	si,ax
		lea	ax,[bx+si-1]
		push	ax
		mov	ax,word [bp-2]
		inc	ax
		mov	dx,0
		mov	cx,word [bp+10]
		mov	bx,word [bp+12]
		sub	ax,cx
		sbb	dx,bx
		mov	cx,word [bp+6]
		mov	bx,word [bp+8]
		sub	ax,cx
		sbb	dx,bx
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	sp,bp
		pop	bp
		ret	14
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_ansistr_unique
EXTERN	fpc_ansistr_setlength
