BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TSTRINGS_$__$$_CHECKSPECIALCHARS
CLASSES$_$TSTRINGS_$__$$_CHECKSPECIALCHARS:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		cmp	byte [bx+6],0
		je	..@j6849
		jmp	..@j6850
..@j6849:
		mov	bx,word [bp+4]
		mov	byte [bx+7],34
		mov	bx,word [bp+4]
		mov	byte [bx+8],44
		mov	bx,word [bp+4]
		mov	byte [bx+9],61
		mov	bx,word [bp+4]
		mov	ax,word [TC_$SYSTEM_$$_DEFAULTTEXTLINEBREAKSTYLE]
		mov	word [bx+14],ax
		mov	bx,word [bp+4]
		mov	byte [bx+6],1
		mov	bx,word [bp+4]
		lea	ax,[bx+18]
		push	ax
		mov	ax,word _$CLASSES$_Ld17
		push	ax
		call	fpc_ansistr_assign
..@j6850:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_ansistr_assign
EXTERN	_$CLASSES$_Ld17
EXTERN	TC_$SYSTEM_$$_DEFAULTTEXTLINEBREAKSTYLE
