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
	GLOBAL CLASSES$_$TPARSER_$__$$_CHECKTOKENSYMBOL$ANSISTRING
CLASSES$_$TPARSER_$__$$_CHECKTOKENSYMBOL$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,12
		push	word [bp+6]
		mov	ax,1
		push	ax
		call	CLASSES$_$TPARSER_$__$$_CHECKTOKEN$CHAR
		mov	bx,word [bp+6]
		push	word [bx+17]
		push	word [bp+4]
		call	SYSUTILS_$$_COMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT
		test	ax,ax
		jne	..@j3557
		jmp	..@j3558
..@j3557:
		push	word [bp+6]
		push	word [RESSTR_$RTLCONSTS_$$_SPARWRONGTOKENSYMBOL+2]
		mov	ax,word [bp+4]
		mov	dx,0
		mov	word [bp-10],ax
		mov	word [bp-8],dx
		mov	word [bp-12],11
		mov	bx,word [bp+6]
		mov	ax,word [bx+17]
		mov	dx,0
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	word [bp-6],11
		lea	ax,[bp-12]
		push	ax
		mov	ax,1
		push	ax
		call	CLASSES$_$TPARSER_$__$$_ERRORFMT$ANSISTRING$array_of_const
..@j3558:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TPARSER_$__$$_ERRORFMT$ANSISTRING$array_of_const
EXTERN	RESSTR_$RTLCONSTS_$$_SPARWRONGTOKENSYMBOL
EXTERN	SYSUTILS_$$_COMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT
EXTERN	CLASSES$_$TPARSER_$__$$_CHECKTOKEN$CHAR
