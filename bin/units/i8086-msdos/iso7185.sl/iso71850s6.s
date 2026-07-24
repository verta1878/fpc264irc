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
	GLOBAL ISO7185_$$_EOF$$BOOLEAN
ISO7185_$$_EOF$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j76
		push	word [U_$SYSTEM_$$_INPUT+2]
		push	word [U_$SYSTEM_$$_INPUT]
		call	ax
		jmp	..@j77
..@j76:
		mov	ax,word U_$SYSTEM_$$_INPUT+2
..@j77:
		push	ax
		call	ISO7185_$$_EOF$TEXT$$BOOLEAN
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret
EXTERN	ISO7185_$$_EOF$TEXT$$BOOLEAN
EXTERN	U_$SYSTEM_$$_INPUT
EXTERN	FPC_THREADVAR_RELOCATE
