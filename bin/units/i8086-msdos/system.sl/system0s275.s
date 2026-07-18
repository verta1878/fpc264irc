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
	GLOBAL SYSTEM_$$_BINSTR$QWORD$BYTE$$SHORTSTRING
SYSTEM_$$_BINSTR$QWORD$BYTE$$SHORTSTRING:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+14]
		push	ax
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_BINSTR$INT64$BYTE$$SHORTSTRING
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	SYSTEM_$$_BINSTR$INT64$BYTE$$SHORTSTRING
