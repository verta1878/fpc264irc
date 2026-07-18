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
	GLOBAL CLASSES$_$TBINARYOBJECTREADER_$__$$_READDATE$$TDATETIME
CLASSES$_$TBINARYOBJECTREADER_$__$$_READDATE$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,16
		push	word [bp+4]
		call	CLASSES$_$TBINARYOBJECTREADER_$__$$_READQWORD$$QWORD
		mov	word [bp-16],dx
		mov	word [bp-14],cx
		mov	word [bp-12],bx
		mov	word [bp-10],ax
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp-16]
		cld
		mov	cx,4
		rep
		movsw
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TBINARYOBJECTREADER_$__$$_READQWORD$$QWORD
