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
	GLOBAL SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STORESTRING$ANSISTRING
SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STORESTRING$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j11843
		mov	bx,word [bx-2]
..@j11843:
		mov	word [bp-2],bx
		mov	bx,word [bp+6]
		mov	dx,word [bx-2]
		mov	ax,word [bp-2]
		add	ax,dx
		cmp	ax,256
		jl	..@j11844
		jmp	..@j11845
..@j11844:
		mov	bx,word [bp+6]
		push	word [bx-260]
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j11850
		mov	ax,word FPC_EMPTYCHAR
..@j11850:
		push	ax
		push	word [bp-2]
		call	SYSUTILS_$$_STRMOVE$PCHAR$PCHAR$SMALLINT$$PCHAR
		mov	bx,word [bp+6]
		mov	dx,word [bx-260]
		mov	ax,word [bp-2]
		add	ax,dx
		mov	bx,word [bp+6]
		mov	word [bx-260],ax
		mov	bx,word [bp+6]
		mov	dx,word [bx-2]
		mov	ax,word [bp-2]
		add	ax,dx
		mov	bx,word [bp+6]
		mov	word [bx-2],ax
..@j11845:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSUTILS_$$_STRMOVE$PCHAR$PCHAR$SMALLINT$$PCHAR
EXTERN	FPC_EMPTYCHAR
