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
	GLOBAL DOS_$$_LFNSEARCHREC2DOS$LFNSEARCHREC$LONGINT$SEARCHREC$BOOLEAN
DOS_$$_LFNSEARCHREC2DOS$LFNSEARCHREC$LONGINT$SEARCHREC$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+6]
		push	ax
		mov	ax,286
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j1288
		push	word [U_$DOS_$$_DOSERROR+2]
		push	word [U_$DOS_$$_DOSERROR]
		call	ax
		mov	bx,ax
		jmp	..@j1289
..@j1288:
		mov	bx,word U_$DOS_$$_DOSERROR+2
..@j1289:
		cmp	word [bx],0
		je	..@j1286
		jmp	..@j1287
..@j1286:
		mov	bx,word [bp+12]
		lea	ax,[bx+44]
		push	ax
		call	FPC_PCHAR_LENGTH
		mov	word [bp-2],ax
		jmp	..@j1294
..@j1287:
		mov	word [bp-2],0
..@j1294:
		mov	bx,word [bp+6]
		mov	al,byte [bp-2]
		mov	byte [bx+30],al
		mov	bx,word [bp+12]
		lea	ax,[bx+44]
		push	ax
		mov	bx,word [bp+6]
		lea	ax,[bx+31]
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+6]
		mov	si,word [bp+12]
		mov	ax,word [si+20]
		mov	word [bx+22],ax
		mov	ax,word [si+22]
		mov	word [bx+24],ax
		mov	bx,word [bp+6]
		mov	si,word [bp+12]
		mov	ax,word [si+32]
		mov	word [bx+26],ax
		mov	ax,word [si+34]
		mov	word [bx+28],ax
		mov	bx,word [bp+12]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		and	ax,255
		mov	dx,0
		mov	bx,word [bp+6]
		mov	byte [bx+21],al
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j1314
		push	word [U_$DOS_$$_DOSERROR+2]
		push	word [U_$DOS_$$_DOSERROR]
		call	ax
		mov	bx,ax
		jmp	..@j1315
..@j1314:
		mov	bx,word U_$DOS_$$_DOSERROR+2
..@j1315:
		cmp	word [bx],0
		jne	..@j1313
		jmp	..@j1312
..@j1313:
		cmp	byte [bp+4],0
		jne	..@j1311
		jmp	..@j1312
..@j1311:
		mov	word [bp+8],-1
		mov	word [bp+10],-1
..@j1312:
		lea	ax,[bp+8]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		mov	ax,4
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	FPC_PCHAR_LENGTH
EXTERN	U_$DOS_$$_DOSERROR
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
