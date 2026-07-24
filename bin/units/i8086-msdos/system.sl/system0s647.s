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
	GLOBAL fpc_variant_clear
fpc_variant_clear:
	GLOBAL FPC_VARIANT_CLEAR
FPC_VARIANT_CLEAR:
		push	bp
		mov	bp,sp
		cmp	word [TC_$SYSTEM_$$_VARCLEARPROC],0
		jne	..@j15770
		jmp	..@j15771
..@j15770:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [TC_$SYSTEM_$$_VARCLEARPROC]
		call	ax
..@j15771:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$SYSTEM_$$_VARCLEARPROC
