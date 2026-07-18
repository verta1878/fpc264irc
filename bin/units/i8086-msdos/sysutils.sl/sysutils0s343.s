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
	GLOBAL SYSUTILS_$$_TRYSTRTODATETIME$ANSISTRING$TDATETIME$TFORMATSETTINGS$$BOOLEAN
SYSUTILS_$$_TRYSTRTODATETIME$ANSISTRING$TDATETIME$TFORMATSETTINGS$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,36
		mov	word [bp-36],0
		mov	ax,1
		push	ax
		lea	ax,[bp-32]
		push	ax
		lea	ax,[bp-26]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j12203
		mov	byte [bp-1],0
		mov	bx,word [bp+4]
		mov	al,byte [bx+6]
		mov	ah,0
		push	ax
		push	word [bp+8]
		call	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		jg	..@j12213
		jmp	..@j12214
..@j12213:
		jmp	..@j12216
	ALIGN 2
..@j12215:
		dec	word [bp-4]
..@j12216:
		cmp	word [bp-4],0
		jg	..@j12218
		jmp	..@j12217
..@j12218:
		mov	bx,word [bp+8]
		mov	si,word [bp-4]
		cmp	byte [bx+si-1],32
		jne	..@j12215
		jmp	..@j12217
..@j12217:
		cmp	word [bp-4],0
		jg	..@j12219
		jmp	..@j12220
..@j12219:
		lea	ax,[bp-36]
		push	ax
		push	word [bp+8]
		mov	ax,1
		push	ax
		mov	ax,word [bp-4]
		dec	ax
		push	ax
		call	fpc_ansistr_copy
		push	word [bp-36]
		lea	ax,[bp-12]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_TRYSTRTODATE$ANSISTRING$TDATETIME$TFORMATSETTINGS$$BOOLEAN
		test	al,al
		je	..@j12221
		jmp	..@j12222
..@j12221:
		jmp	..@j12203
..@j12222:
		lea	ax,[bp-36]
		push	ax
		push	word [bp+8]
		mov	ax,word [bp-4]
		inc	ax
		push	ax
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j12249
		mov	bx,word [bx-2]
..@j12249:
		mov	ax,word [bp-4]
		sub	bx,ax
		push	bx
		call	fpc_ansistr_copy
		push	word [bp-36]
		lea	ax,[bp-20]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_TRYSTRTOTIME$ANSISTRING$TDATETIME$TFORMATSETTINGS$$BOOLEAN
		test	al,al
		je	..@j12237
		jmp	..@j12238
..@j12237:
		jmp	..@j12203
..@j12238:
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp-12]
		cld
		mov	cx,4
		rep
		movsw
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp-20]
		cld
		mov	cx,4
		rep
		movsw
		call	SYSUTILS_$$_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
		mov	bx,word [bp+6]
		wait fstp	qword [bx]
		DB	09bh
		mov	byte [bp-1],1
		jmp	..@j12262
..@j12220:
		push	word [bp+8]
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_TRYSTRTOTIME$ANSISTRING$TDATETIME$TFORMATSETTINGS$$BOOLEAN
		mov	byte [bp-1],al
..@j12262:
		jmp	..@j12271
..@j12214:
		push	word [bp+8]
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_TRYSTRTODATE$ANSISTRING$TDATETIME$TFORMATSETTINGS$$BOOLEAN
		mov	byte [bp-1],al
..@j12271:
..@j12203:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-36]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j12204
		call	FPC_RERAISE
..@j12204:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS_$$_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
EXTERN	SYSUTILS_$$_TRYSTRTOTIME$ANSISTRING$TDATETIME$TFORMATSETTINGS$$BOOLEAN
EXTERN	SYSUTILS_$$_TRYSTRTODATE$ANSISTRING$TDATETIME$TFORMATSETTINGS$$BOOLEAN
EXTERN	fpc_ansistr_copy
EXTERN	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
