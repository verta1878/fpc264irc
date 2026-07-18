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
	GLOBAL fpc_addref_array
fpc_addref_array:
	GLOBAL FPC_ADDREF_ARRAY
FPC_ADDREF_ARRAY:
		push	bp
		mov	bp,sp
		sub	sp,6
		push	word [bp+6]
		call	SYSTEM_$$_RTTISIZE$POINTER$$SMALLINT
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		jg	..@j17390
		jmp	..@j17391
..@j17390:
		mov	ax,word [bp+4]
		dec	ax
		mov	word [bp-6],ax
		mov	word [bp-2],0
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jl	..@j17395
		dec	word [bp-2]
	ALIGN 2
..@j17396:
		inc	word [bp-2]
		mov	ax,word [bp-2]
		mul	word [bp-4]
		mov	dx,word [bp+8]
		add	dx,ax
		push	dx
		push	word [bp+6]
		call	FPC_ADDREF
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jg	..@j17396
..@j17395:
..@j17391:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_ADDREF
EXTERN	SYSTEM_$$_RTTISIZE$POINTER$$SMALLINT
