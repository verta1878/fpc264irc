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
	GLOBAL SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STORESTR$PCHAR$SMALLINT
SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STORESTR$PCHAR$SMALLINT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+8]
		mov	dx,word [bx-2]
		mov	ax,word [bp+4]
		add	ax,dx
		cmp	ax,256
		jl	..@j11857
		jmp	..@j11858
..@j11857:
		mov	bx,word [bp+8]
		push	word [bx-260]
		push	word [bp+6]
		push	word [bp+4]
		call	SYSUTILS_$$_STRMOVE$PCHAR$PCHAR$SMALLINT$$PCHAR
		mov	bx,word [bp+8]
		mov	dx,word [bx-260]
		mov	ax,word [bp+4]
		add	ax,dx
		mov	bx,word [bp+8]
		mov	word [bx-260],ax
		mov	bx,word [bp+8]
		mov	dx,word [bx-2]
		mov	ax,word [bp+4]
		add	ax,dx
		mov	bx,word [bp+8]
		mov	word [bx-2],ax
..@j11858:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSUTILS_$$_STRMOVE$PCHAR$PCHAR$SMALLINT$$PCHAR
