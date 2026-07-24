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
	GLOBAL fpc_variant_copy_overwrite
fpc_variant_copy_overwrite:
	GLOBAL FPC_VARIANT_COPY_OVERWRITE
FPC_VARIANT_COPY_OVERWRITE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		mov	word [bx],0
		cmp	word [TC_$SYSTEM_$$_VARCOPYPROC],0
		jne	..@j15792
		jmp	..@j15793
..@j15792:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [TC_$SYSTEM_$$_VARCOPYPROC]
		call	ax
..@j15793:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TC_$SYSTEM_$$_VARCOPYPROC
