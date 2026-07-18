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
	GLOBAL SYSTEM_$$_GETTHREADID$$WORD
SYSTEM_$$_GETTHREADID$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j17640
		push	word [U_$SYSTEM_$$_THREADID+2]
		push	word [U_$SYSTEM_$$_THREADID]
		call	ax
		mov	bx,ax
		jmp	..@j17641
..@j17640:
		mov	bx,word U_$SYSTEM_$$_THREADID+2
..@j17641:
		mov	ax,word [bx]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
EXTERN	U_$SYSTEM_$$_THREADID
EXTERN	FPC_THREADVAR_RELOCATE
