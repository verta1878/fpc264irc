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
	GLOBAL DOS_$$_SETFTIME$formal$LONGINT
DOS_$$_SETFTIME$formal$LONGINT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	word [U_$DOS_$$_DOSREGS+2],ax
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	dx,0
		mov	word [U_$DOS_$$_DOSREGS+4],ax
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	ax,dx
		mov	dx,0
		mov	word [U_$DOS_$$_DOSREGS+6],ax
		mov	word [U_$DOS_$$_DOSREGS],22273
		mov	ax,word U_$DOS_$$_DOSREGS
		push	ax
		call	FPC_MSDOS
		call	DOS_$$_LOADDOSERROR
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	DOS_$$_LOADDOSERROR
EXTERN	FPC_MSDOS
EXTERN	U_$DOS_$$_DOSREGS
