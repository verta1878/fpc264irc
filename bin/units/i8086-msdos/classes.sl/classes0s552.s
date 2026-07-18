BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_GETENUMERATOR$$TCOMPONENTENUMERATOR
CLASSES$_$TCOMPONENT_$__$$_GETENUMERATOR$$TCOMPONENTENUMERATOR:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word VMT_$CLASSES_$$_TCOMPONENTENUMERATOR
		push	ax
		mov	ax,1
		push	ax
		push	word [bp+4]
		call	CLASSES$_$TCOMPONENTENUMERATOR_$__$$_CREATE$TCOMPONENT$$TCOMPONENTENUMERATOR
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TCOMPONENTENUMERATOR_$__$$_CREATE$TCOMPONENT$$TCOMPONENTENUMERATOR
EXTERN	VMT_$CLASSES_$$_TCOMPONENTENUMERATOR
