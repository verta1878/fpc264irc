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
	GLOBAL SYSTEM_$$_RESET$file
SYSTEM_$$_RESET$file:
		push	bp
		mov	bp,sp
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24481
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24482
..@j24481:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24482:
		cmp	word [bx],0
		jne	..@j24479
		jmp	..@j24480
..@j24479:
		jmp	..@j24477
..@j24480:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,128
		push	ax
		call	SYSTEM_$$_RESET$file$LONGINT
..@j24477:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_RESET$file$LONGINT
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
