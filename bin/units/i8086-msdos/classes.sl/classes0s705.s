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
	GLOBAL CLASSES_$$_REGISTERINITCOMPONENTHANDLER$TCOMPONENTCLASS$TINITCOMPONENTHANDLER
CLASSES_$$_REGISTERINITCOMPONENTHANDLER$TCOMPONENTCLASS$TINITCOMPONENTHANDLER:
		push	bp
		mov	bp,sp
		sub	sp,32
		cmp	word [U_$CLASSES_$$_INITHANDLERLIST],0
		je	..@j14855
		jmp	..@j14856
..@j14855:
		mov	ax,word VMT_$CLASSES_$$_TLIST
		push	ax
		mov	ax,1
		push	ax
		call	CLASSES$_$TLIST_$__$$_CREATE$$TLIST
		mov	word [U_$CLASSES_$$_INITHANDLERLIST],ax
..@j14856:
		mov	ax,word VMT_$CLASSES_$$_TINITHANDLER
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	word [bp-4],ax
		mov	bx,word [bp-4]
		mov	ax,word [bp+6]
		mov	word [bx+4],ax
		mov	bx,word [bp-4]
		mov	ax,word [bp+4]
		mov	word [bx+2],ax
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
		jne	..@j14875
		mov	word [bp-2],0
		jmp	..@j14882
	ALIGN 2
..@j14881:
		inc	word [bp-2]
..@j14882:
		push	word [U_$CLASSES_$$_INITHANDLERLIST]
		call	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
		cmp	ax,word [bp-2]
		jg	..@j14884
		jmp	..@j14883
..@j14884:
		mov	bx,word [bp-4]
		push	word [bx+4]
		push	word [U_$CLASSES_$$_INITHANDLERLIST]
		push	word [bp-2]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		mov	bx,ax
		push	word [bx+4]
		call	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
		test	al,al
		je	..@j14881
		jmp	..@j14883
..@j14883:
		push	word [U_$CLASSES_$$_INITHANDLERLIST]
		call	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
		cmp	ax,word [bp-2]
		jg	..@j14897
		jmp	..@j14896
..@j14897:
		push	word [U_$CLASSES_$$_INITHANDLERLIST]
		push	word [bp-2]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		mov	bx,ax
		mov	si,word [bp-4]
		mov	ax,word [bx+4]
		cmp	ax,word [si+4]
		je	..@j14895
		jmp	..@j14896
..@j14895:
		push	word [U_$CLASSES_$$_INITHANDLERLIST]
		push	word [bp-2]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		mov	bx,ax
		mov	ax,word [bp+4]
		mov	word [bx+2],ax
		push	word [bp-4]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		jmp	..@j14912
..@j14896:
		push	word [U_$CLASSES_$$_INITHANDLERLIST]
		push	word [bp-2]
		push	word [bp-4]
		call	CLASSES$_$TLIST_$__$$_INSERT$SMALLINT$POINTER
..@j14912:
..@j14875:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j14877
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
		jne	..@j14919
		push	word [bp-4]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		call	fpc_popaddrstack
		call	fpc_reraise
..@j14919:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j14922
		call	FPC_RAISE_NESTED
..@j14922:
		call	FPC_DONEEXCEPTION
		jmp	..@j14877
..@j14877:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TLIST_$__$$_INSERT$SMALLINT$POINTER
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
EXTERN	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
EXTERN	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	VMT_$CLASSES_$$_TINITHANDLER
EXTERN	CLASSES$_$TLIST_$__$$_CREATE$$TLIST
EXTERN	VMT_$CLASSES_$$_TLIST
EXTERN	U_$CLASSES_$$_INITHANDLERLIST
