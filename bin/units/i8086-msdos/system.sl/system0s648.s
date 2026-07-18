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
	GLOBAL SYSTEM_$$_VARIANT_ADDREF$TVARDATA
SYSTEM_$$_VARIANT_ADDREF$TVARDATA:
	GLOBAL FPC_VARIANT_ADDREF
FPC_VARIANT_ADDREF:
		push	bp
		mov	bp,sp
		cmp	word [TC_$SYSTEM_$$_VARADDREFPROC],0
		jne	..@j15776
		jmp	..@j15777
..@j15776:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [TC_$SYSTEM_$$_VARADDREFPROC]
		call	ax
..@j15777:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$SYSTEM_$$_VARADDREFPROC
