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
	GLOBAL DOS_$$_FINDFIRST$SHORTSTRING$WORD$SEARCHREC
DOS_$$_FINDFIRST$SHORTSTRING$WORD$SEARCHREC:
		push	bp
		mov	bp,sp
		sub	sp,256
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j1478
		push	word [U_$DOS_$$_DOSERROR+2]
		push	word [U_$DOS_$$_DOSERROR]
		call	ax
		mov	bx,ax
		jmp	..@j1479
..@j1478:
		mov	bx,word U_$DOS_$$_DOSERROR+2
..@j1479:
		mov	word [bx],0
		lea	ax,[bp-256]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		call	STRINGS_$$_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
		cmp	byte [U_$SYSTEM_$$_LFNSUPPORT],0
		jne	..@j1484
		jmp	..@j1485
..@j1484:
		lea	ax,[bp-256]
		push	ax
		mov	dx,word [bp+6]
		mov	ax,0
		push	ax
		push	dx
		mov	ax,word [bp+4]
		push	ax
		call	DOS_$$_LFNFINDFIRST$PCHAR$LONGINT$SEARCHREC
		jmp	..@j1492
..@j1485:
		lea	ax,[bp-256]
		push	ax
		push	word [bp+6]
		mov	ax,word [bp+4]
		push	ax
		call	DOS_$$_DOSFINDFIRST$PCHAR$WORD$SEARCHREC
..@j1492:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	DOS_$$_DOSFINDFIRST$PCHAR$WORD$SEARCHREC
EXTERN	DOS_$$_LFNFINDFIRST$PCHAR$LONGINT$SEARCHREC
EXTERN	U_$SYSTEM_$$_LFNSUPPORT
EXTERN	STRINGS_$$_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
EXTERN	U_$DOS_$$_DOSERROR
EXTERN	FPC_THREADVAR_RELOCATE
