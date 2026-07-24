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
	GLOBAL SYSTEM_$$_ANSISTR_CONCAT_COMPLEX$RAWBYTESTRING$RAWBYTESTRING$RAWBYTESTRING$WORD
SYSTEM_$$_ANSISTR_CONCAT_COMPLEX$RAWBYTESTRING$RAWBYTESTRING$RAWBYTESTRING$WORD:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	word [bp-2],0
		mov	word [bp-20],0
		mov	word [bp-18],0
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
		jne	..@j8626
		lea	ax,[bp-2]
		push	ax
		lea	ax,[bp-18]
		push	ax
		push	word [bp+8]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-18]
		lea	ax,[bp-20]
		push	ax
		push	word [bp+6]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-20]
		call	fpc_unicodestr_concat
		push	word [bp-2]
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+4]
		mov	bx,word [bp-2]
		test	bx,bx
		je	..@j8650
		mov	bx,word [bx-2]
..@j8650:
		push	bx
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+38]
		call	ax
..@j8626:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-20]
		push	ax
		call	fpc_unicodestr_decr_ref
		lea	ax,[bp-18]
		push	ax
		call	fpc_unicodestr_decr_ref
		lea	ax,[bp-2]
		push	ax
		call	fpc_unicodestr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j8627
		call	FPC_RERAISE
..@j8627:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_RERAISE
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	fpc_unicodestr_concat
EXTERN	fpc_ansistr_to_unicodestr
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
