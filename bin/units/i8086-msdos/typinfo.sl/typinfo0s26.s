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
	GLOBAL TYPINFO_$$_INSERTPROPNOSORT$PPROPLIST$PPROPINFO$LONGINT
TYPINFO_$$_INSERTPROPNOSORT$PPROPLIST$PPROPINFO$LONGINT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+10]
		mov	ax,word [bp+4]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp+8]
		mov	word [bx+si],ax
		mov	sp,bp
		pop	bp
		ret	8
