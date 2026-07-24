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
	GLOBAL FGL$_$TFPSMAP_$__$$_INITONPTRCOMPARE
FGL$_$TFPSMAP_$__$$_INITONPTRCOMPARE:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+4]
		mov	ax,0
		mov	dx,0
		mov	word [bp-4],dx
		mov	word [bp-2],ax
		lea	ax,[bp-4]
		push	ax
		call	FGL$_$TFPSMAP_$__$$_SETONKEYPTRCOMPARE$TFPSLISTCOMPAREFUNC
		push	word [bp+4]
		mov	ax,0
		mov	dx,0
		mov	word [bp-4],dx
		mov	word [bp-2],ax
		lea	ax,[bp-4]
		push	ax
		call	FGL$_$TFPSMAP_$__$$_SETONDATAPTRCOMPARE$TFPSLISTCOMPAREFUNC
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FGL$_$TFPSMAP_$__$$_SETONDATAPTRCOMPARE$TFPSLISTCOMPAREFUNC
EXTERN	FGL$_$TFPSMAP_$__$$_SETONKEYPTRCOMPARE$TFPSLISTCOMPAREFUNC
