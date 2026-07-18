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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_GETNEXTLINEBREAK$ANSISTRING$ANSISTRING$SMALLINT$$BOOLEAN
CLASSES$_$TSTRINGS_$__$$_GETNEXTLINEBREAK$ANSISTRING$ANSISTRING$SMALLINT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,14
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	byte [bp-1],0
		mov	si,word [bp+8]
		test	si,si
		je	..@j8031
		mov	si,word [si-2]
..@j8031:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		sub	si,ax
		cmp	si,0
		jl	..@j8029
		jmp	..@j8030
..@j8029:
		jmp	..@j8021
..@j8030:
		mov	bx,word [bp+8]
		mov	si,word [bp+4]
		mov	si,word [si]
		lea	ax,[bx+si-1]
		mov	word [bp-4],ax
		mov	ax,word [bp-4]
		mov	word [bp-6],ax
		push	word [bp-4]
		mov	bx,word [bp+10]
		mov	ax,word [bx+18]
		test	ax,ax
		jne	..@j8042
		mov	ax,word FPC_EMPTYCHAR
..@j8042:
		push	ax
		call	SYSUTILS_$$_ANSISTRPOS$PCHAR$PCHAR$$PCHAR
		mov	word [bp-8],ax
		jmp	..@j8044
	ALIGN 2
..@j8043:
		inc	word [bp-6]
..@j8044:
		mov	bx,word [bp-6]
		cmp	byte [bx],0
		jne	..@j8046
		jmp	..@j8045
..@j8046:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-8]
		jne	..@j8043
		jmp	..@j8045
..@j8045:
		mov	dx,word [bp-6]
		mov	ax,word [bp-4]
		sub	dx,ax
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		add	ax,dx
		mov	bx,word [bp+10]
		mov	bx,word [bx+18]
		test	bx,bx
		je	..@j8049
		mov	bx,word [bx-2]
..@j8049:
		add	bx,ax
		mov	si,word [bp+4]
		mov	word [si],bx
		mov	ax,word [bp+6]
		mov	word [bp-14],ax
		push	word [bp-14]
		call	fpc_ansistr_decr_ref
		push	word [bp-14]
		push	word [bp-4]
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		sub	ax,dx
		push	ax
		mov	ax,0
		push	ax
		call	fpc_setstring_ansistr_pansichar
		mov	byte [bp-1],1
..@j8021:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_setstring_ansistr_pansichar
EXTERN	fpc_ansistr_decr_ref
EXTERN	SYSUTILS_$$_ANSISTRPOS$PCHAR$PCHAR$$PCHAR
EXTERN	FPC_EMPTYCHAR
EXTERN	fpc_ansistr_assign
