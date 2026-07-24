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
	GLOBAL SYSTEM$_$TEXTENDED80REC_$__$$_EXPONENT$$LONGINT
SYSTEM$_$TEXTENDED80REC_$__$$_EXPONENT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM$_$TEXTENDED80REC_$__$$_GETEXP$$QWORD
		sub	dx,16383
		sbb	cx,0
		sbb	bx,0
		sbb	ax,0
		mov	word [bp-4],dx
		mov	word [bp-2],cx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM$_$TEXTENDED80REC_$__$$_GETEXP$$QWORD
