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
	GLOBAL OBJECTS$_$TSTRINGLIST_$__$$_LOAD$TSTREAM$$LONGBOOL
OBJECTS$_$TSTRINGLIST_$__$$_LOAD$TSTREAM$$LONGBOOL:
		push	bp
		mov	bp,sp
		sub	sp,30
		push	word [bp+8]
		lea	ax,[bp+6]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_help_constructor
		mov	word [bp+8],ax
		cmp	word [bp+8],0
		je	..@j2933
		jmp	..@j2934
..@j2933:
		jmp	..@j2923
..@j2934:
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
		jne	..@j2937
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		mov	word [bx+2],ax
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-2]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+8]
		call	ax
		mov	bx,word [bp+8]
		mov	word [bx+4],ax
		mov	word [bx+6],dx
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		mov	dx,0
		mov	cx,word [bx+4]
		mov	bx,word [bx+6]
		add	ax,cx
		adc	dx,bx
		push	dx
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+20]
		call	ax
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+8]
		lea	ax,[bx+8]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
		mov	bx,word [bp+8]
		lea	ax,[bx+12]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+8]
		mov	dx,word [bx+10]
		mov	cx,3
..@j2967:
		shl	ax,1
		rcl	dx,1
		loop	..@j2967
		push	ax
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+12]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+8]
		mov	dx,word [bx+10]
		mov	cx,3
..@j2974:
		shl	ax,1
		rcl	dx,1
		loop	..@j2974
		push	dx
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j2937:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j2939
		mov	ax,1
		push	ax
		lea	ax,[bp-28]
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j2975
		cmp	word [bp+6],0
		jne	..@j2976
		jmp	..@j2977
..@j2976:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+6]
		call	ax
..@j2977:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j2975:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j2982
		call	FPC_RAISE_NESTED
..@j2982:
		call	FPC_DONEEXCEPTION
		jmp	..@j2939
..@j2939:
..@j2923:
		mov	ax,word [bp+8]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_help_constructor
