BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES_$$_STRINGLISTANSICOMPARE$TSTRINGLIST$SMALLINT$SMALLINT$$SMALLINT
CLASSES_$$_STRINGLISTANSICOMPARE$TSTRINGLIST$SMALLINT$SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx+20]
		mov	ax,word [bp+6]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		push	word [bx+si]
		mov	bx,word [bp+8]
		mov	bx,word [bx+20]
		mov	ax,word [bp+4]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		push	word [bx+si]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+80]
		call	ax
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
