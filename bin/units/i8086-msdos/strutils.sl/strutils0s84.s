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
	GLOBAL STRUTILS_$$_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
STRUTILS_$$_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,40
		mov	word [bp-8],0
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	byte [bp-2],0
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j2394
		mov	bx,word [bx-2]
..@j2394:
		cmp	bx,0
		jg	..@j2392
		jmp	..@j2393
..@j2392:
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-8]
		push	ax
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UPCASE$CHAR$$CHAR
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-8]
		call	fpc_ansistr_assign
		mov	word [bp-4],2
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j2411
		mov	bx,word [bx-2]
..@j2411:
		mov	word [bp-6],bx
		jmp	..@j2413
	ALIGN 2
..@j2412:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		mov	bl,byte [bx+si-1]
		mov	bh,0
		mov	al,byte [TC_$STRUTILS_$$_SSCORE+bx-1]
		mov	byte [bp-1],al
		mov	ax,word _$STRUTILS$_Ld4
		push	ax
		lea	ax,[bp-40]
		push	ax
		mov	al,byte [bp-2]
		mov	ah,0
		push	ax
		mov	ax,32
		push	ax
		call	fpc_varset_set
		mov	al,byte [bp-1]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		mov	ax,1
		shl	ax,cl
		test	word [bp+si-40],ax
		je	..@j2417
		jmp	..@j2418
..@j2417:
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx]
		lea	ax,[bp-8]
		push	ax
		mov	al,byte [bp-1]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-8]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
..@j2418:
		cmp	byte [bp-1],105
		jne	..@j2441
		jmp	..@j2442
..@j2441:
		mov	al,byte [bp-1]
		mov	byte [bp-2],al
..@j2442:
		inc	word [bp-4]
..@j2413:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jle	..@j2445
		jmp	..@j2414
..@j2445:
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j2446
		mov	bx,word [bx-2]
..@j2446:
		cmp	bx,word [bp+4]
		jl	..@j2412
		jmp	..@j2414
..@j2414:
..@j2393:
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j2449
		mov	bx,word [bx-2]
..@j2449:
		mov	word [bp-6],bx
		mov	ax,word [bp-6]
		cmp	ax,word [bp+4]
		jl	..@j2450
		jmp	..@j2451
..@j2450:
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx]
		lea	ax,[bp-8]
		push	ax
		mov	ax,48
		push	ax
		mov	ax,word [bp+4]
		mov	dx,word [bp-6]
		sub	ax,dx
		push	ax
		call	SYSTEM_$$_STRINGOFCHAR$CHAR$SMALLINT$$ANSISTRING
		push	word [bp-8]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
..@j2451:
		lea	ax,[bp-8]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_ansistr_decr_ref
EXTERN	SYSTEM_$$_STRINGOFCHAR$CHAR$SMALLINT$$ANSISTRING
EXTERN	fpc_ansistr_concat
EXTERN	fpc_varset_set
EXTERN	_$STRUTILS$_Ld4
EXTERN	TC_$STRUTILS_$$_SSCORE
EXTERN	fpc_char_to_ansistr
EXTERN	SYSTEM_$$_UPCASE$CHAR$$CHAR
EXTERN	fpc_ansistr_assign
