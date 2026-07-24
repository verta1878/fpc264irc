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
	GLOBAL SYSUTILS_$$_FILEAGE$RAWBYTESTRING$TDATETIME$BOOLEAN$$BOOLEAN
SYSUTILS_$$_FILEAGE$RAWBYTESTRING$TDATETIME$BOOLEAN$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,42
		lea	ax,[bp-26]
		push	ax
		mov	ax,word INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC
		push	ax
		call	fpc_initialize
		mov	ax,1
		push	ax
		lea	ax,[bp-40]
		push	ax
		lea	ax,[bp-34]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j2239
		mov	di,word [bp+8]
		test	di,di
		je	..@j2243
		mov	di,word [di-2]
..@j2243:
		mov	word [bp-28],1
		cmp	di,word [bp-28]
		jl	..@j2245
		dec	word [bp-28]
	ALIGN 2
..@j2246:
		inc	word [bp-28]
		mov	bx,word [bp+8]
		mov	si,word [bp-28]
		lea	bx,[bx+si-1]
		mov	al,byte [bx]
		mov	ah,0
		cmp	ax,42
		je	..@j2253
		cmp	ax,63
		je	..@j2253
..@j2253:
		mov	al,0
		jne	..@j2254
		inc	ax
..@j2254:
		test	al,al
		jne	..@j2247
		jmp	..@j2248
..@j2247:
		mov	byte [bp-1],0
		jmp	..@j2239
..@j2248:
		cmp	di,word [bp-28]
		jg	..@j2246
..@j2245:
		mov	word [bp-28],0
		cmp	byte [bp+4],0
		je	..@j2259
		jmp	..@j2260
..@j2259:
		mov	ax,word [bp-28]
		or	ax,1024
		mov	word [bp-28],ax
..@j2260:
		push	word [bp+8]
		mov	ax,word [bp-28]
		cwd
		push	dx
		push	ax
		lea	ax,[bp-26]
		push	ax
		mov	ax,word INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC
		push	ax
		call	fpc_finalize
		lea	ax,[bp-26]
		push	ax
		call	SYSUTILS_$$_FINDFIRST$RAWBYTESTRING$LONGINT$TRAWBYTESEARCHREC$$LONGINT
		cmp	dx,0
		jne	..@j2264
		cmp	ax,0
		jne	..@j2264
		jmp	..@j2263
..@j2263:
		mov	byte [bp-1],1
		jmp	..@j2271
..@j2264:
		mov	byte [bp-1],0
..@j2271:
		cmp	byte [bp-1],0
		jne	..@j2272
		jmp	..@j2273
..@j2272:
		push	word [bp-24]
		push	word [bp-26]
		call	SYSUTILS_$$_FILEDATETODATETIME$LONGINT$$TDATETIME
		mov	bx,word [bp+6]
		wait fstp	qword [bx]
		DB	09bh
		lea	ax,[bp-26]
		push	ax
		call	SYSUTILS_$$_FINDCLOSE$TRAWBYTESEARCHREC
..@j2273:
..@j2239:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-26]
		push	ax
		mov	ax,word INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC
		push	ax
		call	fpc_finalize
		pop	ax
		test	ax,ax
		je	..@j2240
		call	FPC_RERAISE
..@j2240:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS_$$_FINDCLOSE$TRAWBYTESEARCHREC
EXTERN	SYSUTILS_$$_FILEDATETODATETIME$LONGINT$$TDATETIME
EXTERN	SYSUTILS_$$_FINDFIRST$RAWBYTESTRING$LONGINT$TRAWBYTESEARCHREC$$LONGINT
EXTERN	fpc_finalize
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_initialize
EXTERN	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC
