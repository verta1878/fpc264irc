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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_ASSIGN$TPERSISTENT
CLASSES$_$TSTRINGS_$__$$_ASSIGN$TPERSISTENT:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	ax,word VMT_$CLASSES_$$_TSTRINGS
		push	ax
		push	word [bp+4]
		call	fpc_do_is
		test	al,al
		jne	..@j8327
		jmp	..@j8328
..@j8327:
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_BEGINUPDATE
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
		jne	..@j8337
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+92]
		call	ax
		mov	si,word [bp+6]
		mov	bx,word [bp-2]
		mov	al,byte [bx+6]
		mov	byte [si+6],al
		mov	si,word [bp+6]
		mov	bx,word [bp-2]
		mov	al,byte [bx+7]
		mov	byte [si+7],al
		mov	si,word [bp+6]
		mov	bx,word [bp-2]
		mov	al,byte [bx+8]
		mov	byte [si+8],al
		mov	si,word [bp+6]
		mov	bx,word [bp-2]
		mov	al,byte [bx+9]
		mov	byte [si+9],al
		mov	si,word [bp+6]
		mov	bx,word [bp-2]
		mov	ax,word [bx+14]
		mov	word [si+14],ax
		mov	bx,word [bp+6]
		lea	ax,[bx+18]
		push	ax
		mov	bx,word [bp-2]
		push	word [bx+18]
		call	fpc_ansistr_assign
		push	word [bp+6]
		push	word [bp-2]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+86]
		call	ax
..@j8337:
		call	FPC_POPADDRSTACK
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_ENDUPDATE
		pop	ax
		test	ax,ax
		je	..@j8338
		call	FPC_RERAISE
..@j8338:
		jmp	..@j8362
..@j8328:
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TPERSISTENT_$__$$_ASSIGN$TPERSISTENT
..@j8362:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TPERSISTENT_$__$$_ASSIGN$TPERSISTENT
EXTERN	FPC_RERAISE
EXTERN	CLASSES$_$TSTRINGS_$__$$_ENDUPDATE
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	CLASSES$_$TSTRINGS_$__$$_BEGINUPDATE
EXTERN	fpc_do_is
EXTERN	VMT_$CLASSES_$$_TSTRINGS
