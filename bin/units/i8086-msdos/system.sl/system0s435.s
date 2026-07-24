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
	GLOBAL fpc_unicodestr_to_ansistr
fpc_unicodestr_to_ansistr:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j10956
		mov	bx,word [bx-2]
..@j10956:
		mov	word [bp-2],bx
		cmp	word [bp-2],0
		jg	..@j10957
		jmp	..@j10958
..@j10957:
		mov	dx,word [bp+4]
		mov	ax,word [bp+4]
		sub	ax,1
		jbe	..@j10966
		jmp	..@j10965
..@j10966:
		mov	dx,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j10964
..@j10965:
..@j10964:
		mov	word [bp+4],dx
		push	word [bp+6]
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+4]
		push	word [bp-2]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+38]
		call	ax
..@j10958:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
EXTERN	fpc_ansistr_assign
