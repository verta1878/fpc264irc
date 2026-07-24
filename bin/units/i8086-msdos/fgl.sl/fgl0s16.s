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
	GLOBAL FGL$_$TFPSLIST_$__$$_CLEAR
FGL$_$TFPSLIST_$__$$_CLEAR:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		cmp	word [bx+2],0
		jne	..@j271
		jmp	..@j272
..@j271:
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	FGL$_$TFPSLIST_$__$$_SETCOUNT$SMALLINT
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	FGL$_$TFPSLIST_$__$$_SETCAPACITY$SMALLINT
..@j272:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FGL$_$TFPSLIST_$__$$_SETCAPACITY$SMALLINT
EXTERN	FGL$_$TFPSLIST_$__$$_SETCOUNT$SMALLINT
