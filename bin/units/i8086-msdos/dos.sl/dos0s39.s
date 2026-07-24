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
	GLOBAL DOS_$$_FINDNEXT$SEARCHREC
DOS_$$_FINDNEXT$SEARCHREC:
		push	bp
		mov	bp,sp
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j1503
		push	word [U_$DOS_$$_DOSERROR+2]
		push	word [U_$DOS_$$_DOSERROR]
		call	ax
		mov	bx,ax
		jmp	..@j1504
..@j1503:
		mov	bx,word U_$DOS_$$_DOSERROR+2
..@j1504:
		mov	word [bx],0
		cmp	byte [U_$SYSTEM_$$_LFNSUPPORT],0
		jne	..@j1505
		jmp	..@j1506
..@j1505:
		mov	ax,word [bp+4]
		push	ax
		call	DOS_$$_LFNFINDNEXT$SEARCHREC
		jmp	..@j1509
..@j1506:
		mov	ax,word [bp+4]
		push	ax
		call	DOS_$$_DOSFINDNEXT$SEARCHREC
..@j1509:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	DOS_$$_DOSFINDNEXT$SEARCHREC
EXTERN	DOS_$$_LFNFINDNEXT$SEARCHREC
EXTERN	U_$SYSTEM_$$_LFNSUPPORT
EXTERN	U_$DOS_$$_DOSERROR
EXTERN	FPC_THREADVAR_RELOCATE
