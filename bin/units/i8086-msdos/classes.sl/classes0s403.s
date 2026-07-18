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
	GLOBAL CLASSES$_$TSTRINGLIST_$__$$_DOCOMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT
CLASSES$_$TSTRINGLIST_$__$$_DOCOMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+8]
		cmp	byte [bx+36],0
		jne	..@j9456
		jmp	..@j9457
..@j9456:
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+18]
		call	ax
		mov	word [bp-2],ax
		jmp	..@j9466
..@j9457:
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+20]
		call	ax
		mov	word [bp-2],ax
..@j9466:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
