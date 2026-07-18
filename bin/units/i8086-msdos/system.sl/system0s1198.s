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
	GLOBAL SYSTEM_$$_DO_GETDIR$BYTE$RAWBYTESTRING
SYSTEM_$$_DO_GETDIR$BYTE$RAWBYTESTRING:
		push	bp
		mov	bp,sp
		sub	sp,812
		mov	word [bp-300],0
		mov	ax,1
		push	ax
		lea	ax,[bp-296]
		push	ax
		lea	ax,[bp-290]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j25291
		mov	al,byte [bp+6]
		mov	ah,0
		mov	word [bp-278],ax
		lea	ax,[bp-261]
		mov	word [bp-274],ax
		mov	ax,ss
		mov	word [bp-270],ax
		cmp	byte [U_$SYSTEM_$$_LFNSUPPORT],0
		jne	..@j25299
		jmp	..@j25300
..@j25299:
		mov	word [bp-284],28999
		jmp	..@j25303
..@j25300:
		mov	word [bp-284],18176
..@j25303:
		lea	ax,[bp-284]
		push	ax
		call	FPC_MSDOS
		mov	ax,word [bp-266]
		and	ax,1
		test	ax,ax
		jne	..@j25308
		jmp	..@j25309
..@j25308:
		push	word [bp-284]
		call	SYSTEM_$$_GETINOUTRES$WORD
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-300]
		push	ax
		lea	ax,[bp-556]
		push	ax
		mov	ax,255
		push	ax
		mov	al,byte [bp+6]
		mov	ah,0
		add	ax,64
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	dx,0
		or	ax,1
		mov	word [bp-812],ax
		lea	ax,[bp-812]
		push	ax
		mov	ax,word _$SYSTEM$_Ld40
		push	ax
		call	fpc_shortstr_concat
		lea	ax,[bp-556]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-300]
		call	fpc_ansistr_assign
		mov	ax,word [bp+4]
		push	ax
		push	word [U_$SYSTEM_$$_DEFAULTFILESYSTEMCODEPAGE]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
		jmp	..@j25291
		jmp	..@j25336
..@j25309:
		mov	byte [bp-9],0
..@j25336:
		mov	word [bp-264],0
		mov	ax,word [bp+4]
		push	ax
		mov	ax,260
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		jmp	..@j25348
	ALIGN 2
..@j25347:
		mov	si,word [bp-264]
		mov	al,byte [bp+si-261]
		mov	ah,0
		mov	bx,ax
		mov	cl,4
		shr	bx,cl
		shl	bx,1
		mov	cx,ax
		and	cl,15
		mov	ax,1
		shl	ax,cl
		test	word [TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS+bx],ax
		jne	..@j25350
		jmp	..@j25351
..@j25350:
		mov	si,word [bp-264]
		mov	byte [bp+si-261],92
..@j25351:
		mov	ax,word [bp+4]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	ax,word [bp-264]
		mov	di,ax
		add	di,4
		mov	si,word [bp-264]
		mov	al,byte [bp+si-261]
		mov	byte [bx+di-1],al
		inc	word [bp-264]
..@j25348:
		mov	si,word [bp-264]
		cmp	byte [bp+si-261],0
		jne	..@j25347
		jmp	..@j25349
..@j25349:
		mov	ax,word [bp+4]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	byte [bx+1],58
		mov	ax,word [bp+4]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	byte [bx+2],92
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp-264]
		add	ax,3
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	ax,word [bp+4]
		push	ax
		push	word [U_$SYSTEM_$$_DEFAULTFILESYSTEMCODEPAGE]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
		cmp	byte [TC_$SYSTEM_$$_FILENAMECASEPRESERVING],0
		je	..@j25378
		jmp	..@j25379
..@j25378:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-300]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx]
		call	SYSTEM_$$_UPCASE$ANSISTRING$$ANSISTRING
		push	word [bp-300]
		call	fpc_ansistr_assign
..@j25379:
		cmp	byte [bp+6],0
		jne	..@j25388
		jmp	..@j25389
..@j25388:
		mov	ax,word [bp+4]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	al,byte [bp+6]
		mov	ah,0
		add	ax,65
		dec	ax
		mov	byte [bx],al
		jmp	..@j25394
..@j25389:
		mov	word [bp-284],6400
		lea	ax,[bp-284]
		push	ax
		call	FPC_MSDOS
		mov	ax,word [bp-284]
		and	ax,255
		add	ax,65
		mov	word [bp-264],ax
		mov	ax,word [bp+4]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	al,byte [bp-264]
		mov	byte [bx],al
..@j25394:
..@j25291:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-300]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j25292
		call	FPC_RERAISE
..@j25292:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_UPCASE$ANSISTRING$$ANSISTRING
EXTERN	TC_$SYSTEM_$$_FILENAMECASEPRESERVING
EXTERN	fpc_ansistr_unique
EXTERN	TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS
EXTERN	fpc_ansistr_setlength
EXTERN	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
EXTERN	U_$SYSTEM_$$_DEFAULTFILESYSTEMCODEPAGE
EXTERN	fpc_ansistr_assign
EXTERN	fpc_shortstr_to_ansistr
EXTERN	fpc_shortstr_concat
EXTERN	_$SYSTEM$_Ld40
EXTERN	SYSTEM_$$_GETINOUTRES$WORD
EXTERN	FPC_MSDOS
EXTERN	U_$SYSTEM_$$_LFNSUPPORT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
