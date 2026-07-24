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
	GLOBAL fpc_variant_copy
fpc_variant_copy:
	GLOBAL FPC_VARIANT_COPY
FPC_VARIANT_COPY:
		push	bp
		mov	bp,sp
		cmp	word [TC_$SYSTEM_$$_VARCOPYPROC],0
		jne	..@j15782
		jmp	..@j15783
..@j15782:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [TC_$SYSTEM_$$_VARCOPYPROC]
		call	ax
..@j15783:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TC_$SYSTEM_$$_VARCOPYPROC
