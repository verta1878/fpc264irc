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
	GLOBAL SYSTEM_$$_COPYARRAY$POINTER$POINTER$POINTER$SMALLINT
SYSTEM_$$_COPYARRAY$POINTER$POINTER$POINTER$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		push	word [bp+6]
		call	SYSTEM_$$_RTTISIZE$POINTER$$SMALLINT
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		jg	..@j17421
		jmp	..@j17422
..@j17421:
		mov	ax,word [bp+4]
		dec	ax
		mov	word [bp-6],ax
		mov	word [bp-2],0
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jl	..@j17426
		dec	word [bp-2]
	ALIGN 2
..@j17427:
		inc	word [bp-2]
		mov	ax,word [bp-2]
		mul	word [bp-4]
		mov	dx,word [bp+8]
		add	dx,ax
		push	dx
		mov	ax,word [bp-2]
		mul	word [bp-4]
		mov	dx,word [bp+10]
		add	dx,ax
		push	dx
		push	word [bp+6]
		call	FPC_COPY
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jg	..@j17427
..@j17426:
..@j17422:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_COPY
EXTERN	SYSTEM_$$_RTTISIZE$POINTER$$SMALLINT
