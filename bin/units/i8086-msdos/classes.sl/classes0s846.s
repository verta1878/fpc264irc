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
	GLOBAL CLASSES$_$TREADER_$__$$_READUNICODESTRING$$UNICODESTRING
CLASSES$_$TREADER_$__$$_READUNICODESTRING$$UNICODESTRING:
		push	bp
		mov	bp,sp
		sub	sp,28
		mov	word [bp-2],0
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
		jne	..@j20772
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_NEXTVALUE$$TVALUETYPE
		cmp	ax,18
		stc
		je	..@j20778
		sub	ax,20
		cmp	ax,2
		jb	..@j20778
..@j20778:
		jc	..@j20774
		jmp	..@j20775
..@j20774:
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_READVALUE$$TVALUETYPE
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		cmp	word [bp-8],20
		je	..@j20783
		jmp	..@j20784
..@j20783:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+9]
		lea	ax,[bp-24]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,12
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+88]
		call	ax
		push	word [bp-24]
		call	SYSTEM_$$_UTF8DECODE$RAWBYTESTRING$$UNICODESTRING
		jmp	..@j20795
..@j20784:
		mov	bx,word [bp+6]
		push	word [bx+9]
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+90]
		call	ax
..@j20795:
		jmp	..@j20800
..@j20775:
		push	word [bp+6]
		lea	ax,[bp-2]
		push	ax
		call	CLASSES$_$TREADER_$__$$_READSTRING$$ANSISTRING
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp-2]
		test	bx,bx
		je	..@j20809
		mov	bx,word [bx-2]
..@j20809:
		push	bx
		call	fpc_unicodestr_setlength
		mov	bx,word [bp-2]
		test	bx,bx
		je	..@j20812
		mov	bx,word [bx-2]
..@j20812:
		mov	word [bp-28],bx
		mov	word [bp-4],1
		mov	ax,word [bp-28]
		cmp	ax,word [bp-4]
		jl	..@j20814
		dec	word [bp-4]
	ALIGN 2
..@j20815:
		inc	word [bp-4]
		mov	ax,word [bp+4]
		push	ax
		call	fpc_unicodestr_unique
		mov	word [bp-26],ax
		mov	ax,word [bp-4]
		mov	di,ax
		shl	di,1
		mov	bx,word [bp-2]
		mov	si,word [bp-4]
		mov	al,byte [bx+si-1]
		mov	ah,0
		mov	bx,word [bp-26]
		mov	word [bx+di-2],ax
		mov	ax,word [bp-28]
		cmp	ax,word [bp-4]
		jg	..@j20815
..@j20814:
..@j20800:
..@j20772:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-24]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j20773
		call	FPC_RERAISE
..@j20773:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_unicodestr_unique
EXTERN	fpc_unicodestr_setlength
EXTERN	CLASSES$_$TREADER_$__$$_READSTRING$$ANSISTRING
EXTERN	SYSTEM_$$_UTF8DECODE$RAWBYTESTRING$$UNICODESTRING
EXTERN	CLASSES$_$TREADER_$__$$_READVALUE$$TVALUETYPE
EXTERN	CLASSES$_$TREADER_$__$$_NEXTVALUE$$TVALUETYPE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
