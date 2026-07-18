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
	GLOBAL fpc_ansistr_concat
fpc_ansistr_concat:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	ax,word [bp+4]
		mov	word [bp-12],ax
		cmp	word [bp-12],-1
		je	..@j8659
		jmp	..@j8660
..@j8659:
		mov	ax,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		mov	word [bp-12],ax
..@j8660:
		mov	ax,word [bp-12]
		mov	dx,word [bp-12]
		sub	dx,1
		jbe	..@j8670
		jmp	..@j8669
..@j8670:
		mov	ax,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j8668
..@j8669:
..@j8668:
		mov	word [bp-12],ax
		cmp	word [bp+8],0
		je	..@j8673
		jmp	..@j8674
..@j8673:
		mov	ax,word [bp-12]
		mov	word [bp-8],ax
		jmp	..@j8677
..@j8674:
		push	word [bp+8]
		call	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
		mov	word [bp-8],ax
..@j8677:
		mov	ax,word [bp-8]
		mov	dx,word [bp-8]
		sub	dx,1
		jbe	..@j8689
		jmp	..@j8688
..@j8689:
		mov	ax,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j8687
..@j8688:
..@j8687:
		mov	word [bp-8],ax
		cmp	word [bp+6],0
		je	..@j8692
		jmp	..@j8693
..@j8692:
		mov	ax,word [bp-12]
		mov	word [bp-10],ax
		jmp	..@j8696
..@j8693:
		push	word [bp+6]
		call	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
		mov	word [bp-10],ax
..@j8696:
		mov	ax,word [bp-10]
		mov	dx,word [bp-10]
		sub	dx,1
		jbe	..@j8708
		jmp	..@j8707
..@j8708:
		mov	ax,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j8706
..@j8707:
..@j8706:
		mov	word [bp-10],ax
		cmp	word [bp+4],-1
		je	..@j8713
		jmp	..@j8712
..@j8713:
		mov	ax,word [bp-8]
		cmp	ax,word [bp-10]
		je	..@j8711
		jmp	..@j8712
..@j8711:
		mov	ax,word [bp-8]
		mov	word [bp-12],ax
..@j8712:
		mov	ax,word [bp-8]
		cmp	ax,word [bp-12]
		jne	..@j8716
		jmp	..@j8718
..@j8718:
		mov	ax,word [bp-10]
		cmp	ax,word [bp-12]
		jne	..@j8716
		jmp	..@j8717
..@j8716:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp-12]
		call	SYSTEM_$$_ANSISTR_CONCAT_COMPLEX$RAWBYTESTRING$RAWBYTESTRING$RAWBYTESTRING$WORD
		jmp	..@j8655
..@j8717:
		cmp	word [bp+8],0
		je	..@j8727
		jmp	..@j8728
..@j8727:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+6]
		call	fpc_ansistr_assign
		jmp	..@j8655
..@j8728:
		cmp	word [bp+6],0
		je	..@j8733
		jmp	..@j8734
..@j8733:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+8]
		call	fpc_ansistr_assign
		jmp	..@j8655
..@j8734:
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j8741
		mov	bx,word [bx-2]
..@j8741:
		mov	word [bp-2],bx
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j8744
		mov	bx,word [bx-2]
..@j8744:
		mov	word [bp-4],bx
		mov	bx,word [bp+10]
		mov	ax,word [bx]
		cmp	ax,word [bp+8]
		je	..@j8745
		jmp	..@j8746
..@j8745:
		mov	ax,word [bp+8]
		cmp	ax,word [bp+6]
		mov	al,0
		jne	..@j8749
		inc	ax
..@j8749:
		mov	byte [bp-5],al
		mov	ax,word [bp+10]
		push	ax
		mov	dx,word [bp-2]
		mov	ax,word [bp-4]
		add	ax,dx
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		cmp	byte [bp-5],0
		jne	..@j8756
		jmp	..@j8757
..@j8756:
		mov	bx,word [bp+10]
		mov	ax,word [bx]
		test	ax,ax
		jne	..@j8760
		mov	ax,word FPC_EMPTYCHAR
..@j8760:
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+10]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		call	SYSTEM_$$_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$SMALLINT$RAWBYTESTRING$SMALLINT$SMALLINT
		jmp	..@j8769
..@j8757:
		mov	ax,word [bp+6]
		test	ax,ax
		jne	..@j8772
		mov	ax,word FPC_EMPTYCHAR
..@j8772:
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+10]
		push	ax
		push	word [bp-2]
		mov	ax,word [bp-4]
		inc	ax
		push	ax
		call	SYSTEM_$$_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$SMALLINT$RAWBYTESTRING$SMALLINT$SMALLINT
..@j8769:
		jmp	..@j8781
..@j8746:
		mov	bx,word [bp+10]
		mov	ax,word [bx]
		cmp	ax,word [bp+6]
		je	..@j8782
		jmp	..@j8783
..@j8782:
		mov	ax,word [bp+10]
		push	ax
		mov	dx,word [bp-2]
		mov	ax,word [bp-4]
		add	ax,dx
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	bx,word [bp+10]
		mov	ax,word [bx]
		test	ax,ax
		jne	..@j8792
		mov	ax,word FPC_EMPTYCHAR
..@j8792:
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+10]
		push	ax
		push	word [bp-2]
		mov	ax,word [bp-4]
		inc	ax
		push	ax
		call	SYSTEM_$$_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$SMALLINT$RAWBYTESTRING$SMALLINT$SMALLINT
		mov	ax,word [bp+8]
		test	ax,ax
		jne	..@j8803
		mov	ax,word FPC_EMPTYCHAR
..@j8803:
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+10]
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$SMALLINT$RAWBYTESTRING$SMALLINT$SMALLINT
		jmp	..@j8812
..@j8783:
		mov	ax,word [bp+10]
		push	ax
		mov	dx,word [bp-2]
		mov	ax,word [bp-4]
		add	ax,dx
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	ax,word [bp+8]
		test	ax,ax
		jne	..@j8821
		mov	ax,word FPC_EMPTYCHAR
..@j8821:
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+10]
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$SMALLINT$RAWBYTESTRING$SMALLINT$SMALLINT
		mov	ax,word [bp+6]
		test	ax,ax
		jne	..@j8832
		mov	ax,word FPC_EMPTYCHAR
..@j8832:
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+10]
		push	ax
		push	word [bp-2]
		mov	ax,word [bp-4]
		inc	ax
		push	ax
		call	SYSTEM_$$_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$SMALLINT$RAWBYTESTRING$SMALLINT$SMALLINT
..@j8812:
..@j8781:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp-12]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
..@j8655:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
EXTERN	SYSTEM_$$_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$SMALLINT$RAWBYTESTRING$SMALLINT$SMALLINT
EXTERN	FPC_EMPTYCHAR
EXTERN	fpc_ansistr_setlength
EXTERN	fpc_ansistr_assign
EXTERN	SYSTEM_$$_ANSISTR_CONCAT_COMPLEX$RAWBYTESTRING$RAWBYTESTRING$RAWBYTESTRING$WORD
EXTERN	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
