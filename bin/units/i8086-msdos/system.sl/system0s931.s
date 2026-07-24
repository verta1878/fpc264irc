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
	GLOBAL SYSTEM_$$_BEGINTHREAD$POINTER$WORD$TTHREADFUNC$POINTER$LONGWORD$WORD$$WORD
SYSTEM_$$_BEGINTHREAD$POINTER$WORD$TTHREADFUNC$POINTER$LONGWORD$WORD$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+16]
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [U_$SYSTEM_$$_CURRENTTM+4]
		call	ax
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	14
EXTERN	U_$SYSTEM_$$_CURRENTTM
