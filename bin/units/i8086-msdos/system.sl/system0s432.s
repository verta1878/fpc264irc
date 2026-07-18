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
	GLOBAL fpc_unicodestr_incr_ref
fpc_unicodestr_incr_ref:
	GLOBAL FPC_UNICODESTR_INCR_REF
FPC_UNICODESTR_INCR_REF:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		je	..@j10890
		jmp	..@j10891
..@j10890:
		jmp	..@j10888
..@j10891:
		mov	bx,word [bp+4]
		cmp	word [bx-4],0
		jl	..@j10892
		jmp	..@j10893
..@j10892:
		jmp	..@j10888
..@j10893:
		mov	bx,word [bp+4]
		lea	ax,[bx-4]
		push	ax
		call	SYSTEM_$$_INCLOCKED$SMALLINT
..@j10888:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_INCLOCKED$SMALLINT
