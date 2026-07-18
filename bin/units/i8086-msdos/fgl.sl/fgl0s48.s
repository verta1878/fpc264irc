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
	GLOBAL FGL$_$TFPSMAP_$__$$_PUTDATA$SMALLINT$POINTER
FGL$_$TFPSMAP_$__$$_PUTDATA$SMALLINT$POINTER:
		push	bp
		mov	bp,sp
		push	word [bp+8]
		push	word [bp+4]
		push	word [bp+8]
		push	word [bp+6]
		call	FGL$_$TFPSLIST_$__$$_GET$SMALLINT$$POINTER
		mov	bx,word [bp+8]
		mov	dx,word [bx+10]
		add	dx,ax
		push	dx
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+58]
		call	ax
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FGL$_$TFPSLIST_$__$$_GET$SMALLINT$$POINTER
