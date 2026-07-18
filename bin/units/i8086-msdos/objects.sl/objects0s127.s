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
	GLOBAL OBJECTS$_$TSTRLISTMAKER_$__$$_INIT$LONGWORD$LONGWORD$$LONGBOOL
OBJECTS$_$TSTRLISTMAKER_$__$$_INIT$LONGWORD$LONGWORD$$LONGBOOL:
		push	bp
		mov	bp,sp
		sub	sp,28
		push	word [bp+14]
		lea	ax,[bp+12]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_help_constructor
		mov	word [bp+14],ax
		cmp	word [bp+14],0
		je	..@j3055
		jmp	..@j3056
..@j3055:
		jmp	..@j3045
..@j3056:
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
		jne	..@j3059
		mov	ax,word [bp+14]
		push	ax
		mov	ax,0
		push	ax
		call	OBJECTS$_$TOBJECT_$__$$_INIT$$LONGBOOL
		mov	bx,word [bp+14]
		mov	ax,word [bp+8]
		mov	word [bx+6],ax
		mov	ax,word [bp+10]
		mov	word [bx+8],ax
		mov	bx,word [bp+14]
		mov	ax,word [bp+4]
		mov	word [bx+16],ax
		mov	ax,word [bp+6]
		mov	word [bx+18],ax
		mov	bx,word [bp+14]
		lea	ax,[bx+10]
		push	ax
		push	word [bp+8]
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		mov	bx,word [bp+14]
		lea	ax,[bx+20]
		push	ax
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,3
..@j3079:
		shl	ax,1
		rcl	dx,1
		loop	..@j3079
		push	ax
		call	SYSTEM_$$_GETMEM$POINTER$WORD
..@j3059:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j3061
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
		jne	..@j3080
		cmp	word [bp+12],0
		jne	..@j3081
		jmp	..@j3082
..@j3081:
		mov	ax,word [bp+14]
		push	ax
		push	word [bp+12]
		mov	bx,word [bp+14]
		mov	bx,word [bx]
		mov	ax,word [bx+6]
		call	ax
..@j3082:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j3080:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j3087
		call	FPC_RAISE_NESTED
..@j3087:
		call	FPC_DONEEXCEPTION
		jmp	..@j3061
..@j3061:
..@j3045:
		mov	ax,word [bp+14]
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
EXTERN	OBJECTS$_$TOBJECT_$__$$_INIT$$LONGBOOL
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_help_constructor
