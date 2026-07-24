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
	GLOBAL TYPINFO_$$_STRINGTOSET$PTYPEINFO$ANSISTRING$$SMALLINT
TYPINFO_$$_STRINGTOSET$PTYPEINFO$ANSISTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,30
		mov	word [bp-4],0
		mov	word [bp-6],0
		mov	ax,1
		push	ax
		lea	ax,[bp-22]
		push	ax
		lea	ax,[bp-16]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j250
		mov	word [bp-2],0
		push	word [bp+6]
		call	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
		mov	bx,ax
		mov	ax,word [bx+1]
		mov	word [bp-10],ax
		lea	ax,[bp-4]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
		mov	word [bp-8],1
		mov	bx,word [bp-4]
		test	bx,bx
		je	..@j266
		mov	bx,word [bx-2]
..@j266:
		cmp	bx,0
		jg	..@j264
		jmp	..@j265
..@j264:
		jmp	..@j268
	ALIGN 2
..@j267:
		inc	word [bp-8]
..@j268:
		mov	bx,word [bp-4]
		test	bx,bx
		je	..@j271
		mov	bx,word [bx-2]
..@j271:
		cmp	bx,word [bp-8]
		jge	..@j270
		jmp	..@j269
..@j270:
		mov	bx,word [bp-4]
		mov	si,word [bp-8]
		mov	al,byte [bx+si-1]
		mov	ah,0
		cmp	ax,32
		je	..@j272
		cmp	ax,44
		je	..@j272
		cmp	ax,91
		je	..@j272
		cmp	ax,93
		je	..@j272
..@j272:
		je	..@j267
		jmp	..@j269
..@j269:
		lea	ax,[bp-4]
		push	ax
		mov	ax,1
		push	ax
		mov	ax,word [bp-8]
		dec	ax
		push	ax
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
..@j265:
		jmp	..@j280
	ALIGN 2
..@j279:
		lea	ax,[bp-6]
		push	ax
		lea	ax,[bp-4]
		push	ax
		call	TYPINFO_$$_GETNEXTELEMENT$ANSISTRING$$ANSISTRING
		cmp	word [bp-6],0
		jne	..@j286
		jmp	..@j287
..@j286:
		push	word [bp-10]
		push	word [bp-6]
		call	TYPINFO_$$_GETENUMVALUE$PTYPEINFO$ANSISTRING$$SMALLINT
		mov	word [bp-8],ax
		cmp	word [bp-8],0
		jl	..@j294
		jmp	..@j295
..@j294:
..@j296:
		mov	ax,word VMT_$TYPINFO_$$_EPROPERTYERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SERRUNKNOWNENUMVALUE+2]
		mov	dx,word [bp-6]
		mov	ax,0
		mov	word [bp-28],dx
		mov	word [bp-26],ax
		mov	word [bp-30],11
		lea	ax,[bp-30]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j296
		push	ax
		push	bp
		call	fpc_raiseexception
..@j295:
		mov	ax,1
		mov	cx,word [bp-8]
		shl	ax,cl
		mov	dx,word [bp-2]
		or	dx,ax
		mov	word [bp-2],dx
..@j287:
..@j280:
		cmp	word [bp-4],0
		jne	..@j279
		jmp	..@j281
..@j281:
..@j250:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j251
		call	FPC_RERAISE
..@j251:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SERRUNKNOWNENUMVALUE
EXTERN	VMT_$TYPINFO_$$_EPROPERTYERROR
EXTERN	TYPINFO_$$_GETENUMVALUE$PTYPEINFO$ANSISTRING$$SMALLINT
EXTERN	TYPINFO_$$_GETNEXTELEMENT$ANSISTRING$$ANSISTRING
EXTERN	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
EXTERN	fpc_ansistr_assign
EXTERN	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
