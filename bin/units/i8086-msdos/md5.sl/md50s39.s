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
	GLOBAL MD5_$$_STRTOMD5$ANSISTRING$$TMDDIGEST
MD5_$$_STRTOMD5$ANSISTRING$$TMDDIGEST:
		push	bp
		mov	bp,sp
		sub	sp,28
		mov	word [bp-26],0
		mov	word [bp-24],0
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
		jne	..@j2353
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j2357
		mov	bx,word [bx-2]
..@j2357:
		cmp	bx,32
		mov	al,0
		jne	..@j2358
		inc	ax
..@j2358:
		mov	byte [bp-7],al
		cmp	byte [bp-7],0
		jne	..@j2359
		jmp	..@j2360
..@j2359:
		mov	byte [bp-1],0
		dec	byte [bp-1]
	ALIGN 2
..@j2363:
		inc	byte [bp-1]
		cmp	byte [bp-7],0
		jne	..@j2366
		jmp	..@j2365
..@j2366:
		lea	ax,[bp-24]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-24]
		push	ax
		mov	ax,word _$MD5$_Ld1
		push	ax
		lea	ax,[bp-26]
		push	ax
		push	word [bp+4]
		mov	al,byte [bp-1]
		mov	ah,0
		shl	ax,1
		inc	ax
		push	ax
		mov	ax,2
		push	ax
		call	fpc_ansistr_copy
		push	word [bp-26]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		push	word [bp-24]
		lea	ax,[bp-6]
		push	ax
		call	SYSUTILS_$$_TRYSTRTOINT$ANSISTRING$LONGINT$$BOOLEAN
		test	al,al
		jne	..@j2364
		jmp	..@j2365
..@j2364:
		mov	byte [bp-7],1
		jmp	..@j2387
..@j2365:
		mov	byte [bp-7],0
..@j2387:
		mov	bx,word [bp+6]
		mov	al,byte [bp-1]
		mov	byte [bp-28],al
		mov	byte [bp-27],0
		mov	al,byte [bp-6]
		mov	si,word [bp-28]
		mov	byte [bx+si],al
		cmp	byte [bp-1],15
		jb	..@j2363
..@j2360:
		cmp	byte [bp-7],0
		je	..@j2390
		jmp	..@j2391
..@j2390:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,16
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
..@j2391:
..@j2353:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-26]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-24]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j2354
		call	FPC_RERAISE
..@j2354:
		mov	sp,bp
		pop	bp
		ret	4
; End asmlist al_procedures
; Begin asmlist al_typedconsts
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	SYSUTILS_$$_TRYSTRTOINT$ANSISTRING$LONGINT$$BOOLEAN
EXTERN	fpc_ansistr_concat
EXTERN	fpc_ansistr_copy
EXTERN	_$MD5$_Ld1
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
