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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_READDATA$TREADER
CLASSES$_$TSTRINGS_$__$$_READDATA$TREADER:
		push	bp
		mov	bp,sp
		sub	sp,30
		mov	word [bp-30],0
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
		jne	..@j7326
		push	word [bp+4]
		call	CLASSES$_$TREADER_$__$$_READLISTBEGIN
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_BEGINUPDATE
		mov	ax,1
		push	ax
		lea	ax,[bp-26]
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j7332
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+92]
		call	ax
		jmp	..@j7338
	ALIGN 2
..@j7337:
		push	word [bp+6]
		push	word [bp+4]
		lea	ax,[bp-30]
		push	ax
		call	CLASSES$_$TREADER_$__$$_READSTRING$$ANSISTRING
		push	word [bp-30]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+82]
		call	ax
..@j7338:
		push	word [bp+4]
		call	CLASSES$_$TREADER_$__$$_ENDOFLIST$$BOOLEAN
		test	al,al
		jne	..@j7339
		jmp	..@j7337
..@j7339:
..@j7332:
		call	FPC_POPADDRSTACK
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_ENDUPDATE
		pop	ax
		test	ax,ax
		je	..@j7333
		call	FPC_RERAISE
..@j7333:
		push	word [bp+4]
		call	CLASSES$_$TREADER_$__$$_READLISTEND
..@j7326:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-30]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j7327
		call	FPC_RERAISE
..@j7327:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_decr_ref
EXTERN	CLASSES$_$TREADER_$__$$_READLISTEND
EXTERN	FPC_RERAISE
EXTERN	CLASSES$_$TSTRINGS_$__$$_ENDUPDATE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TREADER_$__$$_ENDOFLIST$$BOOLEAN
EXTERN	CLASSES$_$TREADER_$__$$_READSTRING$$ANSISTRING
EXTERN	CLASSES$_$TSTRINGS_$__$$_BEGINUPDATE
EXTERN	CLASSES$_$TREADER_$__$$_READLISTBEGIN
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
