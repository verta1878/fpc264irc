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
	GLOBAL STRUTILS_$$_DEC2NUMB$LONGINT$BYTE$BYTE$$ANSISTRING
STRUTILS_$$_DEC2NUMB$LONGINT$BYTE$BYTE$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	word [bp-8],0
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		cmp	dx,0
		jne	..@j3382
		cmp	ax,0
		jne	..@j3382
		jmp	..@j3381
..@j3381:
		mov	ax,word [bp+12]
		push	ax
		mov	ax,word _$STRUTILS$_Ld6
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j3387
..@j3382:
		mov	ax,word [bp+8]
		mov	word [bp-6],ax
		mov	ax,word [bp+10]
		mov	word [bp-4],ax
		mov	ax,word [bp+12]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j3395
	ALIGN 2
..@j3394:
		mov	ax,0
		mov	dl,byte [bp+4]
		mov	dh,0
		push	ax
		push	dx
		push	word [bp-4]
		push	word [bp-6]
		call	fpc_mod_longint
		mov	word [bp-2],ax
		cmp	word [bp-2],9
		jg	..@j3403
		jmp	..@j3404
..@j3403:
		mov	ax,word [bp-2]
		add	ax,55
		mov	word [bp-2],ax
		jmp	..@j3407
..@j3404:
		mov	ax,word [bp-2]
		add	ax,48
		mov	word [bp-2],ax
..@j3407:
		mov	ax,word [bp+12]
		push	ax
		lea	ax,[bp-8]
		push	ax
		mov	al,byte [bp-2]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-8]
		mov	bx,word [bp+12]
		push	word [bx]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		mov	ax,0
		mov	dl,byte [bp+4]
		mov	dh,0
		push	ax
		push	dx
		push	word [bp-4]
		push	word [bp-6]
		call	fpc_div_longint
		mov	word [bp-6],ax
		mov	word [bp-4],dx
..@j3395:
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		cmp	dx,0
		jg	..@j3394
		jl	..@j3396
		cmp	ax,0
		ja	..@j3394
		jmp	..@j3396
..@j3396:
..@j3387:
		mov	bx,word [bp+12]
		cmp	word [bx],0
		jne	..@j3430
		jmp	..@j3431
..@j3430:
		mov	ax,word [bp+12]
		push	ax
		lea	ax,[bp-8]
		push	ax
		mov	ax,48
		push	ax
		mov	bx,word [bp+12]
		push	word [bx]
		mov	al,byte [bp+6]
		mov	ah,0
		push	ax
		call	STRUTILS_$$_ADDCHAR$CHAR$ANSISTRING$SMALLINT$$ANSISTRING
		push	word [bp-8]
		call	fpc_ansistr_assign
..@j3431:
		lea	ax,[bp-8]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	fpc_ansistr_decr_ref
EXTERN	STRUTILS_$$_ADDCHAR$CHAR$ANSISTRING$SMALLINT$$ANSISTRING
EXTERN	fpc_div_longint
EXTERN	fpc_ansistr_concat
EXTERN	fpc_char_to_ansistr
EXTERN	fpc_mod_longint
EXTERN	fpc_ansistr_assign
EXTERN	_$STRUTILS$_Ld6
