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
	GLOBAL DOS_$$_GETFATTR$formal$WORD
DOS_$$_GETFATTR$formal$WORD:
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
		jne	..@j1778
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
		jne	..@j1788
		mov	ax,word FPC_EMPTYCHAR
..@j1788:
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	word [U_$DOS_$$_DOSREGS+6],ax
		mov	ax,word [bp-2]
		mov	ax,ds
		mov	word [U_$DOS_$$_DOSREGS+14],ax
		cmp	byte [U_$SYSTEM_$$_LFNSUPPORT],0
		jne	..@j1793
		jmp	..@j1794
..@j1793:
		mov	word [U_$DOS_$$_DOSREGS],28995
		mov	word [U_$DOS_$$_DOSREGS+2],0
		jmp	..@j1799
..@j1794:
		mov	word [U_$DOS_$$_DOSREGS],17152
..@j1799:
		mov	ax,word U_$DOS_$$_DOSREGS
		push	ax
		call	FPC_MSDOS
		call	DOS_$$_LOADDOSERROR
		mov	bx,word [bp+4]
		mov	ax,word [U_$DOS_$$_DOSREGS+4]
		mov	word [bx],ax
..@j1778:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j1779
		call	FPC_RERAISE
..@j1779:
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
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
