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
	GLOBAL CRT_$$_DOSMEMFILLWORD$WORD$WORD$WORD$WORD
CRT_$$_DOSMEMFILLWORD$WORD$WORD$WORD$WORD:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+10]
		mov	es,ax
		mov	di,word [bp+8]
		mov	ax,word [bp+4]
		mov	cx,word [bp+6]
		rep
		stosw
		mov	sp,bp
		pop	bp
		ret	8
