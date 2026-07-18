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
	GLOBAL SYSUTILS_$$_FINDCMDLINESWITCH$ANSISTRING$TSYSCHARSET$BOOLEAN$$BOOLEAN
SYSUTILS_$$_FINDCMDLINESWITCH$ANSISTRING$TSYSCHARSET$BOOLEAN$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,28
		mov	word [bp-8],0
		mov	word [bp-10],0
		mov	word [bp-28],0
		mov	word [bp-26],0
		mov	ax,1
		push	ax
		lea	ax,[bp-22]
		push	ax
		lea	ax,[bp-16]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j8869
		mov	byte [bp-1],0
		lea	ax,[bp-8]
		push	ax
		push	word [bp+8]
		call	fpc_ansistr_assign
		cmp	byte [bp+4],0
		jne	..@j8877
		jmp	..@j8878
..@j8877:
		lea	ax,[bp-8]
		push	ax
		lea	ax,[bp-26]
		push	ax
		push	word [bp-8]
		call	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
		push	word [bp-26]
		call	fpc_ansistr_assign
..@j8878:
		call	SYSTEM_$$_PARAMCOUNT$$LONGINT
		mov	word [bp-4],ax
		jmp	..@j8890
	ALIGN 2
..@j8889:
		lea	ax,[bp-26]
		push	ax
		push	word [bp-4]
		call	OBJPAS_$$_PARAMSTR$SMALLINT$$ANSISTRING
		mov	bx,word [bp-26]
		test	bx,bx
		je	..@j8898
		mov	bx,word [bx-2]
..@j8898:
		mov	word [bp-6],bx
		cmp	word [bp-6],0
		jg	..@j8901
		jmp	..@j8900
..@j8901:
		lea	ax,[bp-26]
		push	ax
		push	word [bp-4]
		call	OBJPAS_$$_PARAMSTR$SMALLINT$$ANSISTRING
		mov	si,word [bp-26]
		mov	bx,word [bp+6]
		mov	al,byte [si]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		mov	ax,1
		shl	ax,cl
		test	word [bx+si],ax
		jne	..@j8899
		jmp	..@j8900
..@j8899:
		lea	ax,[bp-10]
		push	ax
		lea	ax,[bp-28]
		push	ax
		push	word [bp-4]
		call	OBJPAS_$$_PARAMSTR$SMALLINT$$ANSISTRING
		push	word [bp-28]
		mov	ax,2
		push	ax
		mov	ax,word [bp-6]
		dec	ax
		push	ax
		call	fpc_ansistr_copy
		cmp	byte [bp+4],0
		jne	..@j8918
		jmp	..@j8919
..@j8918:
		lea	ax,[bp-10]
		push	ax
		lea	ax,[bp-28]
		push	ax
		push	word [bp-10]
		call	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
		push	word [bp-28]
		call	fpc_ansistr_assign
..@j8919:
		push	word [bp-8]
		push	word [bp-10]
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j8929
		cmp	cx,0
		jne	..@j8929
		jmp	..@j8928
..@j8928:
		mov	byte [bp-1],1
		jmp	..@j8934
..@j8929:
		mov	byte [bp-1],0
..@j8934:
..@j8900:
		dec	word [bp-4]
..@j8890:
		cmp	byte [bp-1],0
		je	..@j8935
		jmp	..@j8891
..@j8935:
		cmp	word [bp-4],0
		jg	..@j8889
		jmp	..@j8891
..@j8891:
..@j8869:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-28]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-26]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-8]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-10]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j8870
		call	FPC_RERAISE
..@j8870:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_compare_equal
EXTERN	fpc_ansistr_copy
EXTERN	OBJPAS_$$_PARAMSTR$SMALLINT$$ANSISTRING
EXTERN	SYSTEM_$$_PARAMCOUNT$$LONGINT
EXTERN	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
