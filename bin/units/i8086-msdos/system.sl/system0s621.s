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
	GLOBAL SYSTEM$_$TINTERFACEDOBJECT_$__$$_AFTERCONSTRUCTION
SYSTEM$_$TINTERFACEDOBJECT_$__$$_AFTERCONSTRUCTION:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		lea	ax,[bx+2]
		push	ax
		call	SYSTEM_$$_DECLOCKED$LONGINT$$BOOLEAN
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_DECLOCKED$LONGINT$$BOOLEAN
