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
	GLOBAL STRUTILS_$$_DUPESTRING$ANSISTRING$SMALLINT$$ANSISTRING
STRUTILS_$$_DUPESTRING$ANSISTRING$SMALLINT$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		cmp	word [bp+4],0
		jge	..@j1267
		jmp	..@j1268
..@j1267:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j1271
		mov	bx,word [bx-2]
..@j1271:
		mov	word [bp-4],bx
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp-4]
		mul	word [bp+4]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	ax,word [bp+4]
		dec	ax
		mov	word [bp-6],ax
		mov	word [bp-2],0
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jl	..@j1281
		dec	word [bp-2]
	ALIGN 2
..@j1282:
		inc	word [bp-2]
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	ax,word [bp-2]
		mul	word [bp-4]
		mov	si,ax
		inc	si
		lea	ax,[bx+si-1]
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jg	..@j1282
..@j1281:
..@j1268:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_ansistr_unique
EXTERN	fpc_ansistr_setlength
EXTERN	fpc_ansistr_assign
