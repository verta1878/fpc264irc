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
	GLOBAL MD5_$$_MDPRINT$TMDDIGEST$$ANSISTRING
MD5_$$_MDPRINT$TMDDIGEST$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,276
		mov	word [bp-18],0
		mov	ax,1
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j2154
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	byte [bp-1],0
		dec	byte [bp-1]
	ALIGN 2
..@j2162:
		inc	byte [bp-1]
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx]
		lea	ax,[bp-18]
		push	ax
		lea	ax,[bp-274]
		push	ax
		mov	bx,word [bp+4]
		mov	al,byte [bp-1]
		mov	byte [bp-276],al
		mov	byte [bp-275],0
		mov	ax,0
		mov	si,word [bp-276]
		mov	dl,byte [bx+si]
		mov	dh,0
		push	ax
		push	dx
		mov	ax,2
		push	ax
		call	SYSTEM_$$_HEXSTR$LONGINT$BYTE$$SHORTSTRING
		lea	ax,[bp-274]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-18]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		cmp	byte [bp-1],15
		jb	..@j2162
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx]
		call	SYSUTILS_$$_LOWERCASE$ANSISTRING$$ANSISTRING
		push	word [bp-18]
		call	fpc_ansistr_assign
..@j2154:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j2155
		call	FPC_RERAISE
..@j2155:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS_$$_LOWERCASE$ANSISTRING$$ANSISTRING
EXTERN	fpc_ansistr_concat
EXTERN	fpc_shortstr_to_ansistr
EXTERN	SYSTEM_$$_HEXSTR$LONGINT$BYTE$$SHORTSTRING
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
