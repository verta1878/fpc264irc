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
	GLOBAL OBJECTS$_$TSORTEDCOLLECTION_$__$$_COMPARE$POINTER$POINTER$$LONGINT
OBJECTS$_$TSORTEDCOLLECTION_$__$$_COMPARE$POINTER$POINTER$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		call	OBJECTS_$$_ABSTRACT
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	OBJECTS_$$_ABSTRACT
