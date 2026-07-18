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
	GLOBAL DOORKIT86_$$_FOSSILSTATUS$WORD$$WORD
DOORKIT86_$$_FOSSILSTATUS$WORD$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	byte [bp-21],3
		mov	ax,word [bp+4]
		mov	word [bp-16],ax
		mov	ax,20
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_INTR
		mov	ax,word [bp-22]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_INTR
