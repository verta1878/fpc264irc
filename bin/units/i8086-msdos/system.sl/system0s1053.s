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
	GLOBAL fpc_textinit_iso
fpc_textinit_iso:
		push	bp
		mov	bp,sp
		sub	sp,256
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-256]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	SYSTEM_$$_PARAMSTR$LONGINT$$SHORTSTRING
		lea	ax,[bp-256]
		push	ax
		call	SYSTEM_$$_ASSIGN$TEXT$SHORTSTRING
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_ASSIGN$TEXT$SHORTSTRING
EXTERN	SYSTEM_$$_PARAMSTR$LONGINT$$SHORTSTRING
