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
	GLOBAL SYSTEM_$$_ASSIGN$TYPEDFILE$RAWBYTESTRING
SYSTEM_$$_ASSIGN$TYPEDFILE$RAWBYTESTRING:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_ASSIGN$file$RAWBYTESTRING
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_ASSIGN$file$RAWBYTESTRING
