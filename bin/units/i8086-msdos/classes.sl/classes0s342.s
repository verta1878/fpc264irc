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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_GETNEXTLINE$ANSISTRING$ANSISTRING$SMALLINT$$BOOLEAN
CLASSES$_$TSTRINGS_$__$$_GETNEXTLINE$ANSISTRING$ANSISTRING$SMALLINT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	word [bp-24],0
		mov	ax,1
		push	ax
		lea	ax,[bp-20]
		push	ax
		lea	ax,[bp-14]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j7960
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j7964
		mov	bx,word [bx-2]
..@j7964:
		mov	word [bp-8],bx
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	byte [bp-1],0
		mov	bx,word [bp+4]
		mov	dx,word [bx]
		mov	ax,word [bp-8]
		sub	ax,dx
		cmp	ax,0
		jl	..@j7971
		jmp	..@j7972
..@j7971:
		jmp	..@j7960
..@j7972:
		mov	bx,word [bp+4]
		mov	dx,word [bx]
		mov	ax,word [bp-8]
		sub	ax,dx
		test	ax,ax
		je	..@j7975
		jmp	..@j7974
..@j7975:
		mov	bx,word [bp+8]
		mov	si,word [bp+4]
		mov	si,word [si]
		mov	al,byte [bx+si-1]
		mov	ah,0
		cmp	ax,10
		je	..@j7976
		cmp	ax,13
		je	..@j7976
..@j7976:
		jne	..@j7973
		jmp	..@j7974
..@j7973:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-24]
		push	ax
		mov	bx,word [bp+8]
		mov	si,word [bp+4]
		mov	si,word [si]
		mov	al,byte [bx+si-1]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-24]
		call	fpc_ansistr_assign
		mov	bx,word [bp+4]
		inc	word [bx]
		mov	byte [bp-1],1
		jmp	..@j7960
..@j7974:
		mov	dx,word [bp+8]
		test	dx,dx
		jne	..@j7991
		mov	dx,word FPC_EMPTYCHAR
..@j7991:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		add	ax,dx
		dec	ax
		mov	word [bp-4],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-6],ax
		jmp	..@j7995
	ALIGN 2
..@j7994:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		inc	ax
		mov	bx,word [bp+4]
		mov	word [bx],ax
		inc	word [bp-4]
..@j7995:
		mov	bx,word [bp+4]
		mov	dx,word [bx]
		mov	ax,word [bp-8]
		sub	ax,dx
		cmp	ax,0
		jge	..@j7999
		jmp	..@j7996
..@j7999:
		mov	bx,word [bp-4]
		mov	al,byte [bx]
		mov	ah,0
		cmp	ax,10
		je	..@j8000
		cmp	ax,13
		je	..@j8000
..@j8000:
		jne	..@j7994
		jmp	..@j7996
..@j7996:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	dx,word [bp-6]
		sub	ax,dx
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	bx,word [bp+8]
		mov	si,word [bp-6]
		lea	ax,[bx+si-1]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	dx,word [bp-6]
		sub	ax,dx
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		cmp	ax,word [bp-8]
		jle	..@j8015
		jmp	..@j8014
..@j8015:
		mov	bx,word [bp+8]
		mov	si,word [bp+4]
		mov	si,word [si]
		cmp	byte [bx+si-1],13
		je	..@j8013
		jmp	..@j8014
..@j8013:
		mov	bx,word [bp+4]
		inc	word [bx]
..@j8014:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		cmp	ax,word [bp-8]
		jle	..@j8018
		jmp	..@j8017
..@j8018:
		mov	bx,word [bp+8]
		mov	si,word [bp+4]
		mov	si,word [si]
		cmp	byte [bx+si-1],10
		je	..@j8016
		jmp	..@j8017
..@j8016:
		mov	bx,word [bp+4]
		inc	word [bx]
..@j8017:
		mov	byte [bp-1],1
..@j7960:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-24]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j7961
		call	FPC_RERAISE
..@j7961:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_ansistr_setlength
EXTERN	FPC_EMPTYCHAR
EXTERN	fpc_char_to_ansistr
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
