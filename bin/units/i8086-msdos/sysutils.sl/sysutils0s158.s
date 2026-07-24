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
	GLOBAL SYSUTILS_$$_FORMATBUF$crc0DCC39D0
SYSUTILS_$$_FORMATBUF$crc0DCC39D0:
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
		jne	..@j5195
		lea	ax,[bp-8]
		push	ax
		push	word [bp+10]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	dx,word [bp+10]
		mov	ax,word [bp+12]
		cmp	ax,0
		ja	..@j5203
		jb	..@j5204
		cmp	dx,0
		ja	..@j5203
		jmp	..@j5204
..@j5203:
		mov	ax,word [bp+14]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	fpc_ansistr_unique
		push	ax
		push	word [bp+10]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j5204:
		lea	ax,[bp-6]
		push	ax
		push	word [bp-8]
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$TFORMATSETTINGS$$ANSISTRING
		mov	bx,word [bp-6]
		test	bx,bx
		je	..@j5225
		mov	bx,word [bx-2]
..@j5225:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,word [bp+18]
		jb	..@j5223
		ja	..@j5224
		cmp	cx,word [bp+16]
		jb	..@j5223
		jmp	..@j5224
		jmp	..@j5224
..@j5223:
		mov	bx,word [bp-6]
		test	bx,bx
		je	..@j5228
		mov	bx,word [bx-2]
..@j5228:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		jmp	..@j5229
..@j5224:
		mov	ax,word [bp+16]
		mov	word [bp-4],ax
		mov	ax,word [bp+18]
		mov	word [bp-2],ax
..@j5229:
		mov	ax,word [bp-6]
		push	ax
		mov	ax,word [bp+20]
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j5195:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-8]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j5196
		call	FPC_RERAISE
..@j5196:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	18
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$TFORMATSETTINGS$$ANSISTRING
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_ansistr_unique
EXTERN	fpc_ansistr_setlength
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
