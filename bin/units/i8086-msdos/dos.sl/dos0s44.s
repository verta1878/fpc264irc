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
	GLOBAL DOS_$$_GETSHORTNAME$SHORTSTRING$$BOOLEAN
DOS_$$_GETSHORTNAME$SHORTSTRING$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,260
		mov	bx,word [bp+4]
		lea	ax,[bx+1]
		push	ax
		lea	ax,[bp-257]
		push	ax
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	byte [bp-260],al
		mov	byte [bp-259],0
		mov	si,word [bp-260]
		mov	byte [bp+si-257],0
		mov	word [U_$DOS_$$_DOSREGS],29024
		mov	word [U_$DOS_$$_DOSREGS+4],1
		mov	ax,ss
		mov	word [U_$DOS_$$_DOSREGS+14],ax
		lea	ax,[bp-257]
		mov	word [U_$DOS_$$_DOSREGS+10],ax
		mov	ax,ss
		mov	word [U_$DOS_$$_DOSREGS+16],ax
		lea	ax,[bp-257]
		mov	word [U_$DOS_$$_DOSREGS+12],ax
		mov	ax,word U_$DOS_$$_DOSREGS
		push	ax
		call	FPC_MSDOS
		call	DOS_$$_LOADDOSERROR
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j1688
		push	word [U_$DOS_$$_DOSERROR+2]
		push	word [U_$DOS_$$_DOSERROR]
		call	ax
		mov	bx,ax
		jmp	..@j1689
..@j1688:
		mov	bx,word U_$DOS_$$_DOSERROR+2
..@j1689:
		cmp	word [bx],0
		je	..@j1686
		jmp	..@j1687
..@j1686:
		lea	ax,[bp-257]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+1]
		push	ax
		lea	ax,[bp-257]
		push	ax
		call	FPC_PCHAR_LENGTH
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		lea	ax,[bp-257]
		push	ax
		call	FPC_PCHAR_LENGTH
		mov	bx,word [bp+4]
		mov	byte [bx],al
		mov	byte [bp-1],1
		jmp	..@j1704
..@j1687:
		mov	byte [bp-1],0
..@j1704:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_PCHAR_LENGTH
EXTERN	U_$DOS_$$_DOSERROR
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	DOS_$$_LOADDOSERROR
EXTERN	FPC_MSDOS
EXTERN	U_$DOS_$$_DOSREGS
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
