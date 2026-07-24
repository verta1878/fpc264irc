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
	GLOBAL fpc_dynarray_incr_ref
fpc_dynarray_incr_ref:
	GLOBAL FPC_DYNARRAY_INCR_REF
FPC_DYNARRAY_INCR_REF:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+4],0
		je	..@j13839
		jmp	..@j13840
..@j13839:
		jmp	..@j13837
..@j13840:
		mov	ax,word [bp+4]
		sub	ax,4
		mov	word [bp-2],ax
		mov	bx,word [bp-2]
		cmp	word [bx],0
		je	..@j13843
		jmp	..@j13844
..@j13843:
		mov	ax,0
		push	ax
		mov	ax,204
		push	ax
		call	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
		push	ax
		push	bp
		call	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
..@j13844:
		mov	ax,word [bp-2]
		push	ax
		call	SYSTEM_$$_INCLOCKED$SMALLINT
..@j13837:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_INCLOCKED$SMALLINT
EXTERN	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
EXTERN	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
