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
	GLOBAL FGL$_$TFPSMAP_$__$$_CREATE$SMALLINT$SMALLINT$$TFPSMAP
FGL$_$TFPSMAP_$__$$_CREATE$SMALLINT$SMALLINT$$TFPSMAP:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+8],1
		je	..@j1026
		jmp	..@j1027
..@j1026:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+10],ax
..@j1027:
		cmp	word [bp+10],0
		je	..@j1032
		jmp	..@j1033
..@j1032:
		jmp	..@j1024
..@j1033:
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
		jne	..@j1036
		push	word [bp+10]
		mov	ax,0
		push	ax
		mov	dx,word [bp+6]
		mov	ax,word [bp+4]
		add	ax,dx
		push	ax
		call	FGL$_$TFPSLIST_$__$$_CREATE$SMALLINT$$TFPSLIST
		mov	bx,word [bp+10]
		mov	ax,word [bp+6]
		mov	word [bx+10],ax
		mov	bx,word [bp+10]
		mov	ax,word [bp+4]
		mov	word [bx+12],ax
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+54]
		call	ax
		cmp	word [bp+10],0
		jne	..@j1055
		jmp	..@j1054
..@j1055:
		cmp	word [bp+8],0
		jne	..@j1053
		jmp	..@j1054
..@j1053:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j1054:
..@j1036:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j1038
		mov	ax,1
		push	ax
		lea	ax,[bp-26]
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j1058
		cmp	word [bp+8],0
		jne	..@j1059
		jmp	..@j1060
..@j1059:
		push	word [bp+10]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j1060:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j1058:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j1065
		call	FPC_RAISE_NESTED
..@j1065:
		call	FPC_DONEEXCEPTION
		jmp	..@j1038
..@j1038:
..@j1024:
		mov	ax,word [bp+10]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	FGL$_$TFPSLIST_$__$$_CREATE$SMALLINT$$TFPSLIST
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
