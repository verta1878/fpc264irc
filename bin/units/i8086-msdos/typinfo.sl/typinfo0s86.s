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
	GLOBAL TYPINFO_$$_SETVARIANTPROP$TOBJECT$PPROPINFO$VARIANT
TYPINFO_$$_SETVARIANTPROP$TOBJECT$PPROPINFO$VARIANT:
		push	bp
		mov	bp,sp
		push	word [TC_$TYPINFO_$$_ONSETVARIANTPROP]
		call	TYPINFO_$$_CHECKVARIANTEVENT$NEARPOINTER
		push	word [bp+22]
		push	word [bp+20]
		sub	sp,16
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,8
		rep
		movsw
		mov	ax,word [TC_$TYPINFO_$$_ONSETVARIANTPROP]
		call	ax
		mov	sp,bp
		pop	bp
		ret	20
EXTERN	TYPINFO_$$_CHECKVARIANTEVENT$NEARPOINTER
EXTERN	TC_$TYPINFO_$$_ONSETVARIANTPROP
