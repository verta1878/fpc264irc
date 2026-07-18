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
	GLOBAL DOS_$$_SETFATTR$formal$WORD
DOS_$$_SETFATTR$formal$WORD:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	word [bp-4],0
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
		jne	..@j1812
		mov	ax,word [bp+4]
		and	ax,8
		test	ax,ax
		jne	..@j1814
		jmp	..@j1815
..@j1814:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j1818
		push	word [U_$DOS_$$_DOSERROR+2]
		push	word [U_$DOS_$$_DOSERROR]
		call	ax
		mov	bx,ax
		jmp	..@j1819
..@j1818:
		mov	bx,word U_$DOS_$$_DOSERROR+2
..@j1819:
		mov	word [bx],5
		jmp	..@j1812
..@j1815:
		lea	ax,[bp-4]
		push	ax
		mov	bx,word [bp+6]
		lea	ax,[bx+56]
		push	ax
		mov	ax,255
		push	ax
		call	SYSTEM_$$_TOSINGLEBYTEFILESYSTEMENCODEDFILENAME$array_of_WIDECHAR$$RAWBYTESTRING
		mov	ax,word [bp-4]
		test	ax,ax
		jne	..@j1828
		mov	ax,word FPC_EMPTYCHAR
..@j1828:
		mov	word [bp-2],ax
		lea	ax,[bp-2]
		mov	word [U_$DOS_$$_DOSREGS+6],ax
		mov	ax,ss
		mov	word [U_$DOS_$$_DOSREGS+14],ax
		cmp	byte [U_$SYSTEM_$$_LFNSUPPORT],0
		jne	..@j1833
		jmp	..@j1834
..@j1833:
		mov	word [U_$DOS_$$_DOSREGS],28995
		mov	word [U_$DOS_$$_DOSREGS+2],1
		jmp	..@j1839
..@j1834:
		mov	word [U_$DOS_$$_DOSREGS],17153
..@j1839:
		mov	ax,word [bp+4]
		mov	word [U_$DOS_$$_DOSREGS+4],ax
		mov	ax,word U_$DOS_$$_DOSREGS
		push	ax
		call	FPC_MSDOS
		call	DOS_$$_LOADDOSERROR
..@j1812:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j1813
		call	FPC_RERAISE
..@j1813:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	DOS_$$_LOADDOSERROR
EXTERN	FPC_MSDOS
EXTERN	U_$SYSTEM_$$_LFNSUPPORT
EXTERN	U_$DOS_$$_DOSREGS
EXTERN	FPC_EMPTYCHAR
EXTERN	SYSTEM_$$_TOSINGLEBYTEFILESYSTEMENCODEDFILENAME$array_of_WIDECHAR$$RAWBYTESTRING
EXTERN	U_$DOS_$$_DOSERROR
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
