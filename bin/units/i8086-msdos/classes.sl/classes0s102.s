BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TRESOURCESTREAM_$__$$_INITIALIZE$WORD$PCHAR$PCHAR$BOOLEAN
CLASSES$_$TRESOURCESTREAM_$__$$_INITIALIZE$WORD$PCHAR$PCHAR$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	word [bp-22],0
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j2213
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		call	SYSTEM_$$_FINDRESOURCE$WORD$PCHAR$PCHAR$$WORD
		mov	bx,word [bp+12]
		mov	word [bx+8],ax
		mov	bx,word [bp+12]
		cmp	word [bx+8],0
		je	..@j2223
		jmp	..@j2224
..@j2223:
		cmp	byte [bp+4],0
		jne	..@j2225
		jmp	..@j2226
..@j2225:
..@j2227:
		mov	ax,word VMT_$CLASSES_$$_ERESNOTFOUND
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SRESNOTFOUND+2]
		lea	ax,[bp-22]
		push	ax
		mov	ax,word [bp+8]
		cwd
		push	dx
		push	ax
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
		mov	dx,word [bp-22]
		mov	ax,0
		mov	word [bp-18],dx
		mov	word [bp-16],ax
		mov	word [bp-20],11
		lea	ax,[bp-20]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j2227
		push	ax
		push	bp
		call	fpc_raiseexception
		jmp	..@j2248
..@j2226:
..@j2249:
		mov	ax,word VMT_$CLASSES_$$_ERESNOTFOUND
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SRESNOTFOUND+2]
		mov	dx,word [bp+8]
		mov	ax,0
		mov	word [bp-18],dx
		mov	word [bp-16],ax
		mov	word [bp-20],6
		lea	ax,[bp-20]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j2249
		push	ax
		push	bp
		call	fpc_raiseexception
..@j2248:
..@j2224:
		push	word [bp+10]
		mov	bx,word [bp+12]
		push	word [bx+8]
		call	SYSTEM_$$_LOADRESOURCE$WORD$WORD$$WORD
		mov	bx,word [bp+12]
		mov	word [bx+10],ax
		mov	bx,word [bp+12]
		cmp	word [bx+10],0
		je	..@j2272
		jmp	..@j2273
..@j2272:
		cmp	byte [bp+4],0
		jne	..@j2274
		jmp	..@j2275
..@j2274:
..@j2276:
		mov	ax,word VMT_$CLASSES_$$_ERESNOTFOUND
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SRESNOTFOUND+2]
		lea	ax,[bp-22]
		push	ax
		mov	ax,word [bp+8]
		cwd
		push	dx
		push	ax
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
		mov	ax,word [bp-22]
		mov	dx,0
		mov	word [bp-18],ax
		mov	word [bp-16],dx
		mov	word [bp-20],11
		lea	ax,[bp-20]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j2276
		push	ax
		push	bp
		call	fpc_raiseexception
		jmp	..@j2297
..@j2275:
..@j2298:
		mov	ax,word VMT_$CLASSES_$$_ERESNOTFOUND
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SRESNOTFOUND+2]
		mov	dx,word [bp+8]
		mov	ax,0
		mov	word [bp-18],dx
		mov	word [bp-16],ax
		mov	word [bp-20],6
		lea	ax,[bp-20]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j2298
		push	ax
		push	bp
		call	fpc_raiseexception
..@j2297:
..@j2273:
		push	word [bp+12]
		mov	bx,word [bp+12]
		push	word [bx+10]
		call	SYSTEM_$$_LOCKRESOURCE$WORD$$POINTER
		push	ax
		push	word [bp+10]
		mov	bx,word [bp+12]
		push	word [bx+8]
		call	SYSTEM_$$_SIZEOFRESOURCE$WORD$WORD$$LONGWORD
		push	ax
		call	CLASSES$_$TCUSTOMMEMORYSTREAM_$__$$_SETPOINTER$POINTER$SMALLINT
..@j2213:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-22]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j2214
		call	FPC_RERAISE
..@j2214:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TCUSTOMMEMORYSTREAM_$__$$_SETPOINTER$POINTER$SMALLINT
EXTERN	SYSTEM_$$_SIZEOFRESOURCE$WORD$WORD$$LONGWORD
EXTERN	SYSTEM_$$_LOCKRESOURCE$WORD$$POINTER
EXTERN	SYSTEM_$$_LOADRESOURCE$WORD$WORD$$WORD
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
EXTERN	RESSTR_$RTLCONSTS_$$_SRESNOTFOUND
EXTERN	VMT_$CLASSES_$$_ERESNOTFOUND
EXTERN	SYSTEM_$$_FINDRESOURCE$WORD$PCHAR$PCHAR$$WORD
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
