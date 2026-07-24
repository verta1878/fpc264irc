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
	GLOBAL CLASSES$_$TINTERFACELIST_$__$$_LAST$$IUNKNOWN
CLASSES$_$TINTERFACELIST_$__$$_LAST$$IUNKNOWN:
		push	bp
		mov	bp,sp
		push	word [bp+6]
		mov	ax,word [bp+4]
		push	ax
		push	word [bp+6]
		call	CLASSES$_$TINTERFACELIST_$__$$_GETCOUNT$$SMALLINT
		dec	ax
		push	ax
		call	CLASSES$_$TINTERFACELIST_$__$$_GET$SMALLINT$$IUNKNOWN
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TINTERFACELIST_$__$$_GET$SMALLINT$$IUNKNOWN
EXTERN	CLASSES$_$TINTERFACELIST_$__$$_GETCOUNT$$SMALLINT
