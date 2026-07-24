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
	GLOBAL DOS_$$_DOSVERSION$$WORD
DOS_$$_DOSVERSION$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	word [U_$DOS_$$_DOSREGS],12288
		mov	ax,word U_$DOS_$$_DOSREGS
		push	ax
		call	FPC_MSDOS
		mov	ax,word [U_$DOS_$$_DOSREGS]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
EXTERN	FPC_MSDOS
EXTERN	U_$DOS_$$_DOSREGS
