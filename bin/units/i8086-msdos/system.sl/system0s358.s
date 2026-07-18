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
	GLOBAL fpc_ansistr_incr_ref
fpc_ansistr_incr_ref:
	GLOBAL FPC_ANSISTR_INCR_REF
FPC_ANSISTR_INCR_REF:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		je	..@j8604
		jmp	..@j8605
..@j8604:
		jmp	..@j8602
..@j8605:
		mov	bx,word [bp+4]
		cmp	word [bx-4],0
		jl	..@j8606
		jmp	..@j8607
..@j8606:
		jmp	..@j8602
..@j8607:
		mov	bx,word [bp+4]
		lea	ax,[bx-4]
		push	ax
		call	SYSTEM_$$_INCLOCKED$SMALLINT
..@j8602:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_INCLOCKED$SMALLINT
