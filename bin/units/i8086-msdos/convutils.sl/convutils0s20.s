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
	GLOBAL FINALIZE$_$CONVUTILS
FINALIZE$_$CONVUTILS:
	GLOBAL _CONVUTILS_$$_finalize$
_CONVUTILS_$$_finalize$:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	word [bp-2],0
		mov	ax,word TC_$CONVUTILS_$$_THEUNITS
		push	ax
		mov	ax,word INIT_$CONVUTILS_$$_DEF35
		push	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-2]
		push	ax
		call	fpc_dynarray_setlength
		mov	word [bp-2],0
		mov	ax,word TC_$CONVUTILS_$$_THEFAMILIES
		push	ax
		mov	ax,word RTTI_$CONVUTILS_$$_DEF36
		push	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-2]
		push	ax
		call	fpc_dynarray_setlength
		mov	ax,word TC_$CONVUTILS_$$_THEUNITS
		push	ax
		mov	ax,word INIT_$CONVUTILS_$$_DEF35
		push	ax
		call	fpc_finalize
		mov	ax,word TC_$CONVUTILS_$$_THEFAMILIES
		push	ax
		mov	ax,word RTTI_$CONVUTILS_$$_DEF36
		push	ax
		call	fpc_finalize
		mov	sp,bp
		pop	bp
		ret
EXTERN	fpc_finalize
EXTERN	RTTI_$CONVUTILS_$$_DEF36
EXTERN	TC_$CONVUTILS_$$_THEFAMILIES
EXTERN	fpc_dynarray_setlength
EXTERN	INIT_$CONVUTILS_$$_DEF35
EXTERN	TC_$CONVUTILS_$$_THEUNITS
