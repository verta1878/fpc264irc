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
	GLOBAL STRUTILS_$$_RANDOMFROM$array_of_ANSISTRING$$ANSISTRING
STRUTILS_$$_RANDOMFROM$array_of_ANSISTRING$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+4],-1
		je	..@j1368
		jmp	..@j1369
..@j1368:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j1366
..@j1369:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
		mov	ax,word [bp+4]
		inc	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		call	SYSTEM_$$_RANDOM$LONGINT$$LONGINT
		mov	si,ax
		shl	si,1
		mov	bx,word [bp-2]
		push	word [bx+si]
		call	fpc_ansistr_assign
..@j1366:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_RANDOM$LONGINT$$LONGINT
EXTERN	fpc_ansistr_assign
