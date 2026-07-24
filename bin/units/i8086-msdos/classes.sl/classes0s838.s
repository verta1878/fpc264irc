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
	GLOBAL CLASSES$_$TREADER_$__$$_READVARIANT$$VARIANT
CLASSES$_$TREADER_$__$$_READVARIANT$$VARIANT:
		push	bp
		mov	bp,sp
		sub	sp,44
		mov	word [bp-38],0
		mov	word [bp-36],0
		lea	ax,[bp-34]
		push	ax
		call	fpc_variant_init
		mov	ax,1
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j19558
		cmp	word [TC_$SYSTEM_$$_VARCLEARPROC],0
		je	..@j19560
		jmp	..@j19561
..@j19560:
..@j19562:
		mov	ax,word VMT_$CLASSES_$$_EREADERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SERRNOVARIANTSUPPORT+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j19562
		push	ax
		push	bp
		call	fpc_raiseexception
..@j19561:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,16
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_NEXTVALUE$$TVALUETYPE
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		test	ax,ax
		jne	..@j19600
		test	dx,dx
		je	..@j19588
..@j19600:
		test	ax,ax
		jb	..@j19586
		test	ax,ax
		ja	..@j19601
		cmp	dx,2
		jb	..@j19586
..@j19601:
		test	ax,ax
		jb	..@j19589
		test	ax,ax
		ja	..@j19602
		cmp	dx,4
		jbe	..@j19589
..@j19602:
		test	ax,ax
		jne	..@j19603
		cmp	dx,5
		je	..@j19595
..@j19603:
		test	ax,ax
		jne	..@j19604
		cmp	dx,6
		je	..@j19598
..@j19604:
		test	ax,ax
		jb	..@j19586
		test	ax,ax
		ja	..@j19605
		cmp	dx,8
		jb	..@j19586
..@j19605:
		test	ax,ax
		jb	..@j19592
		test	ax,ax
		ja	..@j19606
		cmp	dx,9
		jbe	..@j19592
..@j19606:
		test	ax,ax
		jne	..@j19607
		cmp	dx,13
		je	..@j19587
..@j19607:
		test	ax,ax
		jne	..@j19608
		cmp	dx,15
		je	..@j19594
..@j19608:
		test	ax,ax
		jne	..@j19609
		cmp	dx,16
		je	..@j19593
..@j19609:
		test	ax,ax
		jne	..@j19610
		cmp	dx,17
		je	..@j19596
..@j19610:
		test	ax,ax
		jne	..@j19611
		cmp	dx,18
		je	..@j19597
..@j19611:
		test	ax,ax
		jne	..@j19612
		cmp	dx,19
		je	..@j19590
..@j19612:
		test	ax,ax
		jne	..@j19613
		cmp	dx,20
		je	..@j19597
..@j19613:
		test	ax,ax
		jne	..@j19614
		cmp	dx,21
		je	..@j19599
..@j19614:
		test	ax,ax
		jne	..@j19615
		cmp	dx,22
		je	..@j19591
..@j19615:
		jmp	..@j19586
..@j19587:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-34]
		push	ax
		call	SYSTEM_$$_UNASSIGNED$$VARIANT
		lea	ax,[bp-34]
		push	ax
		call	fpc_variant_copy
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_READVALUE$$TVALUETYPE
		jmp	..@j19585
..@j19588:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-34]
		push	ax
		call	SYSTEM_$$_NULL$$VARIANT
		lea	ax,[bp-34]
		push	ax
		call	fpc_variant_copy
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_READVALUE$$TVALUETYPE
		jmp	..@j19585
..@j19589:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-34]
		push	ax
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_READINTEGER$$LONGINT
		push	dx
		push	ax
		call	SYSTEM_$$_assign$LONGINT$$VARIANT
		lea	ax,[bp-34]
		push	ax
		call	fpc_variant_copy
		jmp	..@j19585
..@j19590:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-34]
		push	ax
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_READINT64$$INT64
		push	ax
		push	bx
		push	cx
		push	dx
		call	SYSTEM_$$_assign$INT64$$VARIANT
		lea	ax,[bp-34]
		push	ax
		call	fpc_variant_copy
		jmp	..@j19585
..@j19591:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-34]
		push	ax
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_READINT64$$INT64
		push	ax
		push	bx
		push	cx
		push	dx
		call	SYSTEM_$$_assign$QWORD$$VARIANT
		lea	ax,[bp-34]
		push	ax
		call	fpc_variant_copy
		jmp	..@j19585
..@j19592:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-34]
		push	ax
		cmp	word [bp-4],8
		mov	al,0
		je	..@j19670
		inc	ax
..@j19670:
		push	ax
		call	SYSTEM_$$_assign$BOOLEAN$$VARIANT
		lea	ax,[bp-34]
		push	ax
		call	fpc_variant_copy
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_READVALUE$$TVALUETYPE
		jmp	..@j19585
..@j19593:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-34]
		push	ax
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_READCURRENCY$$CURRENCY
		sub	sp,8
		mov	bx,sp
		wait fistp	qword [bx]
		DB	09bh
		call	SYSTEM_$$_assign$CURRENCY$$VARIANT
		lea	ax,[bp-34]
		push	ax
		call	fpc_variant_copy
		jmp	..@j19585
..@j19594:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-34]
		push	ax
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_READSINGLE$$SINGLE
		sub	sp,4
		mov	bx,sp
		wait fstp	dword [bx]
		DB	09bh
		call	SYSTEM_$$_assign$SINGLE$$VARIANT
		lea	ax,[bp-34]
		push	ax
		call	fpc_variant_copy
		jmp	..@j19585
..@j19595:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-34]
		push	ax
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_READFLOAT$$EXTENDED
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	SYSTEM_$$_assign$EXTENDED$$VARIANT
		lea	ax,[bp-34]
		push	ax
		call	fpc_variant_copy
		jmp	..@j19585
..@j19596:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-34]
		push	ax
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_READDATE$$TDATETIME
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		call	SYSTEM_$$_assign$TDATETIME$$VARIANT
		lea	ax,[bp-34]
		push	ax
		call	fpc_variant_copy
		jmp	..@j19585
..@j19597:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-34]
		push	ax
		push	word [bp+6]
		lea	ax,[bp-36]
		push	ax
		call	CLASSES$_$TREADER_$__$$_READWIDESTRING$$WIDESTRING
		push	word [bp-36]
		call	SYSTEM_$$_assign$WIDESTRING$$VARIANT
		lea	ax,[bp-34]
		push	ax
		call	fpc_variant_copy
		jmp	..@j19585
..@j19598:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-34]
		push	ax
		push	word [bp+6]
		lea	ax,[bp-38]
		push	ax
		call	CLASSES$_$TREADER_$__$$_READSTRING$$ANSISTRING
		push	word [bp-38]
		call	SYSTEM_$$_assign$ANSISTRING$$VARIANT
		lea	ax,[bp-34]
		push	ax
		call	fpc_variant_copy
		jmp	..@j19585
..@j19599:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-34]
		push	ax
		push	word [bp+6]
		lea	ax,[bp-36]
		push	ax
		call	CLASSES$_$TREADER_$__$$_READUNICODESTRING$$UNICODESTRING
		push	word [bp-36]
		call	SYSTEM_$$_assign$WIDESTRING$$VARIANT
		lea	ax,[bp-34]
		push	ax
		call	fpc_variant_copy
		jmp	..@j19585
..@j19586:
..@j19749:
		mov	ax,word VMT_$CLASSES_$$_EREADERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SUNSUPPORTEDPROPERTYVARIANTTYPE+2]
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	word [bp-42],ax
		mov	word [bp-40],dx
		mov	word [bp-44],0
		lea	ax,[bp-44]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j19749
		push	ax
		push	bp
		call	fpc_raiseexception
..@j19585:
..@j19558:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-38]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-36]
		push	ax
		call	fpc_unicodestr_decr_ref
		lea	ax,[bp-34]
		push	ax
		call	fpc_variant_clear
		pop	ax
		test	ax,ax
		je	..@j19559
		call	FPC_RERAISE
..@j19559:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_variant_clear
EXTERN	fpc_unicodestr_decr_ref
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SUNSUPPORTEDPROPERTYVARIANTTYPE
EXTERN	CLASSES$_$TREADER_$__$$_READUNICODESTRING$$UNICODESTRING
EXTERN	SYSTEM_$$_assign$ANSISTRING$$VARIANT
EXTERN	CLASSES$_$TREADER_$__$$_READSTRING$$ANSISTRING
EXTERN	SYSTEM_$$_assign$WIDESTRING$$VARIANT
EXTERN	CLASSES$_$TREADER_$__$$_READWIDESTRING$$WIDESTRING
EXTERN	SYSTEM_$$_assign$TDATETIME$$VARIANT
EXTERN	CLASSES$_$TREADER_$__$$_READDATE$$TDATETIME
EXTERN	SYSTEM_$$_assign$EXTENDED$$VARIANT
EXTERN	CLASSES$_$TREADER_$__$$_READFLOAT$$EXTENDED
EXTERN	SYSTEM_$$_assign$SINGLE$$VARIANT
EXTERN	CLASSES$_$TREADER_$__$$_READSINGLE$$SINGLE
EXTERN	SYSTEM_$$_assign$CURRENCY$$VARIANT
EXTERN	CLASSES$_$TREADER_$__$$_READCURRENCY$$CURRENCY
EXTERN	SYSTEM_$$_assign$BOOLEAN$$VARIANT
EXTERN	SYSTEM_$$_assign$QWORD$$VARIANT
EXTERN	SYSTEM_$$_assign$INT64$$VARIANT
EXTERN	CLASSES$_$TREADER_$__$$_READINT64$$INT64
EXTERN	SYSTEM_$$_assign$LONGINT$$VARIANT
EXTERN	CLASSES$_$TREADER_$__$$_READINTEGER$$LONGINT
EXTERN	SYSTEM_$$_NULL$$VARIANT
EXTERN	CLASSES$_$TREADER_$__$$_READVALUE$$TVALUETYPE
EXTERN	fpc_variant_copy
EXTERN	SYSTEM_$$_UNASSIGNED$$VARIANT
EXTERN	CLASSES$_$TREADER_$__$$_NEXTVALUE$$TVALUETYPE
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SERRNOVARIANTSUPPORT
EXTERN	VMT_$CLASSES_$$_EREADERROR
EXTERN	TC_$SYSTEM_$$_VARCLEARPROC
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_variant_init
