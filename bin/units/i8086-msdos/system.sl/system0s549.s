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
	GLOBAL fpc_dynarray_assign
fpc_dynarray_assign:
	GLOBAL FPC_DYNARRAY_ASSIGN
FPC_DYNARRAY_ASSIGN:
		push	bp
		mov	bp,sp
		push	word [bp+6]
		call	FPC_DYNARRAY_INCR_REF
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+4]
		call	FPC_DYNARRAY_CLEAR
		mov	bx,word [bp+8]
		mov	ax,word [bp+6]
		mov	word [bx],ax
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_DYNARRAY_CLEAR
EXTERN	FPC_DYNARRAY_INCR_REF
