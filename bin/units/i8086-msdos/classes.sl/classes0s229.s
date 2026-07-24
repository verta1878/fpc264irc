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
	GLOBAL CLASSES$_$TFPLIST_$__$$_GETENUMERATOR$$TFPLISTENUMERATOR
CLASSES$_$TFPLIST_$__$$_GETENUMERATOR$$TFPLISTENUMERATOR:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word VMT_$CLASSES_$$_TFPLISTENUMERATOR
		push	ax
		mov	ax,1
		push	ax
		push	word [bp+4]
		call	CLASSES$_$TFPLISTENUMERATOR_$__$$_CREATE$TFPLIST$$TFPLISTENUMERATOR
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TFPLISTENUMERATOR_$__$$_CREATE$TFPLIST$$TFPLISTENUMERATOR
EXTERN	VMT_$CLASSES_$$_TFPLISTENUMERATOR
