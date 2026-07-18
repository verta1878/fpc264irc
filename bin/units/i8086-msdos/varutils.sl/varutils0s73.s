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
	GLOBAL VARUTILS_$$_VARIANTCHANGETYPEEX$TVARDATA$TVARDATA$SMALLINT$WORD$WORD$$HRESULT
VARUTILS_$$_VARIANTCHANGETYPEEX$TVARDATA$TVARDATA$SMALLINT$WORD$WORD$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,80
		mov	word [bp-64],0
		mov	ax,1
		push	ax
		lea	ax,[bp-32]
		push	ax
		lea	ax,[bp-26]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j4493
		mov	ax,word [bp+12]
		and	ax,8192
		test	ax,ax
		jne	..@j4495
		jmp	..@j4498
..@j4498:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		and	ax,8192
		test	ax,ax
		jne	..@j4495
		jmp	..@j4497
..@j4497:
		mov	ax,word [bp+12]
		and	ax,16384
		test	ax,ax
		jne	..@j4495
		jmp	..@j4496
..@j4495:
		mov	word [bp-4],87
		mov	word [bp-2],-32761
		jmp	..@j4493
..@j4496:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	VARUTILS_$$_VARIANTCOPYIND$TVARDATA$TVARDATA$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,0
		jne	..@j4508
		cmp	dx,0
		jne	..@j4508
		jmp	..@j4507
..@j4507:
		mov	ax,1
		push	ax
		lea	ax,[bp-46]
		push	ax
		lea	ax,[bp-40]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j4509
		mov	ax,word [bp+4]
		push	ax
		call	VARUTILS_$$_VARIANTCLEAR$TVARDATA$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,0
		jne	..@j4517
		cmp	dx,0
		jne	..@j4517
		jmp	..@j4516
..@j4516:
		mov	ax,1
		push	ax
		lea	ax,[bp-60]
		push	ax
		lea	ax,[bp-54]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j4520
		mov	ax,word [bp+12]
		cmp	ax,2
		jb	..@j4525
		sub	ax,2
		je	..@j4526
		dec	ax
		je	..@j4527
		dec	ax
		je	..@j4528
		dec	ax
		je	..@j4529
		dec	ax
		je	..@j4530
		dec	ax
		je	..@j4531
		dec	ax
		je	..@j4532
		dec	ax
		je	..@j4533
		sub	ax,2
		je	..@j4535
		sub	ax,2
		je	..@j4534
		sub	ax,3
		je	..@j4537
		dec	ax
		je	..@j4536
		sub	ax,2
		je	..@j4539
		dec	ax
		je	..@j4538
		dec	ax
		je	..@j4540
		jmp	..@j4525
..@j4526:
		lea	ax,[bp-20]
		push	ax
		call	VARUTILS_$$_VARIANTTOSMALLINT$TVARDATA$$SMALLINT
		mov	bx,word [bp+4]
		mov	word [bx+8],ax
		jmp	..@j4524
..@j4527:
		lea	ax,[bp-20]
		push	ax
		call	VARUTILS_$$_VARIANTTOLONGINT$TVARDATA$$LONGINT
		mov	bx,word [bp+4]
		mov	word [bx+8],ax
		mov	word [bx+10],dx
		jmp	..@j4524
..@j4528:
		lea	ax,[bp-20]
		push	ax
		call	VARUTILS_$$_VARIANTTOSINGLE$TVARDATA$$SINGLE
		mov	bx,word [bp+4]
		wait fstp	dword [bx+8]
		DB	09bh
		jmp	..@j4524
..@j4529:
		lea	ax,[bp-20]
		push	ax
		call	VARUTILS_$$_VARIANTTODOUBLE$TVARDATA$$DOUBLE
		mov	bx,word [bp+4]
		wait fstp	qword [bx+8]
		DB	09bh
		jmp	..@j4524
..@j4530:
		lea	ax,[bp-20]
		push	ax
		call	VARUTILS_$$_VARIANTTOCURRENCY$TVARDATA$$CURRENCY
		mov	bx,word [bp+4]
		wait fistp	qword [bx+8]
		DB	09bh
		jmp	..@j4524
..@j4531:
		lea	ax,[bp-20]
		push	ax
		call	VARUTILS_$$_VARIANTTODATE$TVARDATA$$TDATETIME
		mov	bx,word [bp+4]
		wait fstp	qword [bx+8]
		DB	09bh
		jmp	..@j4524
..@j4532:
		mov	bx,word [bp+4]
		lea	ax,[bx+8]
		push	ax
		lea	ax,[bp-64]
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	VARUTILS_$$_VARIANTTOWIDESTRING$TVARDATA$$WIDESTRING
		push	word [bp-64]
		call	VARUTILS_$$_MAKEWIDESTRING$PWIDECHAR$WIDESTRING
		jmp	..@j4524
..@j4533:
		mov	word [bp-4],5
		mov	word [bp-2],-32766
		jmp	..@j4524
..@j4534:
		mov	word [bp-4],5
		mov	word [bp-2],-32766
		jmp	..@j4524
..@j4535:
		lea	ax,[bp-20]
		push	ax
		call	VARUTILS_$$_VARIANTTOBOOLEAN$TVARDATA$$BOOLEAN
		or	al,al
		mov	ax,0
		je	..@j4583
		inc	ax
..@j4583:
		neg	ax
		mov	bx,word [bp+4]
		mov	word [bx+8],ax
		jmp	..@j4524
..@j4536:
		lea	ax,[bp-20]
		push	ax
		call	VARUTILS_$$_VARIANTTOBYTE$TVARDATA$$BYTE
		mov	bx,word [bp+4]
		mov	byte [bx+8],al
		jmp	..@j4524
..@j4537:
		lea	ax,[bp-20]
		push	ax
		call	VARUTILS_$$_VARIANTTOSHORTINT$TVARDATA$$SHORTINT
		mov	bx,word [bp+4]
		mov	byte [bx+8],al
		jmp	..@j4524
..@j4538:
		lea	ax,[bp-20]
		push	ax
		call	VARUTILS_$$_VARIANTTOINT64$TVARDATA$$INT64
		mov	si,word [bp+4]
		mov	word [si+8],dx
		mov	word [si+10],cx
		mov	word [si+12],bx
		mov	word [si+14],ax
		jmp	..@j4524
..@j4539:
		lea	ax,[bp-20]
		push	ax
		call	VARUTILS_$$_VARIANTTOCARDINAL$TVARDATA$$LONGWORD
		mov	bx,word [bp+4]
		mov	word [bx+8],ax
		mov	word [bx+10],dx
		jmp	..@j4524
..@j4540:
		lea	ax,[bp-20]
		push	ax
		call	VARUTILS_$$_VARIANTTOQWORD$TVARDATA$$QWORD
		mov	si,word [bp+4]
		mov	word [si+8],dx
		mov	word [si+10],cx
		mov	word [si+12],bx
		mov	word [si+14],ax
		jmp	..@j4524
..@j4525:
		mov	word [bp-4],8
		mov	word [bp-2],-32766
..@j4524:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jne	..@j4607
		cmp	ax,0
		jne	..@j4607
		jmp	..@j4606
..@j4606:
		mov	bx,word [bp+4]
		mov	ax,word [bp+12]
		mov	word [bx],ax
..@j4607:
..@j4520:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j4522
		mov	ax,word VMT_$SYSUTILS_$$_EVARIANTERROR
		push	ax
		call	fpc_catches
		test	ax,ax
		je	..@j4610
		mov	word [bp-66],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-78]
		push	ax
		lea	ax,[bp-72]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j4611
		mov	bx,word [bp-66]
		mov	ax,word [bx+8]
		mov	word [bp-4],ax
		mov	ax,word [bx+10]
		mov	word [bp-2],ax
..@j4611:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j4615
		call	FPC_RAISE_NESTED
..@j4615:
		call	FPC_DONEEXCEPTION
		jmp	..@j4522
..@j4610:
		mov	ax,1
		push	ax
		lea	ax,[bp-76]
		push	ax
		lea	ax,[bp-70]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j4616
		mov	word [bp-4],87
		mov	word [bp-2],-32761
..@j4616:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j4619
		call	FPC_RAISE_NESTED
..@j4619:
		call	FPC_DONEEXCEPTION
		jmp	..@j4522
..@j4522:
..@j4517:
..@j4509:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-20]
		push	ax
		call	VARUTILS_$$_VARIANTCLEAR$TVARDATA$$HRESULT
		pop	ax
		test	ax,ax
		je	..@j4510
		call	FPC_RERAISE
..@j4510:
..@j4508:
..@j4493:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-64]
		push	ax
		call	fpc_unicodestr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j4494
		call	FPC_RERAISE
..@j4494:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_RERAISE
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_catches
EXTERN	VMT_$SYSUTILS_$$_EVARIANTERROR
EXTERN	FPC_POPADDRSTACK
EXTERN	VARUTILS_$$_VARIANTTOQWORD$TVARDATA$$QWORD
EXTERN	VARUTILS_$$_VARIANTTOCARDINAL$TVARDATA$$LONGWORD
EXTERN	VARUTILS_$$_VARIANTTOINT64$TVARDATA$$INT64
EXTERN	VARUTILS_$$_VARIANTTOSHORTINT$TVARDATA$$SHORTINT
EXTERN	VARUTILS_$$_VARIANTTOBYTE$TVARDATA$$BYTE
EXTERN	VARUTILS_$$_VARIANTTOBOOLEAN$TVARDATA$$BOOLEAN
EXTERN	VARUTILS_$$_MAKEWIDESTRING$PWIDECHAR$WIDESTRING
EXTERN	VARUTILS_$$_VARIANTTOWIDESTRING$TVARDATA$$WIDESTRING
EXTERN	VARUTILS_$$_VARIANTTODATE$TVARDATA$$TDATETIME
EXTERN	VARUTILS_$$_VARIANTTOCURRENCY$TVARDATA$$CURRENCY
EXTERN	VARUTILS_$$_VARIANTTODOUBLE$TVARDATA$$DOUBLE
EXTERN	VARUTILS_$$_VARIANTTOSINGLE$TVARDATA$$SINGLE
EXTERN	VARUTILS_$$_VARIANTTOLONGINT$TVARDATA$$LONGINT
EXTERN	VARUTILS_$$_VARIANTTOSMALLINT$TVARDATA$$SMALLINT
EXTERN	VARUTILS_$$_VARIANTCLEAR$TVARDATA$$HRESULT
EXTERN	VARUTILS_$$_VARIANTCOPYIND$TVARDATA$TVARDATA$$HRESULT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
