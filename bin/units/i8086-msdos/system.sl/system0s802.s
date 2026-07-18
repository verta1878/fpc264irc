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
	GLOBAL fpc_initialize
fpc_initialize:
	GLOBAL FPC_INITIALIZE
FPC_INITIALIZE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		cmp	al,9
		jb	..@j17140
		sub	al,9
		sub	al,1
		jbe	..@j17141
		dec	al
		je	..@j17144
		dec	al
		je	..@j17142
		dec	al
		je	..@j17143
		dec	al
		je	..@j17141
		sub	al,2
		je	..@j17143
		sub	al,5
		je	..@j17141
		sub	al,3
		je	..@j17141
		jmp	..@j17140
..@j17141:
		mov	bx,word [bp+6]
		mov	word [bx],0
		jmp	..@j17139
..@j17142:
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word FPC_INITIALIZE
		push	ax
		call	SYSTEM_$$_ARRAYRTTI$POINTER$POINTER$TRTTIPROC
		jmp	..@j17139
..@j17143:
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word FPC_INITIALIZE
		push	ax
		call	SYSTEM_$$_RECORDRTTI$POINTER$POINTER$TRTTIPROC
		jmp	..@j17139
..@j17144:
		mov	ax,word [bp+6]
		push	ax
		call	FPC_VARIANT_INIT
		jmp	..@j17139
..@j17140:
..@j17139:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_VARIANT_INIT
EXTERN	SYSTEM_$$_RECORDRTTI$POINTER$POINTER$TRTTIPROC
EXTERN	SYSTEM_$$_ARRAYRTTI$POINTER$POINTER$TRTTIPROC
