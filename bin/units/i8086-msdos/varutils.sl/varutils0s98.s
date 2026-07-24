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
	GLOBAL VARUTILS_$$_SAFEARRAYGETELEMENT$PVARARRAY$PVARARRAYCOORARRAY$POINTER$$HRESULT
VARUTILS_$$_SAFEARRAYGETELEMENT$PVARARRAY$PVARARRAYCOORARRAY$POINTER$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,36
		push	word [bp+4]
		push	word [bp+6]
		lea	ax,[bp-6]
		push	ax
		mov	ax,1
		push	ax
		call	VARUTILS_$$_CHECKVARARRAYANDCALCULATEADDRESS$PVARARRAY$PVARARRAYCOORARRAY$POINTER$BOOLEAN$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,0
		jne	..@j5528
		cmp	dx,0
		jne	..@j5528
		jmp	..@j5529
..@j5528:
		jmp	..@j5516
..@j5529:
		mov	ax,1
		push	ax
		lea	ax,[bp-18]
		push	ax
		lea	ax,[bp-12]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j5532
		push	word [bp+4]
		call	VARUTILS_$$_VARIANTARRAYTYPE$PVARARRAY$$TVARIANTARRAYTYPE
		test	dx,dx
		jne	..@j5544
		test	ax,ax
		je	..@j5538
..@j5544:
		test	dx,dx
		jne	..@j5545
		cmp	ax,1
		je	..@j5539
..@j5545:
		test	dx,dx
		jne	..@j5546
		cmp	ax,2
		je	..@j5540
..@j5546:
		test	dx,dx
		jne	..@j5547
		cmp	ax,3
		je	..@j5541
..@j5547:
		jmp	..@j5537
..@j5538:
		mov	ax,word [bp-6]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		jmp	..@j5536
..@j5539:
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp-6]
		push	word [bx]
		call	fpc_intf_assign
		jmp	..@j5536
..@j5540:
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp-6]
		push	word [bx]
		call	VARUTILS_$$_COPYASWIDESTRING$PWIDECHAR$PWIDECHAR
		jmp	..@j5536
..@j5541:
		mov	ax,word [bp-6]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		call	VARUTILS_$$_VARIANTCOPY$TVARDATA$TVARDATA$$HRESULT
		jmp	..@j5536
..@j5537:
..@j5536:
..@j5532:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j5534
		mov	ax,word VMT_$SYSUTILS_$$_EXCEPTION
		push	ax
		call	fpc_catches
		test	ax,ax
		je	..@j5566
		mov	word [bp-22],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-34]
		push	ax
		lea	ax,[bp-28]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j5567
		push	word [bp-22]
		call	VARUTILS_$$_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j5567:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j5573
		call	FPC_RAISE_NESTED
..@j5573:
		call	FPC_DONEEXCEPTION
		jmp	..@j5534
..@j5566:
		call	FPC_RERAISE
..@j5534:
		push	word [bp+4]
		push	word [bp-2]
		push	word [bp-4]
		call	VARUTILS_$$_SETUNLOCKRESULT$PVARARRAY$HRESULT
..@j5516:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	VARUTILS_$$_SETUNLOCKRESULT$PVARARRAY$HRESULT
EXTERN	FPC_RERAISE
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	VARUTILS_$$_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT
EXTERN	fpc_catches
EXTERN	VMT_$SYSUTILS_$$_EXCEPTION
EXTERN	FPC_POPADDRSTACK
EXTERN	VARUTILS_$$_VARIANTCOPY$TVARDATA$TVARDATA$$HRESULT
EXTERN	VARUTILS_$$_COPYASWIDESTRING$PWIDECHAR$PWIDECHAR
EXTERN	fpc_intf_assign
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	VARUTILS_$$_VARIANTARRAYTYPE$PVARARRAY$$TVARIANTARRAYTYPE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	VARUTILS_$$_CHECKVARARRAYANDCALCULATEADDRESS$PVARARRAY$PVARARRAYCOORARRAY$POINTER$BOOLEAN$$HRESULT
