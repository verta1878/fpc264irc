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
	GLOBAL fpc_shortstr_to_unicodestr
fpc_shortstr_to_unicodestr:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_unicodestr_assign
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	ah,0
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jg	..@j10938
		jmp	..@j10939
..@j10938:
		mov	bx,word [bp+4]
		lea	ax,[bx+1]
		push	ax
		push	word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		mov	ax,word [bp+6]
		push	ax
		push	word [bp-2]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+40]
		call	ax
..@j10939:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
EXTERN	fpc_unicodestr_assign
