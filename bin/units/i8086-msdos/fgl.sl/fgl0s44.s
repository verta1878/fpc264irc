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
	GLOBAL FGL$_$TFPSMAP_$__$$_SETONKEYPTRCOMPARE$TFPSLISTCOMPAREFUNC
FGL$_$TFPSMAP_$__$$_SETONKEYPTRCOMPARE$TFPSLISTCOMPAREFUNC:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
		cmp	word [bp-4],0
		jne	..@j1147
		jmp	..@j1148
..@j1147:
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	word [bx+17],ax
		mov	ax,word [bp-2]
		mov	word [bx+19],ax
		jmp	..@j1151
..@j1148:
		mov	bx,word [bp+6]
		mov	dx,word [bp+6]
		mov	ax,word FGL$_$TFPSMAP_$__$$_BINARYCOMPAREKEY$POINTER$POINTER$$SMALLINT
		mov	word [bx+17],ax
		mov	word [bx+19],dx
..@j1151:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FGL$_$TFPSMAP_$__$$_BINARYCOMPAREKEY$POINTER$POINTER$$SMALLINT
