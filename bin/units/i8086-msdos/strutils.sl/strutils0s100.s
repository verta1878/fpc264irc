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
	GLOBAL STRUTILS_$$_TAB2SPACE$ANSISTRING$BYTE$$ANSISTRING
STRUTILS_$$_TAB2SPACE$ANSISTRING$BYTE$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-4],0
		mov	word [bp-2],1
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		call	fpc_ansistr_assign
		jmp	..@j2862
	ALIGN 2
..@j2861:
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	si,word [bp-2]
		cmp	byte [bx+si-1],9
		jne	..@j2864
		jmp	..@j2865
..@j2864:
		inc	word [bp-2]
		jmp	..@j2866
..@j2865:
		mov	ax,word [bp+8]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	si,word [bp-2]
		mov	byte [bx+si-1],32
		cmp	byte [bp+4],1
		ja	..@j2871
		jmp	..@j2872
..@j2871:
		lea	ax,[bp-4]
		push	ax
		mov	ax,32
		push	ax
		mov	al,byte [bp+4]
		mov	ah,0
		dec	ax
		push	ax
		call	SYSTEM_$$_STRINGOFCHAR$CHAR$SMALLINT$$ANSISTRING
		push	word [bp-4]
		mov	ax,word [bp+8]
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_INSERT$RAWBYTESTRING$RAWBYTESTRING$SMALLINT
..@j2872:
		mov	al,byte [bp+4]
		mov	ah,0
		add	word [bp-2],ax
..@j2866:
..@j2862:
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j2885
		mov	bx,word [bx-2]
..@j2885:
		cmp	bx,word [bp-2]
		jge	..@j2861
		jmp	..@j2863
..@j2863:
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_ansistr_decr_ref
EXTERN	SYSTEM_$$_INSERT$RAWBYTESTRING$RAWBYTESTRING$SMALLINT
EXTERN	SYSTEM_$$_STRINGOFCHAR$CHAR$SMALLINT$$ANSISTRING
EXTERN	fpc_ansistr_unique
EXTERN	fpc_ansistr_assign
