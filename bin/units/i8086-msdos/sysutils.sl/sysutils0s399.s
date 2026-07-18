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
	GLOBAL SYSUTILS_$$_FPCGETENVVARFROMP$PPCHAR$ANSISTRING$$ANSISTRING
SYSUTILS_$$_FPCGETENVVARFROMP$PPCHAR$ANSISTRING$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,28
		push	word [bp+4]
		call	fpc_ansistr_incr_ref
		mov	word [bp-4],0
		mov	word [bp-6],0
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
		jne	..@j13168
		lea	ax,[bp-4]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_UPCASE$ANSISTRING$$ANSISTRING
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		cmp	word [bp-2],0
		jne	..@j13180
		jmp	..@j13181
..@j13180:
		jmp	..@j13183
	ALIGN 2
..@j13182:
		lea	ax,[bp-6]
		push	ax
		mov	bx,word [bp-2]
		push	word [bx]
		call	SYSUTILS_$$_STRPAS$PCHAR$$ANSISTRING
		mov	ax,61
		push	ax
		push	word [bp-6]
		call	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-10],cx
		mov	word [bp-8],ax
		lea	ax,[bp-26]
		push	ax
		lea	ax,[bp-28]
		push	ax
		push	word [bp-6]
		mov	ax,1
		push	ax
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		sub	ax,1
		sbb	dx,0
		push	ax
		call	fpc_ansistr_copy
		push	word [bp-28]
		call	SYSTEM_$$_UPCASE$ANSISTRING$$ANSISTRING
		push	word [bp-26]
		push	word [bp-4]
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j13196
		cmp	cx,0
		jne	..@j13196
		jmp	..@j13195
..@j13195:
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-28]
		push	ax
		push	word [bp-6]
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		add	ax,1
		adc	dx,0
		push	ax
		mov	bx,word [bp-6]
		test	bx,bx
		je	..@j13225
		mov	bx,word [bx-2]
..@j13225:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp-10]
		mov	bx,word [bp-8]
		sub	cx,dx
		sbb	ax,bx
		push	cx
		call	fpc_ansistr_copy
		push	word [bp-28]
		call	fpc_ansistr_assign
		jmp	..@j13168
..@j13196:
		add	word [bp-2],2
..@j13183:
		mov	bx,word [bp-2]
		cmp	word [bx],0
		jne	..@j13182
		jmp	..@j13184
..@j13184:
..@j13181:
..@j13168:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-28]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-26]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp+4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j13169
		call	FPC_RERAISE
..@j13169:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_compare_equal
EXTERN	fpc_ansistr_copy
EXTERN	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
EXTERN	SYSUTILS_$$_STRPAS$PCHAR$$ANSISTRING
EXTERN	fpc_ansistr_assign
EXTERN	SYSTEM_$$_UPCASE$ANSISTRING$$ANSISTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_ansistr_incr_ref
