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
	GLOBAL FGL$_$TFPSMAP_$__$$_SORT
FGL$_$TFPSMAP_$__$$_SORT:
		push	bp
		mov	bp,sp
		push	word [bp+4]
		mov	bx,word [bp+4]
		lea	ax,[bx+17]
		push	ax
		call	FGL$_$TFPSLIST_$__$$_SORT$TFPSLISTCOMPAREFUNC
		mov	sp,bp
		pop	bp
		ret	2
; End asmlist al_procedures
; Begin asmlist al_globals
EXTERN	FGL$_$TFPSLIST_$__$$_SORT$TFPSLISTCOMPAREFUNC
