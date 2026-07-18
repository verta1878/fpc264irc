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
	GLOBAL SYSTEM_$$_STRINGTOWIDECHAR$RAWBYTESTRING$PWIDECHAR$SMALLINT$$PWIDECHAR
SYSTEM_$$_STRINGTOWIDECHAR$RAWBYTESTRING$PWIDECHAR$SMALLINT$$PWIDECHAR:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	word [bp-4],0
		mov	ax,1
		push	ax
		lea	ax,[bp-18]
		push	ax
		lea	ax,[bp-12]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j11931
		mov	ax,word [bp+8]
		test	ax,ax
		jne	..@j11935
		mov	ax,word FPC_EMPTYCHAR
..@j11935:
		push	ax
		push	word [bp+8]
		call	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
		push	ax
		lea	ax,[bp-4]
		push	ax
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j11944
		mov	bx,word [bx-2]
..@j11944:
		push	bx
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+2]
		call	ax
		mov	bx,word [bp-4]
		test	bx,bx
		je	..@j11947
		mov	bx,word [bx-2]
..@j11947:
		mov	word [bp-6],bx
		mov	ax,word [bp+4]
		cmp	ax,word [bp-6]
		jle	..@j11948
		jmp	..@j11949
..@j11948:
		mov	ax,word [bp+4]
		dec	ax
		mov	word [bp-6],ax
..@j11949:
		mov	ax,word [bp-4]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp-6]
		shl	ax,1
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+6]
		mov	ax,word [bp-6]
		mov	si,ax
		shl	si,1
		mov	word [bx+si],0
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
..@j11931:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-4]
		push	ax
		call	fpc_unicodestr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j11932
		call	FPC_RERAISE
..@j11932:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
EXTERN	FPC_EMPTYCHAR
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
