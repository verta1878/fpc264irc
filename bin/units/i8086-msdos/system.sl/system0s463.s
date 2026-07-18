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
	GLOBAL fpc_unicodestr_rangecheck
fpc_unicodestr_rangecheck:
	GLOBAL FPC_UNICODESTR_RANGECHECK
FPC_UNICODESTR_RANGECHECK:
		push	bp
		mov	bp,sp
		cmp	word [bp+6],0
		je	..@j11812
		jmp	..@j11815
..@j11815:
		mov	bx,word [bp+6]
		mov	ax,word [bx-2]
		cmp	ax,word [bp+4]
		jl	..@j11812
		jmp	..@j11814
..@j11814:
		cmp	word [bp+4],1
		jl	..@j11812
		jmp	..@j11813
..@j11812:
		mov	ax,0
		push	ax
		mov	ax,201
		push	ax
		call	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
		push	ax
		push	bp
		call	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
..@j11813:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
EXTERN	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
