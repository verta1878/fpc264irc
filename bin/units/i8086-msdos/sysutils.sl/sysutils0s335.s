BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION text
	ALIGN 2
	GLOBAL SYSUTILS_$$_TRYSTRTODATE$ANSISTRING$TDATETIME$TFORMATSETTINGS$$BOOLEAN
SYSUTILS_$$_TRYSTRTODATE$ANSISTRING$TDATETIME$TFORMATSETTINGS$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	word [bp-4],0
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
		jne	..@j12037
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j12041
		mov	bx,word [bx-2]
..@j12041:
		test	bx,bx
		mov	al,0
		je	..@j12042
		inc	ax
..@j12042:
		mov	byte [bp-1],al
		cmp	byte [bp-1],0
		jne	..@j12043
		jmp	..@j12044
..@j12043:
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-4]
		push	ax
		mov	ax,word [bp+8]
		test	ax,ax
		jne	..@j12051
		mov	ax,word FPC_EMPTYCHAR
..@j12051:
		push	ax
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j12054
		mov	bx,word [bx-2]
..@j12054:
		push	bx
		mov	bx,word [bp+4]
		push	word [bx+10]
		mov	ax,word [bp+4]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS_$$_INTSTRTODATE$crcFE9096A9
		mov	bx,word [bp+6]
		wait fstp	qword [bx]
		DB	09bh
		cmp	word [bp-4],0
		mov	al,0
		jne	..@j12063
		inc	ax
..@j12063:
		mov	byte [bp-1],al
..@j12044:
..@j12037:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j12038
		call	FPC_RERAISE
..@j12038:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS_$$_INTSTRTODATE$crcFE9096A9
EXTERN	FPC_EMPTYCHAR
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
