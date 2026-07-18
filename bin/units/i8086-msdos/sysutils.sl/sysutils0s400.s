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
	GLOBAL SYSUTILS_$$_FPCGETENVSTRFROMP$PPCHAR$SMALLINT$$ANSISTRING
SYSUTILS_$$_FPCGETENVSTRFROMP$PPCHAR$SMALLINT$$ANSISTRING:
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
		jne	..@j13236
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j13243
	ALIGN 2
..@j13242:
		dec	word [bp+4]
		add	word [bp+6],2
..@j13243:
		mov	bx,word [bp+6]
		cmp	word [bx],0
		jne	..@j13245
		jmp	..@j13244
..@j13245:
		cmp	word [bp+4],1
		jg	..@j13242
		jmp	..@j13244
..@j13244:
		mov	bx,word [bp+6]
		cmp	word [bx],0
		jne	..@j13246
		jmp	..@j13247
..@j13246:
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx]
		mov	ax,0
		push	ax
		call	fpc_pchar_to_ansistr
		push	word [bp-16]
		call	fpc_ansistr_assign
..@j13247:
..@j13236:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j13237
		call	FPC_RERAISE
..@j13237:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_pchar_to_ansistr
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
