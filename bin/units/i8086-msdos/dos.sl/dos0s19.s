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
	GLOBAL DOS_$$_EXEC_ANSISTRING$SHORTSTRING$ANSISTRING
DOS_$$_EXEC_ANSISTRING$SHORTSTRING$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,594
		mov	dx,word [bp+6]
		lea	ax,[bp-570]
		push	ax
		mov	ax,255
		push	ax
		push	dx
		call	fpc_shortstr_to_shortstr
		push	word [bp+4]
		call	fpc_ansistr_incr_ref
		mov	word [bp-24],0
		mov	word [bp-594],0
		mov	ax,1
		push	ax
		lea	ax,[bp-582]
		push	ax
		lea	ax,[bp-576]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j782
		lea	ax,[bp-24]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
		mov	bx,word [bp-24]
		test	bx,bx
		je	..@j790
		mov	bx,word [bx-2]
..@j790:
		cmp	bx,126
		jg	..@j788
		jmp	..@j789
..@j788:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j795
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j796
..@j795:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j796:
		push	ax
		mov	ax,word _$DOS$_Ld8
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j803
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j804
..@j803:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j804:
		push	ax
		mov	ax,126
		push	ax
		call	fpc_write_text_sint
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j811
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j812
..@j811:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j812:
		push	ax
		mov	ax,word _$DOS$_Ld9
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j817
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j818
..@j817:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j818:
		push	ax
		call	fpc_writeln_end
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j823
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j824
..@j823:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j824:
		push	ax
		mov	ax,word _$DOS$_Ld10
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j831
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j832
..@j831:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j832:
		push	ax
		push	word [bp-24]
		call	fpc_write_text_ansistr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j839
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j840
..@j839:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j840:
		push	ax
		mov	ax,34
		push	ax
		call	fpc_write_text_char
		call	FPC_IOCHECK
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j845
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j846
..@j845:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j846:
		push	ax
		call	fpc_writeln_end
		call	FPC_IOCHECK
		lea	ax,[bp-24]
		push	ax
		mov	ax,126
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j857
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j858
..@j857:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j858:
		push	ax
		mov	ax,word _$DOS$_Ld11
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j865
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j866
..@j865:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j866:
		push	ax
		push	word [bp-24]
		call	fpc_write_text_ansistr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j873
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j874
..@j873:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j874:
		push	ax
		mov	ax,34
		push	ax
		call	fpc_write_text_char
		call	FPC_IOCHECK
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j879
		push	word [U_$SYSTEM_$$_STDERR+2]
		push	word [U_$SYSTEM_$$_STDERR]
		call	ax
		jmp	..@j880
..@j879:
		mov	ax,word U_$SYSTEM_$$_STDERR+2
..@j880:
		push	ax
		call	fpc_writeln_end
		call	FPC_IOCHECK
..@j789:
		lea	ax,[bp-280]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-570]
		push	ax
		call	fpc_shortstr_to_shortstr
		lea	ax,[bp-280]
		push	ax
		call	DOS_$$_DODIRSEPARATORS$SHORTSTRING
		cmp	byte [U_$SYSTEM_$$_LFNSUPPORT],0
		jne	..@j889
		jmp	..@j890
..@j889:
		lea	ax,[bp-280]
		push	ax
		call	DOS_$$_GETSHORTNAME$SHORTSTRING$$BOOLEAN
..@j890:
		mov	word [bp-282],1
		jmp	..@j896
	ALIGN 2
..@j895:
		inc	word [bp-282]
..@j896:
		mov	bx,word [bp-24]
		test	bx,bx
		je	..@j899
		mov	bx,word [bx-2]
..@j899:
		cmp	bx,word [bp-282]
		jg	..@j898
		jmp	..@j897
..@j898:
		mov	bx,word [bp-24]
		mov	si,word [bp-282]
		mov	al,byte [bx+si-1]
		mov	ah,0
		cmp	ax,9
		je	..@j900
		cmp	ax,32
		je	..@j900
..@j900:
		je	..@j895
		jmp	..@j897
..@j897:
		mov	word [U_$DOS_$$_DOSREGS],10497
		mov	ax,word [bp-24]
		mov	ax,word [bp-282]
		mov	ax,ds
		mov	word [U_$DOS_$$_DOSREGS+14],ax
		mov	bx,word [bp-24]
		mov	si,word [bp-282]
		lea	ax,[bx+si-1]
		mov	word [U_$DOS_$$_DOSREGS+10],ax
		mov	ax,ss
		mov	word [U_$DOS_$$_DOSREGS+16],ax
		lea	ax,[bp-298]
		mov	word [U_$DOS_$$_DOSREGS+12],ax
		mov	ax,word U_$DOS_$$_DOSREGS
		push	ax
		call	FPC_MSDOS
		mov	word [U_$DOS_$$_DOSREGS],10497
		mov	ax,word [bp-24]
		mov	ax,word [bp-282]
		mov	ax,ds
		mov	word [U_$DOS_$$_DOSREGS+14],ax
		mov	bx,word [bp-24]
		mov	si,word [bp-282]
		lea	ax,[bx+si-1]
		mov	word [U_$DOS_$$_DOSREGS+10],ax
		mov	ax,ss
		mov	word [U_$DOS_$$_DOSREGS+16],ax
		lea	ax,[bp-314]
		mov	word [U_$DOS_$$_DOSREGS+12],ax
		mov	ax,word U_$DOS_$$_DOSREGS
		push	ax
		call	FPC_MSDOS
		lea	ax,[bp-24]
		push	ax
		lea	ax,[bp-594]
		push	ax
		mov	bx,word [bp-24]
		test	bx,bx
		je	..@j933
		mov	bx,word [bx-2]
..@j933:
		mov	al,bl
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		mov	ax,word [bp-594]
		mov	word [bp-592],ax
		mov	ax,word [bp-24]
		mov	word [bp-590],ax
		mov	ax,word _$DOS$_Ld12
		mov	word [bp-588],ax
		mov	ax,word _$DOS$_Ld13
		mov	word [bp-586],ax
		lea	ax,[bp-592]
		push	ax
		mov	ax,3
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		mov	word [bp-22],0
		mov	ax,word [bp-24]
		mov	ax,ds
		mov	word [bp-18],ax
		mov	ax,word [bp-24]
		mov	word [bp-20],ax
		mov	ax,ss
		mov	word [bp-14],ax
		lea	ax,[bp-298]
		mov	word [bp-16],ax
		mov	ax,ss
		mov	word [bp-10],ax
		lea	ax,[bp-314]
		mov	word [bp-12],ax
		lea	ax,[bp-280]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-280]
		push	ax
		mov	ax,word _$DOS$_Ld14
		push	ax
		call	fpc_shortstr_concat
		lea	ax,[bp-279]
		mov	word [U_$DOS_$$_DOSREGS+6],ax
		mov	ax,ss
		mov	word [U_$DOS_$$_DOSREGS+14],ax
		lea	ax,[bp-22]
		mov	word [U_$DOS_$$_DOSREGS+2],ax
		mov	ax,ss
		mov	word [U_$DOS_$$_DOSREGS+16],ax
		mov	word [U_$DOS_$$_DOSREGS],19200
		mov	ax,word U_$DOS_$$_DOSREGS
		push	ax
		call	FPC_MSDOS
		call	DOS_$$_LOADDOSERROR
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j976
		push	word [U_$DOS_$$_DOSERROR+2]
		push	word [U_$DOS_$$_DOSERROR]
		call	ax
		mov	bx,ax
		jmp	..@j977
..@j976:
		mov	bx,word U_$DOS_$$_DOSERROR+2
..@j977:
		cmp	word [bx],0
		je	..@j974
		jmp	..@j975
..@j974:
		mov	word [U_$DOS_$$_DOSREGS],19712
		mov	ax,word U_$DOS_$$_DOSREGS
		push	ax
		call	FPC_MSDOS
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j984
		push	word [U_$DOS_$$_LASTDOSEXITCODE+2]
		push	word [U_$DOS_$$_LASTDOSEXITCODE]
		call	ax
		mov	bx,ax
		jmp	..@j985
..@j984:
		mov	bx,word U_$DOS_$$_LASTDOSEXITCODE+2
..@j985:
		mov	ax,0
		mov	dl,byte [U_$DOS_$$_DOSREGS]
		mov	dh,0
		mov	word [bx],dx
		mov	word [bx+2],ax
		jmp	..@j986
..@j975:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j989
		push	word [U_$DOS_$$_LASTDOSEXITCODE+2]
		push	word [U_$DOS_$$_LASTDOSEXITCODE]
		call	ax
		mov	bx,ax
		jmp	..@j990
..@j989:
		mov	bx,word U_$DOS_$$_LASTDOSEXITCODE+2
..@j990:
		mov	word [bx],0
		mov	word [bx+2],0
..@j986:
..@j782:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-594]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-24]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp+4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j783
		call	FPC_RERAISE
..@j783:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	U_$DOS_$$_LASTDOSEXITCODE
EXTERN	U_$DOS_$$_DOSERROR
EXTERN	DOS_$$_LOADDOSERROR
EXTERN	fpc_shortstr_concat
EXTERN	_$DOS$_Ld14
EXTERN	fpc_ansistr_concat_multi
EXTERN	_$DOS$_Ld13
EXTERN	_$DOS$_Ld12
EXTERN	fpc_char_to_ansistr
EXTERN	FPC_MSDOS
EXTERN	U_$DOS_$$_DOSREGS
EXTERN	DOS_$$_GETSHORTNAME$SHORTSTRING$$BOOLEAN
EXTERN	U_$SYSTEM_$$_LFNSUPPORT
EXTERN	DOS_$$_DODIRSEPARATORS$SHORTSTRING
EXTERN	_$DOS$_Ld11
EXTERN	fpc_ansistr_setlength
EXTERN	fpc_write_text_char
EXTERN	fpc_write_text_ansistr
EXTERN	_$DOS$_Ld10
EXTERN	fpc_writeln_end
EXTERN	_$DOS$_Ld9
EXTERN	fpc_write_text_sint
EXTERN	FPC_IOCHECK
EXTERN	fpc_write_text_shortstr
EXTERN	_$DOS$_Ld8
EXTERN	U_$SYSTEM_$$_STDERR
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_ansistr_incr_ref
EXTERN	fpc_shortstr_to_shortstr
