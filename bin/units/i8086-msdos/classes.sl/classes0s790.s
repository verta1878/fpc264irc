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
	GLOBAL CLASSES$_$TBINARYOBJECTREADER_$__$$_READSET$POINTER$$SMALLINT
CLASSES$_$TBINARYOBJECTREADER_$__$$_READSET$POINTER$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,48
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
		jne	..@j17936
		mov	ax,1
		push	ax
		lea	ax,[bp-32]
		push	ax
		lea	ax,[bp-26]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j17940
		mov	word [bp-2],0
		jmp	..@j17947
	ALIGN 2
..@j17946:
		push	word [bp+6]
		lea	ax,[bp-4]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+86]
		call	ax
		mov	bx,word [bp-4]
		test	bx,bx
		je	..@j17955
		mov	bx,word [bx-2]
..@j17955:
		test	bx,bx
		je	..@j17953
		jmp	..@j17954
..@j17953:
		jmp	..@j17948
..@j17954:
		push	word [bp+4]
		push	word [bp-4]
		call	TYPINFO_$$_GETENUMVALUE$PTYPEINFO$ANSISTRING$$SMALLINT
		mov	word [bp-6],ax
		cmp	word [bp-6],-1
		je	..@j17962
		jmp	..@j17963
..@j17962:
..@j17964:
		mov	ax,word VMT_$CLASSES_$$_EREADERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SINVALIDPROPERTYVALUE+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j17964
		push	ax
		push	bp
		call	fpc_raiseexception
..@j17963:
		mov	ax,0
		mov	al,byte [bp-6]
		mov	ah,0
		mov	si,ax
		mov	cl,3
		shr	si,cl
		mov	cx,ax
		and	cx,7
		mov	al,byte [bp+si-2]
		mov	ah,0
		mov	dx,1
		shl	dx,cl
		or	ax,dx
		mov	byte [bp+si-2],al
..@j17947:
		jmp	..@j17946
..@j17948:
..@j17940:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j17942
		mov	ax,1
		push	ax
		lea	ax,[bp-46]
		push	ax
		lea	ax,[bp-40]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j17977
		push	word [bp+6]
		call	CLASSES$_$TBINARYOBJECTREADER_$__$$_SKIPSETBODY
		call	fpc_popaddrstack
		call	fpc_reraise
..@j17977:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j17980
		call	FPC_RAISE_NESTED
..@j17980:
		call	FPC_DONEEXCEPTION
		jmp	..@j17942
..@j17942:
..@j17936:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j17937
		call	FPC_RERAISE
..@j17937:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	CLASSES$_$TBINARYOBJECTREADER_$__$$_SKIPSETBODY
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SINVALIDPROPERTYVALUE
EXTERN	VMT_$CLASSES_$$_EREADERROR
EXTERN	TYPINFO_$$_GETENUMVALUE$PTYPEINFO$ANSISTRING$$SMALLINT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
