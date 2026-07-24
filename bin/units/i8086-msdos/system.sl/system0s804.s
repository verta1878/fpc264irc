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
	GLOBAL fpc_addref
fpc_addref:
	GLOBAL FPC_ADDREF
FPC_ADDREF:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		cmp	al,9
		jb	..@j17199
		sub	al,9
		je	..@j17200
		sub	al,2
		je	..@j17206
		dec	al
		je	..@j17202
		dec	al
		je	..@j17203
		dec	al
		je	..@j17205
		sub	al,2
		je	..@j17203
		sub	al,5
		je	..@j17204
		sub	al,3
		je	..@j17201
		jmp	..@j17199
..@j17200:
		mov	bx,word [bp+6]
		push	word [bx]
		call	FPC_ANSISTR_INCR_REF
		jmp	..@j17198
..@j17201:
		mov	bx,word [bp+6]
		push	word [bx]
		call	FPC_UNICODESTR_INCR_REF
		jmp	..@j17198
..@j17202:
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word FPC_ADDREF
		push	ax
		call	SYSTEM_$$_ARRAYRTTI$POINTER$POINTER$TRTTIPROC
		jmp	..@j17198
..@j17203:
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word FPC_ADDREF
		push	ax
		call	SYSTEM_$$_RECORDRTTI$POINTER$POINTER$TRTTIPROC
		jmp	..@j17198
..@j17204:
		mov	bx,word [bp+6]
		push	word [bx]
		call	FPC_DYNARRAY_INCR_REF
		jmp	..@j17198
..@j17205:
		mov	bx,word [bp+6]
		push	word [bx]
		call	FPC_INTF_INCR_REF
		jmp	..@j17198
..@j17206:
		mov	ax,word [bp+6]
		push	ax
		call	SYSTEM_$$_VARIANT_ADDREF$TVARDATA
		jmp	..@j17198
..@j17199:
..@j17198:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_VARIANT_ADDREF$TVARDATA
EXTERN	FPC_INTF_INCR_REF
EXTERN	FPC_DYNARRAY_INCR_REF
EXTERN	SYSTEM_$$_RECORDRTTI$POINTER$POINTER$TRTTIPROC
EXTERN	SYSTEM_$$_ARRAYRTTI$POINTER$POINTER$TRTTIPROC
EXTERN	FPC_UNICODESTR_INCR_REF
EXTERN	FPC_ANSISTR_INCR_REF
