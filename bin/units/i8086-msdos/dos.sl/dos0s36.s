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
	GLOBAL DOS_$$_DOSFINDFIRST$PCHAR$WORD$SEARCHREC
DOS_$$_DOSFINDFIRST$PCHAR$WORD$SEARCHREC:
		push	bp
		mov	bp,sp
		push	word [bp+8]
		call	DOS_$$_DODIRSEPARATORS$PCHAR
		mov	ax,word [bp+4]
		mov	word [U_$DOS_$$_DOSREGS+6],ax
		mov	ax,word [bp+4]
		mov	ax,ds
		mov	word [U_$DOS_$$_DOSREGS+14],ax
		mov	byte [U_$DOS_$$_DOSREGS+1],26
		mov	ax,word U_$DOS_$$_DOSREGS
		push	ax
		call	FPC_MSDOS
		mov	ax,word [bp+6]
		mov	word [U_$DOS_$$_DOSREGS+4],ax
		mov	ax,word [bp+8]
		mov	word [U_$DOS_$$_DOSREGS+6],ax
		mov	ax,word [bp+8]
		mov	ax,ds
		mov	word [U_$DOS_$$_DOSREGS+14],ax
		mov	byte [U_$DOS_$$_DOSREGS+1],78
		mov	ax,word U_$DOS_$$_DOSREGS
		push	ax
		call	FPC_MSDOS
		call	DOS_$$_LOADDOSERROR
		mov	ax,word [bp+4]
		push	ax
		call	DOS_$$_DOSSEARCHREC2SEARCHREC$SEARCHREC
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	DOS_$$_DOSSEARCHREC2SEARCHREC$SEARCHREC
EXTERN	DOS_$$_LOADDOSERROR
EXTERN	FPC_MSDOS
EXTERN	U_$DOS_$$_DOSREGS
EXTERN	DOS_$$_DODIRSEPARATORS$PCHAR
