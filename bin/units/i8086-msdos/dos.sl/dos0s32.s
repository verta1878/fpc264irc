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
	GLOBAL DOS_$$_LFNFINDFIRST$PCHAR$LONGINT$SEARCHREC
DOS_$$_LFNFINDFIRST$PCHAR$LONGINT$SEARCHREC:
		push	bp
		mov	bp,sp
		sub	sp,318
		push	word [bp+10]
		call	DOS_$$_DODIRSEPARATORS$PCHAR
		mov	word [U_$DOS_$$_DOSREGS+10],1
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		cmp	dx,0
		jne	..@j1331
		cmp	ax,8
		jne	..@j1331
		jmp	..@j1330
..@j1330:
		mov	word [U_$DOS_$$_DOSREGS+4],8
		jmp	..@j1334
..@j1331:
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		and	ax,-9
		and	ax,255
		mov	dx,0
		mov	word [U_$DOS_$$_DOSREGS+4],ax
..@j1334:
		mov	ax,word [bp+10]
		mov	word [U_$DOS_$$_DOSREGS+6],ax
		mov	ax,word [bp+10]
		mov	ax,ds
		mov	word [U_$DOS_$$_DOSREGS+14],ax
		lea	ax,[bp-318]
		mov	word [U_$DOS_$$_DOSREGS+12],ax
		mov	ax,ss
		mov	word [U_$DOS_$$_DOSREGS+16],ax
		mov	word [U_$DOS_$$_DOSREGS],29006
		mov	ax,word U_$DOS_$$_DOSREGS
		push	ax
		call	FPC_MSDOS
		call	DOS_$$_LOADDOSERROR
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j1351
		push	word [U_$DOS_$$_DOSERROR+2]
		push	word [U_$DOS_$$_DOSERROR]
		call	ax
		mov	bx,ax
		jmp	..@j1352
..@j1351:
		mov	bx,word U_$DOS_$$_DOSERROR+2
..@j1352:
		cmp	word [bx],2
		je	..@j1349
		jmp	..@j1350
..@j1349:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j1355
		push	word [U_$DOS_$$_DOSERROR+2]
		push	word [U_$DOS_$$_DOSERROR]
		call	ax
		mov	bx,ax
		jmp	..@j1356
..@j1355:
		mov	bx,word U_$DOS_$$_DOSERROR+2
..@j1356:
		mov	word [bx],18
..@j1350:
		lea	ax,[bp-318]
		push	ax
		mov	ax,word [U_$DOS_$$_DOSREGS]
		mov	dx,0
		push	dx
		push	ax
		mov	ax,word [bp+4]
		push	ax
		mov	ax,1
		push	ax
		call	DOS_$$_LFNSEARCHREC2DOS$LFNSEARCHREC$LONGINT$SEARCHREC$BOOLEAN
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	DOS_$$_LFNSEARCHREC2DOS$LFNSEARCHREC$LONGINT$SEARCHREC$BOOLEAN
EXTERN	U_$DOS_$$_DOSERROR
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	DOS_$$_LOADDOSERROR
EXTERN	FPC_MSDOS
EXTERN	U_$DOS_$$_DOSREGS
EXTERN	DOS_$$_DODIRSEPARATORS$PCHAR
