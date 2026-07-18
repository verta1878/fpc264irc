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
	GLOBAL VARUTILS_$$_SAFEARRAYPUTELEMENT$PVARARRAY$PVARARRAYCOORARRAY$POINTER$$HRESULT
VARUTILS_$$_SAFEARRAYPUTELEMENT$PVARARRAY$PVARARRAYCOORARRAY$POINTER$$HRESULT:
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
		jne	..@j5590
		cmp	dx,0
		jne	..@j5590
		jmp	..@j5591
..@j5590:
		jmp	..@j5578
..@j5591:
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
		jne	..@j5594
		push	word [bp+4]
		call	VARUTILS_$$_VARIANTARRAYTYPE$PVARARRAY$$TVARIANTARRAYTYPE
		test	dx,dx
		jne	..@j5606
		test	ax,ax
		je	..@j5600
..@j5606:
		test	dx,dx
		jne	..@j5607
		cmp	ax,1
		je	..@j5601
..@j5607:
		test	dx,dx
		jne	..@j5608
		cmp	ax,2
		je	..@j5602
..@j5608:
		test	dx,dx
		jne	..@j5609
		cmp	ax,3
		je	..@j5603
..@j5609:
		jmp	..@j5599
..@j5600:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp-6]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		jmp	..@j5598
..@j5601:
		mov	ax,word [bp-6]
		push	ax
		push	word [bp+8]
		call	fpc_intf_assign
		jmp	..@j5598
..@j5602:
		mov	ax,word [bp-6]
		push	ax
		push	word [bp+8]
		call	VARUTILS_$$_COPYASWIDESTRING$PWIDECHAR$PWIDECHAR
		jmp	..@j5598
..@j5603:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp-6]
		push	ax
		call	VARUTILS_$$_VARIANTCOPY$TVARDATA$TVARDATA$$HRESULT
		jmp	..@j5598
..@j5599:
..@j5598:
..@j5594:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j5596
		mov	ax,word VMT_$SYSUTILS_$$_EXCEPTION
		push	ax
		call	fpc_catches
		test	ax,ax
		je	..@j5628
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
		jne	..@j5629
		push	word [bp-22]
		call	VARUTILS_$$_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j5629:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j5635
		call	FPC_RAISE_NESTED
..@j5635:
		call	FPC_DONEEXCEPTION
		jmp	..@j5596
..@j5628:
		call	FPC_RERAISE
..@j5596:
		push	word [bp+4]
		push	word [bp-2]
		push	word [bp-4]
		call	VARUTILS_$$_SETUNLOCKRESULT$PVARARRAY$HRESULT
..@j5578:
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
