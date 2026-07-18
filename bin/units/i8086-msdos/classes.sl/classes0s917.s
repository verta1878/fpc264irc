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
	GLOBAL CLASSES$_$TWRITER_$__$$_WRITEPROPERTIES$TPERSISTENT
CLASSES$_$TWRITER_$__$$_WRITEPROPERTIES$TPERSISTENT:
		push	bp
		mov	bp,sp
		sub	sp,22
		push	word [bp+4]
		lea	ax,[bp-6]
		push	ax
		call	TYPINFO_$$_GETPROPLIST$TOBJECT$PPROPLIST$$SMALLINT
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jg	..@j22396
		jmp	..@j22397
..@j22396:
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
		jne	..@j22398
		mov	ax,word [bp-2]
		dec	ax
		mov	word [bp-22],ax
		mov	word [bp-4],0
		mov	ax,word [bp-22]
		cmp	ax,word [bp-4]
		jl	..@j22404
		dec	word [bp-4]
	ALIGN 2
..@j22405:
		inc	word [bp-4]
		push	word [bp+4]
		mov	bx,word [bp-6]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		call	TYPINFO_$$_ISSTOREDPROP$TOBJECT$PPROPINFO$$BOOLEAN
		test	al,al
		jne	..@j22406
		jmp	..@j22407
..@j22406:
		push	word [bp+6]
		push	word [bp+4]
		mov	bx,word [bp-6]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		call	CLASSES$_$TWRITER_$__$$_WRITEPROPERTY$TPERSISTENT$POINTER
..@j22407:
		mov	ax,word [bp-22]
		cmp	ax,word [bp-4]
		jg	..@j22405
..@j22404:
..@j22398:
		call	FPC_POPADDRSTACK
		push	word [bp-6]
		call	SYSTEM_$$_FREEMEM$POINTER$$WORD
		pop	ax
		test	ax,ax
		je	..@j22399
		call	FPC_RERAISE
..@j22399:
..@j22397:
		push	word [bp+4]
		push	word [bp+6]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	SYSTEM_$$_FREEMEM$POINTER$$WORD
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TWRITER_$__$$_WRITEPROPERTY$TPERSISTENT$POINTER
EXTERN	TYPINFO_$$_ISSTOREDPROP$TOBJECT$PPROPINFO$$BOOLEAN
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	TYPINFO_$$_GETPROPLIST$TOBJECT$PPROPLIST$$SMALLINT
