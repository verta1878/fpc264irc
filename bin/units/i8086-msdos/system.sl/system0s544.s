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
	GLOBAL fpc_dynarray_rangecheck
fpc_dynarray_rangecheck:
	GLOBAL FPC_DYNARRAY_RANGECHECK
FPC_DYNARRAY_RANGECHECK:
		push	bp
		mov	bp,sp
		cmp	word [bp+6],0
		je	..@j13775
		jmp	..@j13778
..@j13778:
		cmp	word [bp+4],0
		jl	..@j13775
		jmp	..@j13777
..@j13777:
		mov	bx,word [bp+6]
		mov	ax,word [bx-2]
		cmp	ax,word [bp+4]
		jl	..@j13775
		jmp	..@j13776
..@j13775:
		mov	ax,0
		push	ax
		mov	ax,201
		push	ax
		call	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
		push	ax
		push	bp
		call	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
..@j13776:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
EXTERN	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
