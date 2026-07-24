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
	GLOBAL TYPINFO_$$_GETNEXTELEMENT$ANSISTRING$$ANSISTRING
TYPINFO_$$_GETNEXTELEMENT$ANSISTRING$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,18
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
		jne	..@j205
		mov	word [bp-2],1
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j215
		mov	bx,word [bx-2]
..@j215:
		cmp	bx,0
		jg	..@j213
		jmp	..@j214
..@j213:
		jmp	..@j217
	ALIGN 2
..@j216:
		inc	word [bp-2]
..@j217:
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j220
		mov	bx,word [bx-2]
..@j220:
		cmp	bx,word [bp-2]
		jge	..@j219
		jmp	..@j218
..@j219:
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	si,word [bp-2]
		mov	al,byte [bx+si-1]
		mov	ah,0
		cmp	ax,32
		je	..@j221
		cmp	ax,44
		je	..@j221
		cmp	ax,91
		je	..@j221
		cmp	ax,93
		je	..@j221
..@j221:
		jne	..@j216
		jmp	..@j218
..@j218:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,1
		push	ax
		mov	ax,word [bp-2]
		dec	ax
		push	ax
		call	fpc_ansistr_copy
		push	word [bp-18]
		call	fpc_ansistr_assign
		mov	ax,word [bp+4]
		push	ax
		mov	ax,1
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
..@j214:
..@j205:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j206
		call	FPC_RERAISE
..@j206:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
EXTERN	fpc_ansistr_copy
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
