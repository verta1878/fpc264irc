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
	GLOBAL OBJECTS$_$TBUFSTREAM_$__$$_INIT$SHORTSTRING$WORD$WORD$$LONGBOOL
OBJECTS$_$TBUFSTREAM_$__$$_INIT$SHORTSTRING$WORD$WORD$$LONGBOOL:
		push	bp
		mov	bp,sp
		sub	sp,284
		mov	dx,word [bp+8]
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		push	dx
		call	fpc_shortstr_to_shortstr
		push	word [bp+12]
		lea	ax,[bp+10]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_help_constructor
		mov	word [bp+12],ax
		cmp	word [bp+12],0
		je	..@j942
		jmp	..@j943
..@j942:
		jmp	..@j932
..@j943:
		mov	ax,1
		push	ax
		lea	ax,[bp-268]
		push	ax
		lea	ax,[bp-262]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j946
		mov	ax,word [bp+12]
		push	ax
		mov	ax,0
		push	ax
		lea	ax,[bp-256]
		push	ax
		push	word [bp+6]
		call	OBJECTS$_$TDOSSTREAM_$__$$_INIT$SHORTSTRING$WORD$$LONGBOOL
		mov	bx,word [bp+12]
		mov	ax,word [bp+4]
		mov	dx,0
		mov	word [bx+842],ax
		mov	word [bx+844],dx
		cmp	word [bp+4],0
		jne	..@j960
		jmp	..@j961
..@j960:
		mov	bx,word [bp+12]
		lea	ax,[bx+854]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_GETMEM$POINTER$WORD
..@j961:
		mov	bx,word [bp+12]
		cmp	word [bx+854],0
		je	..@j966
		jmp	..@j967
..@j966:
		mov	ax,word [bp+12]
		push	ax
		mov	ax,-2
		push	ax
		mov	ax,0
		push	ax
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
..@j967:
..@j946:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j948
		mov	ax,1
		push	ax
		lea	ax,[bp-282]
		push	ax
		lea	ax,[bp-276]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j974
		cmp	word [bp+10],0
		jne	..@j975
		jmp	..@j976
..@j975:
		mov	ax,word [bp+12]
		push	ax
		push	word [bp+10]
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+6]
		call	ax
..@j976:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j974:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j981
		call	FPC_RAISE_NESTED
..@j981:
		call	FPC_DONEEXCEPTION
		jmp	..@j948
..@j948:
..@j932:
		mov	ax,word [bp+12]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
EXTERN	OBJECTS$_$TDOSSTREAM_$__$$_INIT$SHORTSTRING$WORD$$LONGBOOL
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_help_constructor
EXTERN	fpc_shortstr_to_shortstr
