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
	GLOBAL CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READPROPLIST$ANSISTRING
CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READPROPLIST$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,24
		push	word [bp+4]
		call	fpc_ansistr_incr_ref
		mov	word [bp-24],0
		mov	word [bp-16],0
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
		jne	..@j15729
		jmp	..@j15732
	ALIGN 2
..@j15731:
		mov	bx,word [bp+6]
		push	word [bx+10]
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+10]
		mov	bx,word [bx]
		mov	ax,word [bx+68]
		call	ax
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-16]
		push	ax
		mov	ax,word [bp+4]
		mov	word [bp-22],ax
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-24]
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READSSTR$$ANSISTRING
		mov	ax,word [bp-24]
		mov	word [bp-20],ax
		mov	ax,word _$CLASSES$_Ld46
		mov	word [bp-18],ax
		lea	ax,[bp-22]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		push	word [bp-16]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTR$ANSISTRING
		push	bp
		mov	bx,word [bp+6]
		push	word [bx+10]
		call	CLASSES$_$TSTREAM_$__$$_READBYTE$$BYTE
		mov	dx,0
		mov	ah,0
		push	dx
		push	ax
		push	word [bp+4]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_READPROPLIST$ANSISTRING_$$_PROCESSVALUE$crc18278EC0
..@j15732:
		mov	bx,word [bp+6]
		push	word [bx+10]
		call	CLASSES$_$TSTREAM_$__$$_READBYTE$$BYTE
		test	al,al
		jne	..@j15731
		jmp	..@j15733
..@j15733:
..@j15729:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-24]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp+4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j15730
		call	FPC_RERAISE
..@j15730:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_READPROPLIST$ANSISTRING_$$_PROCESSVALUE$crc18278EC0
EXTERN	CLASSES$_$TSTREAM_$__$$_READBYTE$$BYTE
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTR$ANSISTRING
EXTERN	fpc_ansistr_concat_multi
EXTERN	_$CLASSES$_Ld46
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READSSTR$$ANSISTRING
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_ansistr_incr_ref
