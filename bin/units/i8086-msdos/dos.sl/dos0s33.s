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
	GLOBAL DOS_$$_LFNFINDNEXT$SEARCHREC
DOS_$$_LFNFINDNEXT$SEARCHREC:
		push	bp
		mov	bp,sp
		sub	sp,322
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-4]
		push	ax
		mov	ax,4
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	word [U_$DOS_$$_DOSREGS+10],1
		lea	ax,[bp-322]
		mov	word [U_$DOS_$$_DOSREGS+12],ax
		mov	ax,ss
		mov	word [U_$DOS_$$_DOSREGS+16],ax
		mov	ax,word [bp-4]
		mov	word [U_$DOS_$$_DOSREGS+2],ax
		mov	word [U_$DOS_$$_DOSREGS],29007
		mov	ax,word U_$DOS_$$_DOSREGS
		push	ax
		call	FPC_MSDOS
		call	DOS_$$_LOADDOSERROR
		lea	ax,[bp-322]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		mov	ax,word [bp+4]
		push	ax
		mov	ax,0
		push	ax
		call	DOS_$$_LFNSEARCHREC2DOS$LFNSEARCHREC$LONGINT$SEARCHREC$BOOLEAN
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	DOS_$$_LFNSEARCHREC2DOS$LFNSEARCHREC$LONGINT$SEARCHREC$BOOLEAN
EXTERN	DOS_$$_LOADDOSERROR
EXTERN	FPC_MSDOS
EXTERN	U_$DOS_$$_DOSREGS
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
