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
	GLOBAL SYSTEM_$$_DYNARRAYBOUNDS$POINTER$POINTER$$TBOUNDARRAY
SYSTEM_$$_DYNARRAYBOUNDS$POINTER$POINTER$$TBOUNDARRAY:
		push	bp
		mov	bp,sp
		sub	sp,8
		push	word [bp+4]
		call	SYSTEM_$$_DYNARRAYDIM$POINTER$$SMALLINT
		mov	word [bp-4],ax
		mov	ax,word [bp-4]
		mov	word [bp-6],ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word RTTI_$SYSTEM_$$_TBOUNDARRAY
		push	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	fpc_dynarray_setlength
		mov	ax,word [bp-4]
		dec	ax
		mov	word [bp-8],ax
		mov	word [bp-2],0
		mov	ax,word [bp-8]
		cmp	ax,word [bp-2]
		jl	..@j14118
		dec	word [bp-2]
	ALIGN 2
..@j14119:
		inc	word [bp-2]
		cmp	word [bp+6],0
		je	..@j14120
		jmp	..@j14121
..@j14120:
		jmp	..@j14099
		jmp	..@j14122
..@j14121:
		push	word [bp+6]
		call	SYSTEM_$$_DYNARRAYSIZE$POINTER$$SMALLINT
		dec	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	dx,word [bp-2]
		mov	si,dx
		shl	si,1
		mov	word [bx+si],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	word [bp+6],ax
..@j14122:
		mov	ax,word [bp-8]
		cmp	ax,word [bp-2]
		jg	..@j14119
..@j14118:
..@j14099:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_DYNARRAYSIZE$POINTER$$SMALLINT
EXTERN	fpc_dynarray_setlength
EXTERN	RTTI_$SYSTEM_$$_TBOUNDARRAY
EXTERN	SYSTEM_$$_DYNARRAYDIM$POINTER$$SMALLINT
