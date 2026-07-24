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
	GLOBAL SYSTEM_$$_BEGINTHREAD$TTHREADFUNC$POINTER$$WORD
SYSTEM_$$_BEGINTHREAD$TTHREADFUNC$POINTER$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,0
		push	ax
		mov	ax,16384
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		lea	ax,[bp-4]
		push	ax
		call	SYSTEM_$$_BEGINTHREAD$POINTER$WORD$TTHREADFUNC$POINTER$LONGWORD$WORD$$WORD
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_BEGINTHREAD$POINTER$WORD$TTHREADFUNC$POINTER$LONGWORD$WORD$$WORD
