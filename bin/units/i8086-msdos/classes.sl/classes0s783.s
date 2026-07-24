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
	GLOBAL CLASSES$_$TBINARYOBJECTREADER_$__$$_READCURRENCY$$CURRENCY
CLASSES$_$TBINARYOBJECTREADER_$__$$_READCURRENCY$$CURRENCY:
		push	bp
		mov	bp,sp
		sub	sp,24
		push	word [bp+4]
		call	CLASSES$_$TBINARYOBJECTREADER_$__$$_READQWORD$$QWORD
		test	ax,-32768
		mov	word [bp-24],dx
		mov	word [bp-22],cx
		mov	word [bp-20],bx
		mov	word [bp-18],ax
		wait fild	qword [bp-24]
		je	..@j17849
		wait fadd	dword [_$CLASSES$_Ld69]
..@j17849:
		wait fild	qword [_$CLASSES$_Ld70]
		wait fmulp	st1,st0
		wait fistp	qword [bp-16]
		DB	09bh
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp-16]
		cld
		mov	cx,4
		rep
		movsw
		wait fild	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	_$CLASSES$_Ld70
EXTERN	_$CLASSES$_Ld69
EXTERN	CLASSES$_$TBINARYOBJECTREADER_$__$$_READQWORD$$QWORD
