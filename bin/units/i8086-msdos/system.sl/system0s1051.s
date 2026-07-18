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
	GLOBAL fpc_get_input
fpc_get_input:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21650
		push	word [U_$SYSTEM_$$_INPUT+2]
		push	word [U_$SYSTEM_$$_INPUT]
		call	ax
		jmp	..@j21651
..@j21650:
		mov	ax,word U_$SYSTEM_$$_INPUT+2
..@j21651:
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
EXTERN	U_$SYSTEM_$$_INPUT
EXTERN	FPC_THREADVAR_RELOCATE
