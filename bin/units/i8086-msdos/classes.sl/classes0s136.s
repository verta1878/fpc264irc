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
	GLOBAL CLASSES$_$TPARSER_$__$$_GETALPHANUM$$ANSISTRING
CLASSES$_$TPARSER_$__$$_GETALPHANUM$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	word [bp-22],0
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
		jne	..@j2976
		push	word [bp+6]
		call	CLASSES$_$TPARSER_$__$$_ISALPHA$$BOOLEAN
		test	al,al
		je	..@j2978
		jmp	..@j2979
..@j2978:
		push	word [bp+6]
		push	word [RESSTR_$RTLCONSTS_$$_SPAREXPECTED+2]
		push	word [bp+6]
		lea	ax,[bp-22]
		push	ax
		mov	ax,1
		push	ax
		call	CLASSES$_$TPARSER_$__$$_GETTOKENNAME$CHAR$$ANSISTRING
		mov	dx,word [bp-22]
		mov	ax,0
		mov	word [bp-18],dx
		mov	word [bp-16],ax
		mov	word [bp-20],11
		lea	ax,[bp-20]
		push	ax
		mov	ax,0
		push	ax
		call	CLASSES$_$TPARSER_$__$$_ERRORFMT$ANSISTRING$array_of_const
..@j2979:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j3001
	ALIGN 2
..@j3000:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx]
		lea	ax,[bp-22]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+4]
		mov	si,word [bp+6]
		mov	si,word [si+8]
		mov	al,byte [bx+si]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-22]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		mov	bx,word [bp+6]
		inc	word [bx+8]
		push	word [bp+6]
		call	CLASSES$_$TPARSER_$__$$_CHECKLOADBUFFER
..@j3001:
		push	word [bp+6]
		call	CLASSES$_$TPARSER_$__$$_ISALPHANUM$$BOOLEAN
		test	al,al
		jne	..@j3000
		jmp	..@j3002
..@j3002:
..@j2976:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-22]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j2977
		call	FPC_RERAISE
..@j2977:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TPARSER_$__$$_ISALPHANUM$$BOOLEAN
EXTERN	CLASSES$_$TPARSER_$__$$_CHECKLOADBUFFER
EXTERN	fpc_ansistr_concat
EXTERN	fpc_char_to_ansistr
EXTERN	fpc_ansistr_assign
EXTERN	CLASSES$_$TPARSER_$__$$_ERRORFMT$ANSISTRING$array_of_const
EXTERN	CLASSES$_$TPARSER_$__$$_GETTOKENNAME$CHAR$$ANSISTRING
EXTERN	RESSTR_$RTLCONSTS_$$_SPAREXPECTED
EXTERN	CLASSES$_$TPARSER_$__$$_ISALPHA$$BOOLEAN
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
