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
	GLOBAL SYSUTILS_$$_BYTESOF$RAWBYTESTRING$$TBYTES
SYSUTILS_$$_BYTESOF$RAWBYTESTRING$$TBYTES:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j110
		mov	bx,word [bx-2]
..@j110:
		mov	word [bp-2],bx
		mov	ax,word [bp-2]
		mov	word [bp-4],ax
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word RTTI_$SYSUTILS_$$_TBYTES
		push	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-4]
		push	ax
		call	fpc_dynarray_setlength
		cmp	word [bp-2],0
		jg	..@j121
		jmp	..@j122
..@j121:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j122:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_dynarray_setlength
EXTERN	RTTI_$SYSUTILS_$$_TBYTES
