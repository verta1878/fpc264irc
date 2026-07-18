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
	GLOBAL FGL$_$TFPSMAP_$__$$_INSERTKEYDATA$SMALLINT$POINTER$POINTER
FGL$_$TFPSMAP_$__$$_INSERTKEYDATA$SMALLINT$POINTER$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+10]
		push	word [bp+8]
		call	FGL$_$TFPSMAP_$__$$_INSERT$SMALLINT$$POINTER
		mov	word [bp-2],ax
		push	word [bp+10]
		push	word [bp+6]
		push	word [bp-2]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+56]
		call	ax
		push	word [bp+10]
		push	word [bp+4]
		mov	bx,word [bp+10]
		mov	dx,word [bx+10]
		mov	ax,word [bp-2]
		add	ax,dx
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+58]
		call	ax
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FGL$_$TFPSMAP_$__$$_INSERT$SMALLINT$$POINTER
