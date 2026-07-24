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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_DOSETTEXTSTR$ANSISTRING$BOOLEAN
CLASSES$_$TSTRINGS_$__$$_DOSETTEXTSTR$ANSISTRING$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,32
		mov	word [bp-2],0
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
		jne	..@j8062
		mov	ax,1
		push	ax
		lea	ax,[bp-30]
		push	ax
		lea	ax,[bp-24]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j8064
		push	word [bp+8]
		call	CLASSES$_$TSTRINGS_$__$$_BEGINUPDATE
		cmp	byte [bp+4],0
		jne	..@j8069
		jmp	..@j8070
..@j8069:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+92]
		call	ax
..@j8070:
		mov	word [bp-4],1
		mov	bx,word [bp+8]
		push	word [bx+18]
		mov	ax,word _$CLASSES$_Ld17
		push	ax
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j8076
		cmp	cx,0
		jne	..@j8076
		jmp	..@j8075
..@j8075:
		jmp	..@j8082
	ALIGN 2
..@j8081:
		push	word [bp+8]
		push	word [bp-2]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+82]
		call	ax
..@j8082:
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		push	ax
		push	word [bp+6]
		lea	ax,[bp-2]
		push	ax
		lea	ax,[bp-4]
		push	ax
		call	CLASSES$_$TSTRINGS_$__$$_GETNEXTLINE$ANSISTRING$ANSISTRING$SMALLINT$$BOOLEAN
		test	al,al
		jne	..@j8081
		jmp	..@j8083
..@j8083:
		jmp	..@j8096
..@j8076:
		jmp	..@j8098
	ALIGN 2
..@j8097:
		push	word [bp+8]
		push	word [bp-2]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+82]
		call	ax
..@j8098:
		push	word [bp+8]
		push	word [bp+6]
		lea	ax,[bp-2]
		push	ax
		lea	ax,[bp-4]
		push	ax
		call	CLASSES$_$TSTRINGS_$__$$_GETNEXTLINEBREAK$ANSISTRING$ANSISTRING$SMALLINT$$BOOLEAN
		test	al,al
		jne	..@j8097
		jmp	..@j8099
..@j8099:
..@j8096:
..@j8064:
		call	FPC_POPADDRSTACK
		push	word [bp+8]
		call	CLASSES$_$TSTRINGS_$__$$_ENDUPDATE
		pop	ax
		test	ax,ax
		je	..@j8065
		call	FPC_RERAISE
..@j8065:
..@j8062:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j8063
		call	FPC_RERAISE
..@j8063:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_RERAISE
EXTERN	CLASSES$_$TSTRINGS_$__$$_ENDUPDATE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TSTRINGS_$__$$_GETNEXTLINEBREAK$ANSISTRING$ANSISTRING$SMALLINT$$BOOLEAN
EXTERN	CLASSES$_$TSTRINGS_$__$$_GETNEXTLINE$ANSISTRING$ANSISTRING$SMALLINT$$BOOLEAN
EXTERN	fpc_ansistr_compare_equal
EXTERN	_$CLASSES$_Ld17
EXTERN	CLASSES$_$TSTRINGS_$__$$_BEGINUPDATE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
