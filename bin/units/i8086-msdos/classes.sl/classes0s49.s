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
	GLOBAL CLASSES$_$TSTREAM_$__$$_READCOMPONENTRES$TCOMPONENT$$TCOMPONENT
CLASSES$_$TSTREAM_$__$$_READCOMPONENTRES$TCOMPONENT$$TCOMPONENT:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+6]
		call	CLASSES$_$TSTREAM_$__$$_READRESHEADER
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TSTREAM_$__$$_READCOMPONENT$TCOMPONENT$$TCOMPONENT
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TSTREAM_$__$$_READCOMPONENT$TCOMPONENT$$TCOMPONENT
EXTERN	CLASSES$_$TSTREAM_$__$$_READRESHEADER
