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
	GLOBAL CLASSES$_$TPARSER_$__$$_HANDLEQUOTEDSTRING$$ANSISTRING
CLASSES$_$TPARSER_$__$$_HANDLEQUOTEDSTRING$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	word [bp-16],0
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
		jne	..@j3232
		mov	ax,word [bp+4]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	bx,word [bp+6]
		inc	word [bx+8]
		push	word [bp+6]
		call	CLASSES$_$TPARSER_$__$$_CHECKLOADBUFFER
		jmp	..@j3241
	ALIGN 2
..@j3240:
		mov	bx,word [bp+6]
		mov	bx,word [bx+4]
		mov	si,word [bp+6]
		mov	si,word [si+8]
		mov	al,byte [bx+si]
		test	al,al
		je	..@j3245
		sub	al,10
		je	..@j3246
		sub	al,3
		je	..@j3246
		sub	al,26
		je	..@j3247
		jmp	..@j3244
..@j3245:
		push	word [bp+6]
		push	word [RESSTR_$RTLCONSTS_$$_SPARUNTERMINATEDSTRING+2]
		call	CLASSES$_$TPARSER_$__$$_ERRORSTR$ANSISTRING
		jmp	..@j3243
..@j3246:
		push	word [bp+6]
		push	word [RESSTR_$RTLCONSTS_$$_SPARUNTERMINATEDSTRING+2]
		call	CLASSES$_$TPARSER_$__$$_ERRORSTR$ANSISTRING
		jmp	..@j3243
..@j3247:
		mov	bx,word [bp+6]
		inc	word [bx+8]
		push	word [bp+6]
		call	CLASSES$_$TPARSER_$__$$_CHECKLOADBUFFER
		mov	bx,word [bp+6]
		mov	bx,word [bx+4]
		mov	si,word [bp+6]
		mov	si,word [si+8]
		cmp	byte [bx+si],39
		jne	..@j3258
		jmp	..@j3259
..@j3258:
		jmp	..@j3232
..@j3259:
		jmp	..@j3243
..@j3244:
..@j3243:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx]
		lea	ax,[bp-16]
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
		push	word [bp-16]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		mov	bx,word [bp+6]
		inc	word [bx+8]
		push	word [bp+6]
		call	CLASSES$_$TPARSER_$__$$_CHECKLOADBUFFER
..@j3241:
		jmp	..@j3240
..@j3232:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j3233
		call	FPC_RERAISE
..@j3233:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_concat
EXTERN	fpc_char_to_ansistr
EXTERN	CLASSES$_$TPARSER_$__$$_ERRORSTR$ANSISTRING
EXTERN	RESSTR_$RTLCONSTS_$$_SPARUNTERMINATEDSTRING
EXTERN	CLASSES$_$TPARSER_$__$$_CHECKLOADBUFFER
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
