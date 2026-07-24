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
	GLOBAL STRUTILS_$$_STRINGSREPLACE$crcB0D2F487
STRUTILS_$$_STRINGSREPLACE$crcB0D2F487:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	ax,word [bp+12]
		mov	di,word [bp+10]
		inc	di
		mov	cx,di
		shl	di,1
		sub	sp,di
		and	sp,-2
		mov	di,sp
		push	ss
		pop	es
		mov	si,ax
		cld
		rep
		movsw
		mov	ax,sp
		mov	word [bp+12],ax
		mov	si,word [bp+8]
		mov	di,word [bp+6]
		inc	di
		mov	cx,di
		shl	di,1
		sub	sp,di
		and	sp,-2
		mov	di,sp
		push	ss
		pop	es
		cld
		rep
		movsw
		mov	ax,sp
		mov	word [bp+8],ax
		mov	ax,word [bp+12]
		push	ax
		mov	ax,word RTTI_$SYSTEM_$$_ANSISTRING
		push	ax
		mov	ax,word [bp+10]
		inc	ax
		push	ax
		call	fpc_addref_array
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word RTTI_$SYSTEM_$$_ANSISTRING
		push	ax
		mov	ax,word [bp+6]
		inc	ax
		push	ax
		call	fpc_addref_array
		mov	word [bp-10],0
		mov	word [bp-12],0
		mov	word [bp-18],0
		mov	ax,word [bp+10]
		inc	ax
		mov	word [bp-16],ax
		mov	ax,word [bp+6]
		inc	ax
		cmp	ax,word [bp-16]
		jne	..@j2213
		jmp	..@j2214
..@j2213:
..@j2215:
		mov	ax,word VMT_$SYSUTILS_$$_EXCEPTION
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$STRUTILS_$$_SERRAMOUNTSTRINGS+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j2215
		push	ax
		push	bp
		call	fpc_raiseexception
..@j2214:
		dec	word [bp-16]
		mov	al,byte [bp+4]
		mov	ah,0
		and	ax,2
		test	ax,ax
		jne	..@j2228
		jmp	..@j2229
..@j2228:
		lea	ax,[bp-12]
		push	ax
		push	word [bp+14]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+14]
		call	ax
		mov	ax,word [bp-16]
		mov	word [bp-22],ax
		mov	word [bp-8],0
		mov	ax,word [bp-22]
		cmp	ax,word [bp-8]
		jl	..@j2237
		dec	word [bp-8]
	ALIGN 2
..@j2238:
		inc	word [bp-8]
		mov	bx,word [bp+12]
		mov	ax,word [bp-8]
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si]
		push	ax
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	bx,word [bp+12]
		mov	ax,word [bp-8]
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si]
		mov	word [bp-20],ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp-20]
		push	word [bx]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+14]
		call	ax
		push	word [bp-18]
		call	fpc_ansistr_assign
		mov	ax,word [bp-22]
		cmp	ax,word [bp-8]
		jg	..@j2238
..@j2237:
		jmp	..@j2249
..@j2229:
		lea	ax,[bp-12]
		push	ax
		push	word [bp+14]
		call	fpc_ansistr_assign
..@j2249:
		lea	ax,[bp-10]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	ax,word [bp-12]
		mov	word [bp-2],ax
		mov	ax,word [bp+14]
		mov	word [bp-4],ax
		mov	bx,word [bp+14]
		test	bx,bx
		je	..@j2264
		mov	bx,word [bx-2]
..@j2264:
		mov	ax,word [bp-2]
		add	ax,bx
		mov	word [bp-6],ax
		jmp	..@j2266
	ALIGN 2
..@j2265:
		mov	byte [bp-13],0
		mov	ax,word [bp-16]
		mov	word [bp-24],ax
		mov	word [bp-8],0
		mov	ax,word [bp-24]
		cmp	ax,word [bp-8]
		jl	..@j2273
		dec	word [bp-8]
	ALIGN 2
..@j2274:
		inc	word [bp-8]
		mov	bx,word [bp+12]
		mov	ax,word [bp-8]
		mov	si,ax
		shl	si,1
		mov	bx,word [bx+si]
		test	bx,bx
		je	..@j2280
		mov	bx,word [bx-2]
..@j2280:
		cmp	bx,0
		jg	..@j2279
		jmp	..@j2276
..@j2279:
		mov	bx,word [bp+12]
		mov	ax,word [bp-8]
		mov	si,ax
		shl	si,1
		mov	bx,word [bx+si]
		mov	si,word [bp-2]
		mov	al,byte [bx]
		cmp	al,byte [si]
		je	..@j2278
		jmp	..@j2276
..@j2278:
		mov	bx,word [bp+12]
		mov	ax,word [bp-8]
		mov	si,ax
		shl	si,1
		mov	bx,word [bx+si]
		test	bx,bx
		je	..@j2281
		mov	bx,word [bx-2]
..@j2281:
		mov	ax,word [bp-6]
		mov	dx,word [bp-2]
		sub	ax,dx
		cmp	bx,ax
		jle	..@j2277
		jmp	..@j2276
..@j2277:
		mov	bx,word [bp+12]
		mov	ax,word [bp-8]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		push	ax
		mov	ax,word [bp-2]
		push	ax
		mov	bx,word [bp+12]
		mov	ax,word [bp-8]
		mov	si,ax
		shl	si,1
		mov	bx,word [bx+si]
		test	bx,bx
		je	..@j2288
		mov	bx,word [bx-2]
..@j2288:
		push	bx
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$SMALLINT$$SMALLINT
		test	ax,ax
		je	..@j2275
		jmp	..@j2276
..@j2275:
		lea	ax,[bp-10]
		push	ax
		push	word [bp-10]
		mov	bx,word [bp+8]
		mov	ax,word [bp-8]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		mov	bx,word [bp+12]
		mov	ax,word [bp-8]
		mov	si,ax
		shl	si,1
		mov	bx,word [bx+si]
		test	bx,bx
		je	..@j2299
		mov	bx,word [bx-2]
..@j2299:
		mov	ax,word [bp-2]
		add	ax,bx
		mov	word [bp-2],ax
		mov	bx,word [bp+12]
		mov	ax,word [bp-8]
		mov	si,ax
		shl	si,1
		mov	bx,word [bx+si]
		test	bx,bx
		je	..@j2302
		mov	bx,word [bx-2]
..@j2302:
		mov	ax,word [bp-4]
		add	ax,bx
		mov	word [bp-4],ax
		mov	byte [bp-13],1
..@j2276:
		mov	ax,word [bp-24]
		cmp	ax,word [bp-8]
		jg	..@j2274
..@j2273:
		cmp	byte [bp-13],0
		je	..@j2305
		jmp	..@j2306
..@j2305:
		lea	ax,[bp-10]
		push	ax
		push	word [bp-10]
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp-4]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-18]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		inc	word [bp-2]
		inc	word [bp-4]
		jmp	..@j2321
..@j2306:
		mov	al,byte [bp+4]
		mov	ah,0
		and	ax,1
		test	ax,ax
		je	..@j2322
		jmp	..@j2323
..@j2322:
		lea	ax,[bp-10]
		push	ax
		push	word [bp-10]
		lea	ax,[bp-18]
		push	ax
		push	word [bp-4]
		call	SYSUTILS_$$_STRPAS$PCHAR$$ANSISTRING
		push	word [bp-18]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		jmp	..@j2267
..@j2323:
..@j2321:
..@j2266:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-6]
		jb	..@j2265
		jmp	..@j2267
..@j2267:
		mov	ax,word [bp+16]
		push	ax
		push	word [bp-10]
		call	fpc_ansistr_assign
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-10]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-12]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	ax,word [bp+12]
		push	ax
		mov	ax,word RTTI_$SYSTEM_$$_ANSISTRING
		push	ax
		mov	ax,word [bp+10]
		inc	ax
		push	ax
		call	fpc_finalize_array
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word RTTI_$SYSTEM_$$_ANSISTRING
		push	ax
		mov	ax,word [bp+6]
		inc	ax
		push	ax
		call	fpc_finalize_array
		mov	sp,bp
		pop	bp
		ret	14
EXTERN	fpc_finalize_array
EXTERN	SYSUTILS_$$_STRPAS$PCHAR$$ANSISTRING
EXTERN	fpc_char_to_ansistr
EXTERN	fpc_ansistr_concat
EXTERN	SYSTEM_$$_COMPAREBYTE$formal$formal$SMALLINT$$SMALLINT
EXTERN	fpc_ansistr_assign
EXTERN	fpc_ansistr_decr_ref
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$STRUTILS_$$_SERRAMOUNTSTRINGS
EXTERN	VMT_$SYSUTILS_$$_EXCEPTION
EXTERN	fpc_addref_array
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING
