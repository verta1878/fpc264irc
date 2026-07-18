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
	GLOBAL SYSUTILS_$$_BYTESOF$CHAR$$TBYTES
SYSUTILS_$$_BYTESOF$CHAR$$TBYTES:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	word [bp-2],1
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word RTTI_$SYSUTILS_$$_TBYTES
		push	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-2]
		push	ax
		call	fpc_dynarray_setlength
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	al,byte [bp+4]
		mov	byte [bx],al
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_dynarray_setlength
EXTERN	RTTI_$SYSUTILS_$$_TBYTES
