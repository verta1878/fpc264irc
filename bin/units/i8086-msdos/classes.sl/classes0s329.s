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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_SETCOMMATEXT$ANSISTRING
CLASSES$_$TSTRINGS_$__$$_SETCOMMATEXT$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,16
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_CHECKSPECIALCHARS
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_GETDELIMITER$$CHAR
		mov	byte [bp-1],al
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_GETQUOTECHAR$$CHAR
		mov	byte [bp-2],al
		push	word [bp+6]
		mov	ax,44
		push	ax
		call	CLASSES$_$TSTRINGS_$__$$_SETDELIMITER$CHAR
		push	word [bp+6]
		mov	ax,34
		push	ax
		call	CLASSES$_$TSTRINGS_$__$$_SETQUOTECHAR$CHAR
		mov	ax,1
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j7617
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TSTRINGS_$__$$_SETDELIMITEDTEXT$ANSISTRING
..@j7617:
		call	FPC_POPADDRSTACK
		push	word [bp+6]
		mov	al,byte [bp-1]
		mov	ah,0
		push	ax
		call	CLASSES$_$TSTRINGS_$__$$_SETDELIMITER$CHAR
		push	word [bp+6]
		mov	al,byte [bp-2]
		mov	ah,0
		push	ax
		call	CLASSES$_$TSTRINGS_$__$$_SETQUOTECHAR$CHAR
		pop	ax
		test	ax,ax
		je	..@j7618
		call	FPC_RERAISE
..@j7618:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TSTRINGS_$__$$_SETDELIMITEDTEXT$ANSISTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	CLASSES$_$TSTRINGS_$__$$_SETQUOTECHAR$CHAR
EXTERN	CLASSES$_$TSTRINGS_$__$$_SETDELIMITER$CHAR
EXTERN	CLASSES$_$TSTRINGS_$__$$_GETQUOTECHAR$$CHAR
EXTERN	CLASSES$_$TSTRINGS_$__$$_GETDELIMITER$$CHAR
EXTERN	CLASSES$_$TSTRINGS_$__$$_CHECKSPECIALCHARS
