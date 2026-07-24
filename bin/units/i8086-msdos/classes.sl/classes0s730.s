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
	GLOBAL CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_READPROPLIST$ANSISTRING_$$_PROCESSVALUE$crc18278EC0
CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_READPROPLIST$ANSISTRING_$$_PROCESSVALUE$crc18278EC0:
		push	bp
		mov	bp,sp
		sub	sp,40
		push	word [bp+4]
		call	fpc_ansistr_incr_ref
		mov	word [bp-2],0
		mov	word [bp-40],0
		mov	word [bp-32],0
		mov	word [bp-30],0
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
		jne	..@j15766
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		test	dx,dx
		jne	..@j15788
		cmp	ax,1
		je	..@j15770
..@j15788:
		test	dx,dx
		jne	..@j15789
		cmp	ax,2
		je	..@j15771
..@j15789:
		test	dx,dx
		jne	..@j15790
		cmp	ax,3
		je	..@j15772
..@j15790:
		test	dx,dx
		jne	..@j15791
		cmp	ax,4
		je	..@j15773
..@j15791:
		test	dx,dx
		jne	..@j15792
		cmp	ax,5
		je	..@j15775
..@j15792:
		test	dx,dx
		jne	..@j15793
		cmp	ax,6
		je	..@j15776
..@j15793:
		test	dx,dx
		jne	..@j15794
		cmp	ax,7
		je	..@j15777
..@j15794:
		test	dx,dx
		jne	..@j15795
		cmp	ax,8
		je	..@j15778
..@j15795:
		test	dx,dx
		jne	..@j15796
		cmp	ax,9
		je	..@j15779
..@j15796:
		test	dx,dx
		jne	..@j15797
		cmp	ax,10
		je	..@j15780
..@j15797:
		test	dx,dx
		jne	..@j15798
		cmp	ax,11
		je	..@j15781
..@j15798:
		test	dx,dx
		jne	..@j15799
		cmp	ax,12
		je	..@j15782
..@j15799:
		test	dx,dx
		jne	..@j15800
		cmp	ax,13
		je	..@j15785
..@j15800:
		test	dx,dx
		jne	..@j15801
		cmp	ax,14
		je	..@j15786
..@j15801:
		test	dx,dx
		jne	..@j15802
		cmp	ax,18
		je	..@j15783
..@j15802:
		test	dx,dx
		jne	..@j15803
		cmp	ax,19
		je	..@j15774
..@j15803:
		test	dx,dx
		jne	..@j15804
		cmp	ax,20
		je	..@j15787
..@j15804:
		test	dx,dx
		jne	..@j15805
		cmp	ax,21
		je	..@j15784
..@j15805:
		jmp	..@j15769
..@j15770:
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		mov	ax,word _$CLASSES$_Ld47
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTR$ANSISTRING
		mov	byte [bp-3],1
		jmp	..@j15813
	ALIGN 2
..@j15812:
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	word [bx+10]
		call	CLASSES$_$TSTREAM_$__$$_READBYTE$$BYTE
		mov	dx,0
		mov	ah,0
		mov	word [bp+6],ax
		mov	word [bp+8],dx
		cmp	word [bp+6],0
		je	..@j15819
		jmp	..@j15820
..@j15819:
		jmp	..@j15814
..@j15820:
		cmp	byte [bp-3],0
		jne	..@j15821
		jmp	..@j15822
..@j15821:
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		mov	ax,0
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTLN$ANSISTRING
		mov	byte [bp-3],0
..@j15822:
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		lea	ax,[bp-30]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-30]
		push	ax
		push	word [bp+4]
		mov	ax,word _$CLASSES$_Ld44
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		push	word [bp-30]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTR$ANSISTRING
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+8]
		push	word [bp+6]
		lea	ax,[bp-30]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-30]
		push	ax
		push	word [bp+4]
		mov	ax,word _$CLASSES$_Ld44
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		push	word [bp-30]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_READPROPLIST$ANSISTRING_$$_PROCESSVALUE$crc18278EC0
..@j15813:
		jmp	..@j15812
..@j15814:
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		lea	ax,[bp-30]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-30]
		push	ax
		push	word [bp+4]
		mov	ax,word _$CLASSES$_Ld48
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		push	word [bp-30]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTLN$ANSISTRING
		jmp	..@j15768
..@j15771:
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		lea	ax,[bp-30]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	word [bx+10]
		call	CLASSES$_$TSTREAM_$__$$_READBYTE$$BYTE
		cbw
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
		push	word [bp-30]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTLN$ANSISTRING
		jmp	..@j15768
..@j15772:
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		lea	ax,[bp-30]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READWORD$$WORD
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
		push	word [bp-30]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTLN$ANSISTRING
		jmp	..@j15768
..@j15773:
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		lea	ax,[bp-30]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READDWORD$$LONGWORD
		push	dx
		push	ax
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
		push	word [bp-30]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTLN$ANSISTRING
		jmp	..@j15768
..@j15774:
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		lea	ax,[bp-30]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READQWORD$$QWORD
		push	ax
		push	bx
		push	cx
		push	dx
		call	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
		push	word [bp-30]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTLN$ANSISTRING
		jmp	..@j15768
..@j15775:
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READEXTENDED$$EXTENDED
		wait fstp	tword [bp-14]
		DB	09bh
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		mov	ax,-32767
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,2
		push	ax
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-2]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_float
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		push	word [bp-2]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTLN$ANSISTRING
		jmp	..@j15768
..@j15776:
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		lea	ax,[bp-30]
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READSSTR$$ANSISTRING
		push	word [bp-30]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTRING$ANSISTRING
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		mov	ax,0
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTLN$ANSISTRING
		jmp	..@j15768
..@j15777:
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		lea	ax,[bp-30]
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READSSTR$$ANSISTRING
		push	word [bp-30]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTLN$ANSISTRING
		jmp	..@j15768
..@j15778:
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		mov	ax,word _$CLASSES$_Ld49
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTLN$ANSISTRING
		jmp	..@j15768
..@j15779:
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		mov	ax,word _$CLASSES$_Ld50
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTLN$ANSISTRING
		jmp	..@j15768
..@j15780:
		push	bp
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_READPROPLIST$ANSISTRING_PROCESSVALUE$TVALUETYPE$ANSISTRING_$$_PROCESSBINARY
		jmp	..@j15768
..@j15781:
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		mov	ax,word _$CLASSES$_Ld13
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTR$ANSISTRING
		mov	byte [bp-3],1
		jmp	..@j15964
	ALIGN 2
..@j15963:
		lea	ax,[bp-2]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		lea	ax,[bp-30]
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READSSTR$$ANSISTRING
		push	word [bp-30]
		call	fpc_ansistr_assign
		mov	bx,word [bp-2]
		test	bx,bx
		je	..@j15976
		mov	bx,word [bx-2]
..@j15976:
		test	bx,bx
		je	..@j15974
		jmp	..@j15975
..@j15974:
		jmp	..@j15965
..@j15975:
		cmp	byte [bp-3],0
		je	..@j15977
		jmp	..@j15978
..@j15977:
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		mov	ax,word _$CLASSES$_Ld51
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTR$ANSISTRING
..@j15978:
		mov	byte [bp-3],0
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		push	word [bp-2]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTR$ANSISTRING
..@j15964:
		jmp	..@j15963
..@j15965:
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		mov	ax,word _$CLASSES$_Ld14
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTLN$ANSISTRING
		jmp	..@j15768
..@j15782:
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		lea	ax,[bp-30]
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READLSTR$$ANSISTRING
		push	word [bp-30]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTRING$ANSISTRING
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		mov	ax,0
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTLN$ANSISTRING
		jmp	..@j15768
..@j15783:
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		lea	ax,[bp-32]
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READWSTR$$WIDESTRING
		push	word [bp-32]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTWSTRING$WIDESTRING
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		mov	ax,0
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTLN$ANSISTRING
		jmp	..@j15768
..@j15784:
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		lea	ax,[bp-32]
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READWSTR$$WIDESTRING
		push	word [bp-32]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTWSTRING$WIDESTRING
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		mov	ax,0
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTLN$ANSISTRING
		jmp	..@j15768
..@j15785:
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		mov	ax,word _$CLASSES$_Ld52
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTLN$ANSISTRING
		jmp	..@j15768
..@j15786:
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		mov	ax,word _$CLASSES$_Ld53
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTR$ANSISTRING
		jmp	..@j16038
	ALIGN 2
..@j16037:
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		push	word [bp+4]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTLN$ANSISTRING
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	word [bx+10]
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		mov	bx,word [bx+10]
		mov	bx,word [bx]
		mov	ax,word [bx+68]
		call	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		lea	ax,[bp-30]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-30]
		push	ax
		push	word [bp+4]
		mov	ax,word _$CLASSES$_Ld54
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		push	word [bp-30]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTR$ANSISTRING
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	word [bx+10]
		call	CLASSES$_$TSTREAM_$__$$_READBYTE$$BYTE
		mov	dx,0
		mov	ah,0
		mov	word [bp+6],ax
		mov	word [bp+8],dx
		cmp	word [bp+6],1
		jne	..@j16066
		jmp	..@j16067
..@j16066:
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		lea	ax,[bp-30]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-30]
		push	ax
		mov	ax,word _$CLASSES$_Ld13
		mov	word [bp-38],ax
		lea	ax,[bp-40]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		push	word [bp+8]
		push	word [bp+6]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READINT$TVALUETYPE$$INT64
		push	ax
		push	bx
		push	cx
		push	dx
		call	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
		mov	ax,word [bp-40]
		mov	word [bp-36],ax
		mov	ax,word _$CLASSES$_Ld14
		mov	word [bp-34],ax
		lea	ax,[bp-38]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		push	word [bp-30]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTR$ANSISTRING
..@j16067:
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		mov	ax,0
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTLN$ANSISTRING
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		lea	ax,[bp-30]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-30]
		push	ax
		push	word [bp+4]
		mov	ax,word _$CLASSES$_Ld55
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		push	word [bp-30]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READPROPLIST$ANSISTRING
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		lea	ax,[bp-30]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-30]
		push	ax
		push	word [bp+4]
		mov	ax,word _$CLASSES$_Ld56
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		push	word [bp-30]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTR$ANSISTRING
..@j16038:
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	word [bx+10]
		call	CLASSES$_$TSTREAM_$__$$_READBYTE$$BYTE
		test	al,al
		jne	..@j16037
		jmp	..@j16039
..@j16039:
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		mov	ax,word _$CLASSES$_Ld57
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTLN$ANSISTRING
		jmp	..@j15768
..@j15787:
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		lea	ax,[bp-30]
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READLSTR$$ANSISTRING
		push	word [bp-30]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTUTF8STR$ANSISTRING
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	bx
		mov	ax,0
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTLN$ANSISTRING
		jmp	..@j15768
..@j15769:
..@j16134:
		mov	ax,word VMT_$CLASSES_$$_EREADERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SERRINVALIDPROPERTYTYPE+2]
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		mov	word [bp-36],ax
		mov	word [bp-34],dx
		mov	word [bp-38],0
		lea	ax,[bp-38]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j16134
		push	ax
		push	bp
		call	fpc_raiseexception
..@j15768:
..@j15766:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-40]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-32]
		push	ax
		call	fpc_unicodestr_decr_ref
		lea	ax,[bp-30]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp+4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j15767
		call	FPC_RERAISE
..@j15767:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_RERAISE
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SERRINVALIDPROPERTYTYPE
EXTERN	VMT_$CLASSES_$$_EREADERROR
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTUTF8STR$ANSISTRING
EXTERN	_$CLASSES$_Ld57
EXTERN	_$CLASSES$_Ld56
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READPROPLIST$ANSISTRING
EXTERN	_$CLASSES$_Ld55
EXTERN	fpc_ansistr_concat_multi
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READINT$TVALUETYPE$$INT64
EXTERN	_$CLASSES$_Ld54
EXTERN	_$CLASSES$_Ld53
EXTERN	_$CLASSES$_Ld52
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTWSTRING$WIDESTRING
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READWSTR$$WIDESTRING
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READLSTR$$ANSISTRING
EXTERN	_$CLASSES$_Ld14
EXTERN	_$CLASSES$_Ld51
EXTERN	fpc_ansistr_assign
EXTERN	_$CLASSES$_Ld13
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_READPROPLIST$ANSISTRING_PROCESSVALUE$TVALUETYPE$ANSISTRING_$$_PROCESSBINARY
EXTERN	_$CLASSES$_Ld50
EXTERN	_$CLASSES$_Ld49
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTRING$ANSISTRING
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READSSTR$$ANSISTRING
EXTERN	fpc_ansistr_float
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READEXTENDED$$EXTENDED
EXTERN	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READQWORD$$QWORD
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READDWORD$$LONGWORD
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READWORD$$WORD
EXTERN	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
EXTERN	_$CLASSES$_Ld48
EXTERN	fpc_ansistr_concat
EXTERN	_$CLASSES$_Ld44
EXTERN	fpc_ansistr_decr_ref
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTLN$ANSISTRING
EXTERN	CLASSES$_$TSTREAM_$__$$_READBYTE$$BYTE
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTSTR$ANSISTRING
EXTERN	_$CLASSES$_Ld47
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_ansistr_incr_ref
