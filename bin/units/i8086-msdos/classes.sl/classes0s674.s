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
	GLOBAL CLASSES$_$TINTERFACELIST_$__$$_GETENUMERATOR$$TINTERFACELISTENUMERATOR
CLASSES$_$TINTERFACELIST_$__$$_GETENUMERATOR$$TINTERFACELISTENUMERATOR:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word VMT_$CLASSES_$$_TINTERFACELISTENUMERATOR
		push	ax
		mov	ax,1
		push	ax
		push	word [bp+4]
		call	CLASSES$_$TINTERFACELISTENUMERATOR_$__$$_CREATE$TINTERFACELIST$$TINTERFACELISTENUMERATOR
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TINTERFACELISTENUMERATOR_$__$$_CREATE$TINTERFACELIST$$TINTERFACELISTENUMERATOR
EXTERN	VMT_$CLASSES_$$_TINTERFACELISTENUMERATOR
