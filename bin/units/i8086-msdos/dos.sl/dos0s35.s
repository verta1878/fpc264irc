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
	GLOBAL DOS_$$_DOSSEARCHREC2SEARCHREC$SEARCHREC
DOS_$$_DOSSEARCHREC2SEARCHREC$SEARCHREC:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j1417
		push	word [U_$DOS_$$_DOSERROR+2]
		push	word [U_$DOS_$$_DOSERROR]
		call	ax
		mov	bx,ax
		jmp	..@j1418
..@j1417:
		mov	bx,word U_$DOS_$$_DOSERROR+2
..@j1418:
		cmp	word [bx],0
		je	..@j1415
		jmp	..@j1416
..@j1415:
		mov	bx,word [bp+4]
		lea	ax,[bx+30]
		push	ax
		call	FPC_PCHAR_LENGTH
		mov	word [bp-2],ax
		jmp	..@j1423
..@j1416:
		mov	word [bp-2],0
..@j1423:
		mov	bx,word [bp+4]
		lea	ax,[bx+30]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+31]
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+4]
		mov	al,byte [bp-2]
		mov	byte [bx+30],al
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	FPC_PCHAR_LENGTH
EXTERN	U_$DOS_$$_DOSERROR
EXTERN	FPC_THREADVAR_RELOCATE
