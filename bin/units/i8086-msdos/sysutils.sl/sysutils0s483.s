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
	GLOBAL SYSUTILS_$$_DIRECTORYEXISTS$RAWBYTESTRING$$BOOLEAN
SYSUTILS_$$_DIRECTORYEXISTS$RAWBYTESTRING$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,66
		mov	word [bp-4],0
		mov	word [bp-62],0
		mov	ax,1
		push	ax
		lea	ax,[bp-26]
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j15397
		lea	ax,[bp-4]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
		mov	bx,word [bp-4]
		test	bx,bx
		je	..@j15407
		mov	bx,word [bx-2]
..@j15407:
		cmp	bx,2
		je	..@j15406
		jmp	..@j15404
..@j15406:
		mov	bx,word [bp-4]
		cmp	byte [bx+1],58
		je	..@j15405
		jmp	..@j15404
..@j15405:
		mov	bx,word [bp-4]
		mov	al,byte [bx]
		mov	ah,0
		sub	ax,65
		cmp	ax,26
		jb	..@j15409
..@j15409:
		jc	..@j15403
		jmp	..@j15408
..@j15408:
		mov	bx,word [bp-4]
		mov	al,byte [bx]
		mov	ah,0
		sub	ax,97
		cmp	ax,26
		jb	..@j15410
..@j15410:
		jc	..@j15403
		jmp	..@j15404
..@j15403:
		mov	bx,word [bp-4]
		mov	al,byte [bx]
		mov	ah,0
		sub	ax,65
		cmp	ax,26
		jb	..@j15413
..@j15413:
		jc	..@j15411
		jmp	..@j15412
..@j15411:
		mov	bx,word [bp-4]
		mov	al,byte [bx]
		mov	ah,0
		sub	ax,65
		inc	ax
		mov	byte [bp-5],al
		jmp	..@j15416
..@j15412:
		mov	bx,word [bp-4]
		mov	al,byte [bx]
		mov	ah,0
		sub	ax,97
		inc	ax
		mov	byte [bp-5],al
..@j15416:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15421
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j15422
..@j15421:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j15422:
		mov	ax,word [bx]
		mov	dx,0
		mov	word [bp-14],ax
		mov	word [bp-12],dx
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15425
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j15426
..@j15425:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j15426:
		mov	word [bx],0
		mov	al,byte [bp-5]
		mov	ah,0
		push	ax
		lea	ax,[bp-4]
		push	ax
		call	SYSTEM_$$_GETDIR$BYTE$RAWBYTESTRING
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15433
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j15434
..@j15433:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j15434:
		cmp	word [bx],0
		jne	..@j15431
		jmp	..@j15432
..@j15431:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15437
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j15438
..@j15437:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j15438:
		mov	ax,word [bp-14]
		mov	word [bx],ax
		mov	byte [bp-1],0
		jmp	..@j15397
..@j15432:
..@j15404:
		mov	bx,word [bp-4]
		test	bx,bx
		je	..@j15445
		mov	bx,word [bx-2]
..@j15445:
		cmp	bx,1
		jg	..@j15444
		jmp	..@j15442
..@j15444:
		mov	bx,word [bp-4]
		mov	si,word [bp-4]
		test	si,si
		je	..@j15446
		mov	si,word [si-2]
..@j15446:
		mov	al,byte [bx+si-1]
		mov	ah,0
		mov	bx,ax
		mov	cl,4
		shr	bx,cl
		shl	bx,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j15447
		test	al,0
		jmp	..@j15448
..@j15447:
		mov	ax,1
		shl	ax,cl
		test	word [TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS+bx],ax
..@j15448:
		jne	..@j15443
		jmp	..@j15442
..@j15443:
		mov	ax,word [bp-4]
		mov	word [bp-66],ax
		mov	bx,word [bp-4]
		test	bx,bx
		je	..@j15449
		mov	bx,word [bx-2]
..@j15449:
		mov	word [bp-64],bx
		dec	word [bp-64]
		mov	ax,word TC_$SYSTEM_$$_ALLOWDRIVESEPARATORS
		push	ax
		mov	ax,word TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS
		push	ax
		lea	ax,[bp-60]
		push	ax
		mov	ax,32
		push	ax
		call	fpc_varset_add_sets
		mov	bx,word [bp-66]
		mov	si,word [bp-64]
		mov	al,byte [bx+si-1]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j15458
		test	al,0
		jmp	..@j15459
..@j15458:
		mov	ax,1
		shl	ax,cl
		test	word [bp+si-60],ax
..@j15459:
		je	..@j15441
		jmp	..@j15442
..@j15441:
		lea	ax,[bp-4]
		push	ax
		lea	ax,[bp-62]
		push	ax
		push	word [bp-4]
		mov	ax,1
		push	ax
		mov	bx,word [bp-4]
		test	bx,bx
		je	..@j15472
		mov	bx,word [bx-2]
..@j15472:
		dec	bx
		push	bx
		call	fpc_ansistr_copy
		push	word [bp-62]
		call	fpc_ansistr_assign
..@j15442:
		push	word [bp-4]
		call	SYSUTILS_$$_FILEGETATTR$RAWBYTESTRING$$LONGINT
		mov	word [bp-10],ax
		mov	word [bp-8],dx
		mov	dx,word [bp-10]
		mov	ax,word [bp-8]
		cmp	ax,-1
		jne	..@j15479
		cmp	dx,-1
		jne	..@j15479
		jmp	..@j15478
..@j15479:
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		and	ax,16
		mov	dx,0
		cmp	dx,0
		jne	..@j15478
		cmp	ax,16
		jne	..@j15478
		jmp	..@j15477
..@j15477:
		mov	byte [bp-1],1
		jmp	..@j15480
..@j15478:
		mov	byte [bp-1],0
..@j15480:
..@j15397:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-62]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j15398
		call	FPC_RERAISE
..@j15398:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS_$$_FILEGETATTR$RAWBYTESTRING$$LONGINT
EXTERN	fpc_ansistr_copy
EXTERN	fpc_varset_add_sets
EXTERN	TC_$SYSTEM_$$_ALLOWDRIVESEPARATORS
EXTERN	TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS
EXTERN	SYSTEM_$$_GETDIR$BYTE$RAWBYTESTRING
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
