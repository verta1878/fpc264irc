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
	GLOBAL DOS_$$_LOADDOSERROR
DOS_$$_LOADDOSERROR:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	ax,word [U_$DOS_$$_DOSREGS+18]
		and	ax,1
		test	ax,ax
		jne	..@j670
		jmp	..@j671
..@j670:
		mov	ax,word [U_$DOS_$$_DOSREGS]
		mov	word [bp-22],ax
		mov	word [bp-20],22784
		mov	word [bp-18],0
		mov	ax,33
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j684
		push	word [U_$DOS_$$_DOSERROR+2]
		push	word [U_$DOS_$$_DOSERROR]
		call	ax
		mov	bx,ax
		jmp	..@j685
..@j684:
		mov	bx,word U_$DOS_$$_DOSERROR+2
..@j685:
		mov	ax,word [bp-20]
		mov	word [bx],ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j691
		push	word [U_$DOS_$$_DOSERROR+2]
		push	word [U_$DOS_$$_DOSERROR]
		call	ax
		mov	bx,ax
		jmp	..@j692
..@j691:
		mov	bx,word U_$DOS_$$_DOSERROR+2
..@j692:
		mov	ax,word [bx]
		test	ax,ax
		jl	..@j687
		test	ax,ax
		je	..@j688
		sub	ax,19
		je	..@j689
		sub	ax,2
		je	..@j690
		jmp	..@j687
..@j688:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j695
		push	word [U_$DOS_$$_DOSERROR+2]
		push	word [U_$DOS_$$_DOSERROR]
		call	ax
		mov	bx,ax
		jmp	..@j696
..@j695:
		mov	bx,word U_$DOS_$$_DOSERROR+2
..@j696:
		mov	ax,word [bp-22]
		mov	word [bx],ax
		jmp	..@j686
..@j689:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j699
		push	word [U_$DOS_$$_DOSERROR+2]
		push	word [U_$DOS_$$_DOSERROR]
		call	ax
		mov	bx,ax
		jmp	..@j700
..@j699:
		mov	bx,word U_$DOS_$$_DOSERROR+2
..@j700:
		mov	word [bx],150
		jmp	..@j686
..@j690:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j703
		push	word [U_$DOS_$$_DOSERROR+2]
		push	word [U_$DOS_$$_DOSERROR]
		call	ax
		mov	bx,ax
		jmp	..@j704
..@j703:
		mov	bx,word U_$DOS_$$_DOSERROR+2
..@j704:
		mov	word [bx],152
		jmp	..@j686
..@j687:
..@j686:
		jmp	..@j705
..@j671:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j708
		push	word [U_$DOS_$$_DOSERROR+2]
		push	word [U_$DOS_$$_DOSERROR]
		call	ax
		mov	bx,ax
		jmp	..@j709
..@j708:
		mov	bx,word U_$DOS_$$_DOSERROR+2
..@j709:
		mov	word [bx],0
..@j705:
		mov	sp,bp
		pop	bp
		ret
EXTERN	U_$DOS_$$_DOSERROR
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	FPC_INTR
EXTERN	U_$DOS_$$_DOSREGS
