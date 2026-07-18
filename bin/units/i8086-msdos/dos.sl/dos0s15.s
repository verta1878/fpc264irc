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
	GLOBAL DOS_$$_SETDATE$WORD$WORD$WORD
DOS_$$_SETDATE$WORD$WORD$WORD:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+8]
		mov	word [U_$DOS_$$_DOSREGS+4],ax
		mov	al,byte [bp+6]
		mov	byte [U_$DOS_$$_DOSREGS+7],al
		mov	al,byte [bp+4]
		mov	byte [U_$DOS_$$_DOSREGS+6],al
		mov	byte [U_$DOS_$$_DOSREGS+1],43
		mov	ax,word U_$DOS_$$_DOSREGS
		push	ax
		call	FPC_MSDOS
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_MSDOS
EXTERN	U_$DOS_$$_DOSREGS
