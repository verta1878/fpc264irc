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
	GLOBAL STRUTILS_$$_XORDECODE$ANSISTRING$ANSISTRING$$ANSISTRING
STRUTILS_$$_XORDECODE$ANSISTRING$ANSISTRING$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	word [bp-8],0
		mov	word [bp-6],0
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j4146
		mov	bx,word [bx-2]
..@j4146:
		test	bx,bx
		jns	..@j4147
		inc	bx
..@j4147:
		sar	bx,1
		dec	bx
		mov	word [bp-10],bx
		mov	word [bp-2],0
		mov	ax,word [bp-10]
		cmp	ax,word [bp-2]
		jl	..@j4149
		dec	word [bp-2]
	ALIGN 2
..@j4150:
		inc	word [bp-2]
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-6]
		push	ax
		mov	ax,word _$STRUTILS$_Ld1
		push	ax
		lea	ax,[bp-8]
		push	ax
		push	word [bp+4]
		mov	ax,word [bp-2]
		shl	ax,1
		inc	ax
		push	ax
		mov	ax,2
		push	ax
		call	fpc_ansistr_copy
		push	word [bp-8]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		push	word [bp-6]
		mov	ax,0
		push	ax
		mov	ax,32
		push	ax
		call	SYSUTILS_$$_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT
		mov	byte [bp-3],al
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j4175
		mov	bx,word [bx-2]
..@j4175:
		cmp	bx,0
		jg	..@j4173
		jmp	..@j4174
..@j4173:
		mov	bx,word [bp+6]
		mov	si,word [bp+6]
		test	si,si
		je	..@j4178
		mov	si,word [si-2]
..@j4178:
		mov	ax,word [bp-2]
		cwd
		idiv	si
		mov	si,dx
		inc	si
		mov	dl,byte [bx+si-1]
		mov	al,byte [bp-3]
		xor	al,dl
		mov	byte [bp-3],al
..@j4174:
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx]
		lea	ax,[bp-8]
		push	ax
		mov	al,byte [bp-3]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-8]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		mov	ax,word [bp-10]
		cmp	ax,word [bp-2]
		jg	..@j4150
..@j4149:
		lea	ax,[bp-8]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_char_to_ansistr
EXTERN	SYSUTILS_$$_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT
EXTERN	fpc_ansistr_concat
EXTERN	fpc_ansistr_copy
EXTERN	_$STRUTILS$_Ld1
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_ansistr_assign
