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
	GLOBAL FGL$_$TFPSMAP_$__$$_INSERT$SMALLINT$POINTER$POINTER
FGL$_$TFPSMAP_$__$$_INSERT$SMALLINT$POINTER$POINTER:
		push	bp
		mov	bp,sp
		push	word [bp+10]
		push	word [bp+8]
		call	FGL$_$TFPSMAP_$__$$_INSERT$SMALLINT$$POINTER
		mov	bx,word [bp+6]
		mov	word [bx],ax
		mov	bx,word [bp+10]
		mov	si,word [bp+6]
		mov	dx,word [bx+10]
		mov	ax,word [si]
		add	ax,dx
		mov	bx,word [bp+4]
		mov	word [bx],ax
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FGL$_$TFPSMAP_$__$$_INSERT$SMALLINT$$POINTER
