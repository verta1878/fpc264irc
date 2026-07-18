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
	GLOBAL CLASSES$_$TSTREAM_$__$$_WRITEDESCENDENTRES$ANSISTRING$TCOMPONENT$TCOMPONENT
CLASSES$_$TSTREAM_$__$$_WRITEDESCENDENTRES$ANSISTRING$TCOMPONENT$TCOMPONENT:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+10]
		push	word [bp+8]
		lea	ax,[bp-4]
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITERESOURCEHEADER$ANSISTRING$LONGINT
		push	word [bp+10]
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TSTREAM_$__$$_WRITEDESCENDENT$TCOMPONENT$TCOMPONENT
		push	word [bp+10]
		push	word [bp-2]
		push	word [bp-4]
		call	CLASSES$_$TSTREAM_$__$$_FIXUPRESOURCEHEADER$LONGINT
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	CLASSES$_$TSTREAM_$__$$_FIXUPRESOURCEHEADER$LONGINT
EXTERN	CLASSES$_$TSTREAM_$__$$_WRITEDESCENDENT$TCOMPONENT$TCOMPONENT
EXTERN	CLASSES$_$TSTREAM_$__$$_WRITERESOURCEHEADER$ANSISTRING$LONGINT
