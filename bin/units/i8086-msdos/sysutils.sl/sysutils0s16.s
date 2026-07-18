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
	GLOBAL SYSUTILS_$$_CHANGEFILEEXT$RAWBYTESTRING$RAWBYTESTRING$$RAWBYTESTRING
SYSUTILS_$$_CHANGEFILEEXT$RAWBYTESTRING$RAWBYTESTRING$$RAWBYTESTRING:
		push	bp
		mov	bp,sp
		sub	sp,118
		mov	word [bp-118],0
		mov	ax,1
		push	ax
		lea	ax,[bp-50]
		push	ax
		lea	ax,[bp-44]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j243
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j247
		mov	bx,word [bx-2]
..@j247:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		mov	ax,word TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS
		push	ax
		mov	ax,word TC_$SYSTEM_$$_ALLOWDRIVESEPARATORS
		push	ax
		lea	ax,[bp-116]
		push	ax
		mov	ax,32
		push	ax
		call	fpc_varset_add_sets
		lea	ax,[bp-116]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld614
		push	ax
		lea	ax,[bp-84]
		push	ax
		mov	ax,32
		push	ax
		call	fpc_varset_add_sets
		lea	di,[bp-36]
		push	ss
		pop	es
		lea	si,[bp-84]
		cld
		mov	cx,16
		rep
		movsw
		jmp	..@j267
	ALIGN 2
..@j266:
		sub	word [bp-4],1
		sbb	word [bp-2],0
..@j267:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jg	..@j269
		jl	..@j268
		cmp	ax,0
		ja	..@j269
		jmp	..@j268
..@j269:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		mov	al,byte [bx+si-1]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		mov	ax,1
		shl	ax,cl
		test	word [bp+si-36],ax
		je	..@j266
		jmp	..@j268
..@j268:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jne	..@j272
		cmp	ax,0
		jne	..@j272
		jmp	..@j270
..@j272:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		cmp	byte [bx+si-1],46
		jne	..@j270
		jmp	..@j271
..@j270:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j275
		mov	bx,word [bx-2]
..@j275:
		mov	ax,bx
		inc	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		jmp	..@j276
..@j271:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jne	..@j279
		cmp	ax,1
		jne	..@j279
		jmp	..@j277
..@j279:
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		sub	ax,1
		sbb	dx,0
		mov	si,ax
		mov	al,byte [bx+si-1]
		mov	ah,0
		mov	bx,ax
		mov	cl,4
		shr	bx,cl
		shl	bx,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j280
		test	al,0
		jmp	..@j281
..@j280:
		mov	ax,1
		shl	ax,cl
		test	word [TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS+bx],ax
..@j281:
		jne	..@j277
		jmp	..@j278
..@j277:
		mov	byte [bp-37],1
		jmp	..@j282
..@j278:
		mov	byte [bp-37],0
..@j282:
		cmp	byte [bp-37],0
		jne	..@j285
		jmp	..@j284
..@j285:
		cmp	byte [TC_$SYSTEM_$$_FIRSTDOTATFILENAMESTARTISEXTENSION],0
		je	..@j283
		jmp	..@j284
..@j283:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j288
		mov	bx,word [bx-2]
..@j288:
		mov	ax,bx
		inc	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
..@j284:
..@j276:
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-118]
		push	ax
		push	word [bp+6]
		mov	ax,1
		push	ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		sub	ax,1
		sbb	dx,0
		push	ax
		call	fpc_ansistr_copy
		push	word [bp-118]
		push	word [bp+4]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
..@j243:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-118]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j244
		call	FPC_RERAISE
..@j244:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_concat
EXTERN	fpc_ansistr_copy
EXTERN	TC_$SYSTEM_$$_FIRSTDOTATFILENAMESTARTISEXTENSION
EXTERN	_$SYSUTILS$_Ld614
EXTERN	fpc_varset_add_sets
EXTERN	TC_$SYSTEM_$$_ALLOWDRIVESEPARATORS
EXTERN	TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
