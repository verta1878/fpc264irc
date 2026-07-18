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
	GLOBAL CLASSES$_$TPARSER_$__$$_CHECKTOKEN$CHAR
CLASSES$_$TPARSER_$__$$_CHECKTOKEN$CHAR:
		push	bp
		mov	bp,sp
		sub	sp,30
		mov	word [bp-30],0
		mov	word [bp-28],0
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j3527
		mov	bx,word [bp+6]
		mov	al,byte [bx+15]
		cmp	al,byte [bp+4]
		jne	..@j3529
		jmp	..@j3530
..@j3529:
		push	word [bp+6]
		push	word [RESSTR_$RTLCONSTS_$$_SPARWRONGTOKENTYPE+2]
		push	word [bp+6]
		lea	ax,[bp-28]
		push	ax
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	CLASSES$_$TPARSER_$__$$_GETTOKENNAME$CHAR$$ANSISTRING
		mov	dx,word [bp-28]
		mov	ax,0
		mov	word [bp-24],dx
		mov	word [bp-22],ax
		mov	word [bp-26],11
		push	word [bp+6]
		lea	ax,[bp-30]
		push	ax
		mov	bx,word [bp+6]
		mov	al,byte [bx+15]
		mov	ah,0
		push	ax
		call	CLASSES$_$TPARSER_$__$$_GETTOKENNAME$CHAR$$ANSISTRING
		mov	ax,word [bp-30]
		mov	dx,0
		mov	word [bp-18],ax
		mov	word [bp-16],dx
		mov	word [bp-20],11
		lea	ax,[bp-26]
		push	ax
		mov	ax,1
		push	ax
		call	CLASSES$_$TPARSER_$__$$_ERRORFMT$ANSISTRING$array_of_const
..@j3530:
..@j3527:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-30]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-28]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j3528
		call	FPC_RERAISE
..@j3528:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TPARSER_$__$$_ERRORFMT$ANSISTRING$array_of_const
EXTERN	CLASSES$_$TPARSER_$__$$_GETTOKENNAME$CHAR$$ANSISTRING
EXTERN	RESSTR_$RTLCONSTS_$$_SPARWRONGTOKENTYPE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
