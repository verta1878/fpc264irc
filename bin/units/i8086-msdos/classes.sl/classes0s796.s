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
	GLOBAL CLASSES$_$TBINARYOBJECTREADER_$__$$_SKIPCOMPONENT$BOOLEAN
CLASSES$_$TBINARYOBJECTREADER_$__$$_SKIPCOMPONENT$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	word [bp-6],0
		mov	word [bp-8],0
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
		jne	..@j18101
		cmp	byte [bp+4],0
		jne	..@j18103
		jmp	..@j18104
..@j18103:
		push	word [bp+6]
		lea	ax,[bp-1]
		push	ax
		lea	ax,[bp-4]
		push	ax
		lea	ax,[bp-6]
		push	ax
		lea	ax,[bp-8]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+56]
		call	ax
..@j18104:
		jmp	..@j18116
	ALIGN 2
..@j18115:
		push	word [bp+6]
		call	CLASSES$_$TBINARYOBJECTREADER_$__$$_SKIPPROPERTY
..@j18116:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+50]
		call	ax
		test	ax,ax
		jne	..@j18115
		jmp	..@j18117
..@j18117:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		jmp	..@j18125
	ALIGN 2
..@j18124:
		push	word [bp+6]
		mov	ax,1
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+94]
		call	ax
..@j18125:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+50]
		call	ax
		test	ax,ax
		jne	..@j18124
		jmp	..@j18126
..@j18126:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
..@j18101:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-8]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j18102
		call	FPC_RERAISE
..@j18102:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TBINARYOBJECTREADER_$__$$_SKIPPROPERTY
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
