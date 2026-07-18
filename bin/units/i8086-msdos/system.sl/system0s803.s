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
	GLOBAL fpc_finalize
fpc_finalize:
	GLOBAL FPC_FINALIZE
FPC_FINALIZE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		cmp	al,9
		jb	..@j17164
		sub	al,9
		je	..@j17165
		sub	al,2
		je	..@j17171
		dec	al
		je	..@j17167
		dec	al
		je	..@j17168
		dec	al
		je	..@j17169
		sub	al,2
		je	..@j17168
		sub	al,5
		je	..@j17170
		sub	al,3
		je	..@j17166
		jmp	..@j17164
..@j17165:
		mov	ax,word [bp+6]
		push	ax
		call	FPC_ANSISTR_DECR_REF
		jmp	..@j17163
..@j17166:
		mov	ax,word [bp+6]
		push	ax
		call	FPC_UNICODESTR_DECR_REF
		jmp	..@j17163
..@j17167:
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word FPC_FINALIZE
		push	ax
		call	SYSTEM_$$_ARRAYRTTI$POINTER$POINTER$TRTTIPROC
		jmp	..@j17163
..@j17168:
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word FPC_FINALIZE
		push	ax
		call	SYSTEM_$$_RECORDRTTI$POINTER$POINTER$TRTTIPROC
		jmp	..@j17163
..@j17169:
		mov	ax,word [bp+6]
		push	ax
		call	FPC_INTF_DECR_REF
		jmp	..@j17163
..@j17170:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	FPC_DYNARRAY_CLEAR
		jmp	..@j17163
..@j17171:
		mov	ax,word [bp+6]
		push	ax
		call	FPC_VARIANT_CLEAR
		jmp	..@j17163
..@j17164:
..@j17163:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_VARIANT_CLEAR
EXTERN	FPC_DYNARRAY_CLEAR
EXTERN	FPC_INTF_DECR_REF
EXTERN	SYSTEM_$$_RECORDRTTI$POINTER$POINTER$TRTTIPROC
EXTERN	SYSTEM_$$_ARRAYRTTI$POINTER$POINTER$TRTTIPROC
EXTERN	FPC_UNICODESTR_DECR_REF
EXTERN	FPC_ANSISTR_DECR_REF
