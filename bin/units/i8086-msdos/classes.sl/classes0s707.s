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
	GLOBAL CLASSES_$$_DEFAULTINITHANDLER$TCOMPONENT$TCLASS$$BOOLEAN
CLASSES_$$_DEFAULTINITHANDLER$TCOMPONENT$TCLASS$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,18
		push	word [U_$CLASSES_$$_GLOBALNAMESPACE]
		mov	bx,word [U_$CLASSES_$$_GLOBALNAMESPACE]
		mov	bx,word [bx]
		mov	ax,word [bx+10]
		call	ax
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
		jne	..@j14972
		push	bp
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	word [bp-18],ax
		mov	ax,word [bp-18]
		push	ax
		call	CLASSES$_$DEFAULTINITHANDLER$TCOMPONENT$TCLASS$$BOOLEAN_$$_DOINIT$TCLASS$$BOOLEAN
		mov	byte [bp-1],al
..@j14972:
		call	FPC_POPADDRSTACK
		push	word [U_$CLASSES_$$_GLOBALNAMESPACE]
		mov	bx,word [U_$CLASSES_$$_GLOBALNAMESPACE]
		mov	bx,word [bx]
		mov	ax,word [bx+12]
		call	ax
		pop	ax
		test	ax,ax
		je	..@j14973
		call	FPC_RERAISE
..@j14973:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$DEFAULTINITHANDLER$TCOMPONENT$TCLASS$$BOOLEAN_$$_DOINIT$TCLASS$$BOOLEAN
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	U_$CLASSES_$$_GLOBALNAMESPACE
