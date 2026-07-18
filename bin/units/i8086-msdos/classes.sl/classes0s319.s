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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_GETCOMMATEXT$$ANSISTRING
CLASSES$_$TSTRINGS_$__$$_GETCOMMATEXT$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,18
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_CHECKSPECIALCHARS
		mov	bx,word [bp+6]
		mov	al,byte [bx+17]
		mov	byte [bp-3],al
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
		mov	bx,word [bp+6]
		mov	byte [bx+17],0
		mov	ax,1
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j6965
		push	word [bp+6]
		mov	ax,word [bp+4]
		push	ax
		call	CLASSES$_$TSTRINGS_$__$$_GETDELIMITEDTEXT$$ANSISTRING
..@j6965:
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
		mov	bx,word [bp+6]
		mov	al,byte [bp-3]
		mov	byte [bx+17],al
		pop	ax
		test	ax,ax
		je	..@j6966
		call	FPC_RERAISE
..@j6966:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TSTRINGS_$__$$_GETDELIMITEDTEXT$$ANSISTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	CLASSES$_$TSTRINGS_$__$$_SETQUOTECHAR$CHAR
EXTERN	CLASSES$_$TSTRINGS_$__$$_SETDELIMITER$CHAR
EXTERN	CLASSES$_$TSTRINGS_$__$$_GETQUOTECHAR$$CHAR
EXTERN	CLASSES$_$TSTRINGS_$__$$_GETDELIMITER$$CHAR
EXTERN	CLASSES$_$TSTRINGS_$__$$_CHECKSPECIALCHARS
