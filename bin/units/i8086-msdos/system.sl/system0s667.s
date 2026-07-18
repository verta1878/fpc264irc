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
	GLOBAL SYSTEM_$$_assign$QWORD$$VARIANT
SYSTEM_$$_assign$QWORD$$VARIANT:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+12]
		push	ax
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word [U_$SYSTEM_$$_VARIANTMANAGER+32]
		call	ax
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	U_$SYSTEM_$$_VARIANTMANAGER
