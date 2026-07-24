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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_ADDOBJECT$ANSISTRING$array_of_const$TOBJECT$$SMALLINT
CLASSES$_$TSTRINGS_$__$$_ADDOBJECT$ANSISTRING$array_of_const$TOBJECT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	bx,word [bp+8]
		mov	di,word [bp+6]
		inc	di
		mov	ax,6
		mul	di
		mov	di,ax
		mov	cx,di
		sub	sp,di
		and	sp,-2
		mov	di,sp
		push	ss
		pop	es
		mov	si,bx
		shr	cx,1
		cld
		rep
		movsw
		mov	ax,sp
		mov	word [bp+8],ax
		mov	word [bp-18],0
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
		jne	..@j8211
		push	word [bp+12]
		lea	ax,[bp-18]
		push	ax
		push	word [bp+10]
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		call	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
		push	word [bp-18]
		push	word [bp+4]
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+84]
		call	ax
		mov	word [bp-2],ax
..@j8211:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j8212
		call	FPC_RERAISE
..@j8212:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
