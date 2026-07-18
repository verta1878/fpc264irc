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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_INDEXOFNAME$ANSISTRING$$SMALLINT
CLASSES$_$TSTRINGS_$__$$_INDEXOFNAME$ANSISTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	word [bp-8],0
		mov	word [bp-24],0
		mov	ax,1
		push	ax
		lea	ax,[bp-20]
		push	ax
		lea	ax,[bp-14]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j8573
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_CHECKSPECIALCHARS
		mov	word [bp-2],0
		jmp	..@j8580
	ALIGN 2
..@j8579:
		push	word [bp+6]
		lea	ax,[bp-8]
		push	ax
		push	word [bp-2]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		mov	bx,word [bp+6]
		mov	al,byte [bx+9]
		mov	ah,0
		push	ax
		push	word [bp-8]
		call	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
		dec	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-6],cx
		mov	word [bp-4],ax
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		cmp	dx,0
		jg	..@j8596
		jl	..@j8595
		cmp	ax,0
		jae	..@j8596
		jmp	..@j8595
..@j8596:
		push	word [bp+6]
		push	word [bp+4]
		lea	ax,[bp-24]
		push	ax
		push	word [bp-8]
		mov	ax,1
		push	ax
		push	word [bp-6]
		call	fpc_ansistr_copy
		push	word [bp-24]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+80]
		call	ax
		test	ax,ax
		je	..@j8594
		jmp	..@j8595
..@j8594:
		jmp	..@j8573
..@j8595:
		inc	word [bp-2]
..@j8580:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		cmp	ax,word [bp-2]
		jg	..@j8579
		jmp	..@j8581
..@j8581:
		mov	word [bp-2],-1
..@j8573:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-24]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-8]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j8574
		call	FPC_RERAISE
..@j8574:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_copy
EXTERN	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
EXTERN	CLASSES$_$TSTRINGS_$__$$_CHECKSPECIALCHARS
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
