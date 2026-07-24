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
	GLOBAL STRUTILS_$$_XORENCODE$ANSISTRING$ANSISTRING$$ANSISTRING
STRUTILS_$$_XORENCODE$ANSISTRING$ANSISTRING$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	word [bp-10],0
		mov	word [bp-8],0
		mov	word [bp-6],0
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j4103
		mov	bx,word [bx-2]
..@j4103:
		mov	word [bp-14],bx
		mov	word [bp-2],1
		mov	ax,word [bp-14]
		cmp	ax,word [bp-2]
		jl	..@j4105
		dec	word [bp-2]
	ALIGN 2
..@j4106:
		inc	word [bp-2]
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j4109
		mov	bx,word [bx-2]
..@j4109:
		cmp	bx,0
		jg	..@j4107
		jmp	..@j4108
..@j4107:
		mov	ax,word [bp+6]
		mov	word [bp-12],ax
		mov	ax,word [bp-2]
		dec	ax
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j4112
		mov	bx,word [bx-2]
..@j4112:
		cwd
		idiv	bx
		mov	si,dx
		inc	si
		mov	ax,word [bp+4]
		mov	word [bp-16],ax
		mov	di,word [bp-2]
		mov	bx,word [bp-12]
		mov	al,byte [bx+si-1]
		mov	bx,word [bp-16]
		mov	dl,byte [bx+di-1]
		xor	dl,al
		mov	byte [bp-3],dl
		jmp	..@j4113
..@j4108:
		mov	bx,word [bp+4]
		mov	si,word [bp-2]
		mov	al,byte [bx+si-1]
		mov	byte [bp-3],al
..@j4113:
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx]
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-8]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-8]
		push	ax
		lea	ax,[bp-10]
		push	ax
		mov	ax,0
		mov	dl,byte [bp-3]
		mov	dh,0
		push	ax
		push	dx
		mov	ax,2
		push	ax
		call	SYSUTILS_$$_INTTOHEX$LONGINT$SMALLINT$$ANSISTRING
		push	word [bp-10]
		call	fpc_ansistr_assign
		lea	ax,[bp-6]
		push	ax
		push	word [bp-8]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+16]
		call	ax
		push	word [bp-6]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		mov	ax,word [bp-14]
		cmp	ax,word [bp-2]
		jg	..@j4106
..@j4105:
		lea	ax,[bp-10]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-8]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_ansistr_concat
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	SYSUTILS_$$_INTTOHEX$LONGINT$SMALLINT$$ANSISTRING
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_ansistr_assign
