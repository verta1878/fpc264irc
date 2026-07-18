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
	GLOBAL DOS_$$_GETDATE$WORD$WORD$WORD$WORD
DOS_$$_GETDATE$WORD$WORD$WORD$WORD:
		push	bp
		mov	bp,sp
		mov	word [U_$DOS_$$_DOSREGS],10752
		mov	ax,word U_$DOS_$$_DOSREGS
		push	ax
		call	FPC_MSDOS
		mov	al,byte [U_$DOS_$$_DOSREGS]
		mov	ah,0
		mov	bx,word [bp+4]
		mov	word [bx],ax
		mov	bx,word [bp+10]
		mov	ax,word [U_$DOS_$$_DOSREGS+4]
		mov	word [bx],ax
		mov	al,byte [U_$DOS_$$_DOSREGS+7]
		mov	ah,0
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	al,byte [U_$DOS_$$_DOSREGS+6]
		mov	ah,0
		mov	bx,word [bp+6]
		mov	word [bx],ax
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_MSDOS
EXTERN	U_$DOS_$$_DOSREGS
