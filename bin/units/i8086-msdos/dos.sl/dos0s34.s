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
	GLOBAL DOS_$$_LFNFINDCLOSE$SEARCHREC
DOS_$$_LFNFINDCLOSE$SEARCHREC:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-4]
		push	ax
		mov	ax,4
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,-1
		jne	..@j1402
		cmp	dx,-1
		jne	..@j1402
		jmp	..@j1401
..@j1401:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j1405
		push	word [U_$DOS_$$_DOSERROR+2]
		push	word [U_$DOS_$$_DOSERROR]
		call	ax
		mov	bx,ax
		jmp	..@j1406
..@j1405:
		mov	bx,word U_$DOS_$$_DOSERROR+2
..@j1406:
		mov	word [bx],0
		jmp	..@j1393
..@j1402:
		mov	ax,word [bp-4]
		mov	word [U_$DOS_$$_DOSREGS+2],ax
		mov	word [U_$DOS_$$_DOSREGS],29089
		mov	ax,word U_$DOS_$$_DOSREGS
		push	ax
		call	FPC_MSDOS
		call	DOS_$$_LOADDOSERROR
..@j1393:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	DOS_$$_LOADDOSERROR
EXTERN	FPC_MSDOS
EXTERN	U_$DOS_$$_DOSREGS
EXTERN	U_$DOS_$$_DOSERROR
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
