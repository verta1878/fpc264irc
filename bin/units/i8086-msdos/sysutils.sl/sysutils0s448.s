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
	GLOBAL SYSUTILS_$$_RUNERRORTOEXCEPT$LONGINT$NEARPOINTER$POINTER
SYSUTILS_$$_RUNERRORTOEXCEPT$LONGINT$NEARPOINTER$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		test	dx,dx
		jne	..@j14647
		cmp	ax,1
		je	..@j14645
..@j14647:
		test	dx,dx
		jne	..@j14648
		cmp	ax,203
		je	..@j14645
..@j14648:
		test	dx,dx
		jne	..@j14649
		cmp	ax,204
		je	..@j14646
..@j14649:
		jmp	..@j14644
..@j14645:
		mov	ax,word [U_$SYSUTILS_$$_OUTOFMEMORY]
		mov	word [bp-2],ax
		jmp	..@j14643
..@j14646:
		mov	ax,word [U_$SYSUTILS_$$_INVALIDPOINTER]
		mov	word [bp-2],ax
		jmp	..@j14643
..@j14644:
		push	word [bp+10]
		push	word [bp+8]
		call	SYSUTILS_$$_FINDEXCEPTMAPENTRY$LONGINT$$PEXCEPTMAPENTRY
		mov	word [bp-6],ax
		cmp	word [bp-6],0
		jne	..@j14658
		jmp	..@j14659
..@j14658:
		mov	bx,word [bp-6]
		push	word [bx+1]
		mov	ax,1
		push	ax
		mov	bx,word [bp-6]
		push	word [bx+3]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATERES$PANSISTRING$$EXCEPTION
		mov	word [bp-2],ax
		jmp	..@j14668
..@j14659:
		mov	word [bp-4],0
		mov	dx,word [bp+8]
		mov	ax,word [bp+10]
		test	ax,ax
		jne	..@j14686
		cmp	dx,2
		je	..@j14673
..@j14686:
		test	ax,ax
		jne	..@j14687
		cmp	dx,3
		je	..@j14674
..@j14687:
		test	ax,ax
		jne	..@j14688
		cmp	dx,4
		je	..@j14675
..@j14688:
		test	ax,ax
		jne	..@j14689
		cmp	dx,5
		je	..@j14676
..@j14689:
		test	ax,ax
		jne	..@j14690
		cmp	dx,6
		je	..@j14677
..@j14690:
		test	ax,ax
		jne	..@j14691
		cmp	dx,15
		je	..@j14678
..@j14691:
		test	ax,ax
		jne	..@j14692
		cmp	dx,100
		je	..@j14679
..@j14692:
		test	ax,ax
		jne	..@j14693
		cmp	dx,101
		je	..@j14680
..@j14693:
		test	ax,ax
		jne	..@j14694
		cmp	dx,102
		je	..@j14681
..@j14694:
		test	ax,ax
		jne	..@j14695
		cmp	dx,103
		je	..@j14682
..@j14695:
		test	ax,ax
		jne	..@j14696
		cmp	dx,104
		je	..@j14683
..@j14696:
		test	ax,ax
		jne	..@j14697
		cmp	dx,105
		je	..@j14684
..@j14697:
		test	ax,ax
		jne	..@j14698
		cmp	dx,106
		je	..@j14685
..@j14698:
		jmp	..@j14672
..@j14673:
		mov	ax,word RESSTR_$SYSCONST_$$_SFILENOTFOUND+2
		mov	word [bp-4],ax
		jmp	..@j14671
..@j14674:
		mov	ax,word RESSTR_$SYSCONST_$$_SINVALIDFILENAME+2
		mov	word [bp-4],ax
		jmp	..@j14671
..@j14675:
		mov	ax,word RESSTR_$SYSCONST_$$_STOOMANYOPENFILES+2
		mov	word [bp-4],ax
		jmp	..@j14671
..@j14676:
		mov	ax,word RESSTR_$SYSCONST_$$_SACCESSDENIED+2
		mov	word [bp-4],ax
		jmp	..@j14671
..@j14677:
		mov	ax,word RESSTR_$SYSCONST_$$_SINVALIDFILEHANDLE+2
		mov	word [bp-4],ax
		jmp	..@j14671
..@j14678:
		mov	ax,word RESSTR_$SYSCONST_$$_SINVALIDDRIVE+2
		mov	word [bp-4],ax
		jmp	..@j14671
..@j14679:
		mov	ax,word RESSTR_$SYSCONST_$$_SENDOFFILE+2
		mov	word [bp-4],ax
		jmp	..@j14671
..@j14680:
		mov	ax,word RESSTR_$SYSCONST_$$_SDISKFULL+2
		mov	word [bp-4],ax
		jmp	..@j14671
..@j14681:
		mov	ax,word RESSTR_$SYSCONST_$$_SFILENOTASSIGNED+2
		mov	word [bp-4],ax
		jmp	..@j14671
..@j14682:
		mov	ax,word RESSTR_$SYSCONST_$$_SFILENOTOPEN+2
		mov	word [bp-4],ax
		jmp	..@j14671
..@j14683:
		mov	ax,word RESSTR_$SYSCONST_$$_SFILENOTOPENFORINPUT+2
		mov	word [bp-4],ax
		jmp	..@j14671
..@j14684:
		mov	ax,word RESSTR_$SYSCONST_$$_SFILENOTOPENFOROUTPUT+2
		mov	word [bp-4],ax
		jmp	..@j14671
..@j14685:
		mov	ax,word RESSTR_$SYSCONST_$$_SINVALIDINPUT+2
		mov	word [bp-4],ax
		jmp	..@j14671
..@j14672:
..@j14671:
		cmp	word [bp-4],0
		jne	..@j14725
		jmp	..@j14726
..@j14725:
		mov	ax,word VMT_$SYSUTILS_$$_EINOUTERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [bp-4]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATERES$PANSISTRING$$EXCEPTION
		mov	word [bp-2],ax
		jmp	..@j14735
..@j14726:
		mov	ax,word VMT_$SYSUTILS_$$_EINOUTERROR
		push	ax
		mov	ax,1
		push	ax
		mov	ax,word RESSTR_$SYSCONST_$$_SUNKNOWNRUNTIMEERROR+2
		push	ax
		mov	dx,word [bp+8]
		mov	ax,word [bp+10]
		mov	word [bp-10],dx
		mov	word [bp-8],ax
		mov	word [bp-12],0
		lea	ax,[bp-12]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATERESFMT$PANSISTRING$array_of_const$$EXCEPTION
		mov	word [bp-2],ax
..@j14735:
		mov	bx,word [bp-2]
		mov	ax,word [bp+8]
		mov	word [bx+8],ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j14752
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j14753
..@j14752:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j14753:
		mov	word [bx],0
..@j14668:
..@j14643:
		push	word [bp-2]
		push	word [bp+6]
		push	word [bp+4]
		call	fpc_raiseexception
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_raiseexception
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATERESFMT$PANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$SYSCONST_$$_SUNKNOWNRUNTIMEERROR
EXTERN	VMT_$SYSUTILS_$$_EINOUTERROR
EXTERN	RESSTR_$SYSCONST_$$_SINVALIDINPUT
EXTERN	RESSTR_$SYSCONST_$$_SFILENOTOPENFOROUTPUT
EXTERN	RESSTR_$SYSCONST_$$_SFILENOTOPENFORINPUT
EXTERN	RESSTR_$SYSCONST_$$_SFILENOTOPEN
EXTERN	RESSTR_$SYSCONST_$$_SFILENOTASSIGNED
EXTERN	RESSTR_$SYSCONST_$$_SDISKFULL
EXTERN	RESSTR_$SYSCONST_$$_SENDOFFILE
EXTERN	RESSTR_$SYSCONST_$$_SINVALIDDRIVE
EXTERN	RESSTR_$SYSCONST_$$_SINVALIDFILEHANDLE
EXTERN	RESSTR_$SYSCONST_$$_SACCESSDENIED
EXTERN	RESSTR_$SYSCONST_$$_STOOMANYOPENFILES
EXTERN	RESSTR_$SYSCONST_$$_SINVALIDFILENAME
EXTERN	RESSTR_$SYSCONST_$$_SFILENOTFOUND
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATERES$PANSISTRING$$EXCEPTION
EXTERN	SYSUTILS_$$_FINDEXCEPTMAPENTRY$LONGINT$$PEXCEPTMAPENTRY
EXTERN	U_$SYSUTILS_$$_INVALIDPOINTER
EXTERN	U_$SYSUTILS_$$_OUTOFMEMORY
