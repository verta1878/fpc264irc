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
	GLOBAL STRUTILS$_$STRINGREPLACEFAST$crcB7088804_$$_RESIZEALLOCATEDMATCHES
STRUTILS$_$STRINGREPLACEFAST$crcB7088804_$$_RESIZEALLOCATEDMATCHES:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		mov	ax,word [bx-4]
		add	ax,100
		mov	bx,word [bp+4]
		mov	word [bx-6],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx-6]
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		lea	ax,[bx-2]
		push	ax
		mov	ax,word RTTI_$STRUTILS_$$_DEF207
		push	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-2]
		push	ax
		call	fpc_dynarray_setlength
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_dynarray_setlength
EXTERN	RTTI_$STRUTILS_$$_DEF207
