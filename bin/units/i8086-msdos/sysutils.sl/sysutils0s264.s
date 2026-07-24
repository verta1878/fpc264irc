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
	GLOBAL SYSUTILS$_$SSCANF$crcFD40E9A9_$$_GETFLOAT$$SMALLINT
SYSUTILS$_$SSCANF$crcFD40E9A9_$$_GETFLOAT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,54
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
		jne	..@j9270
		mov	bx,word [bp+4]
		lea	ax,[bx-12]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j9277
	ALIGN 2
..@j9276:
		mov	bx,word [bp+4]
		inc	word [bx-8]
..@j9277:
		mov	bx,word [bp+4]
		mov	si,word [bx+10]
		test	si,si
		je	..@j9280
		mov	si,word [si-2]
..@j9280:
		mov	bx,word [bp+4]
		cmp	si,word [bx-8]
		jg	..@j9279
		jmp	..@j9278
..@j9279:
		mov	bx,word [bp+4]
		mov	bx,word [bx+10]
		mov	si,word [bp+4]
		mov	si,word [si-8]
		cmp	byte [bx+si-1],32
		je	..@j9276
		jmp	..@j9278
..@j9278:
		jmp	..@j9282
	ALIGN 2
..@j9281:
		mov	bx,word [bp+4]
		lea	ax,[bx-12]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx-12]
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+10]
		mov	si,word [bp+4]
		mov	si,word [si-8]
		mov	al,byte [bx+si-1]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-18]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		mov	bx,word [bp+4]
		inc	word [bx-8]
..@j9282:
		mov	bx,word [bp+4]
		mov	bx,word [bx+10]
		test	bx,bx
		je	..@j9299
		mov	bx,word [bx-2]
..@j9299:
		mov	si,word [bp+4]
		cmp	bx,word [si-8]
		jge	..@j9298
		jmp	..@j9283
..@j9298:
		mov	bx,word [bp+4]
		mov	ax,word [bx+10]
		mov	word [bp-54],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx-8]
		mov	word [bp-52],ax
		mov	ax,word _$SYSUTILS$_Ld646
		push	ax
		lea	ax,[bp-50]
		push	ax
		mov	al,byte [TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS+3]
		mov	ah,0
		push	ax
		mov	ax,32
		push	ax
		call	fpc_varset_set
		mov	bx,word [bp-54]
		mov	si,word [bp-52]
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
		test	word [bp+si-50],ax
		jne	..@j9281
		jmp	..@j9283
..@j9283:
		mov	bx,word [bp+4]
		mov	bx,word [bx-12]
		test	bx,bx
		je	..@j9310
		mov	bx,word [bx-2]
..@j9310:
		mov	word [bp-2],bx
..@j9270:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j9271
		call	FPC_RERAISE
..@j9271:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_varset_set
EXTERN	TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
EXTERN	_$SYSUTILS$_Ld646
EXTERN	fpc_ansistr_concat
EXTERN	fpc_char_to_ansistr
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
