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
	GLOBAL FGL$_$TFPSMAP_$__$$_SETONDATAPTRCOMPARE$TFPSLISTCOMPAREFUNC
FGL$_$TFPSMAP_$__$$_SETONDATAPTRCOMPARE$TFPSLISTCOMPAREFUNC:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
		cmp	word [bp-4],0
		jne	..@j1156
		jmp	..@j1157
..@j1156:
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	word [bx+21],ax
		mov	ax,word [bp-2]
		mov	word [bx+23],ax
		jmp	..@j1160
..@j1157:
		mov	bx,word [bp+6]
		mov	dx,word [bp+6]
		mov	ax,word FGL$_$TFPSMAP_$__$$_BINARYCOMPAREDATA$POINTER$POINTER$$SMALLINT
		mov	word [bx+21],ax
		mov	word [bx+23],dx
..@j1160:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FGL$_$TFPSMAP_$__$$_BINARYCOMPAREDATA$POINTER$POINTER$$SMALLINT
