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
	GLOBAL SYSTEM_$$_INITSYSTEMTHREADS
SYSTEM_$$_INITSYSTEMTHREADS:
	GLOBAL _FPC_InitSystemThreads
_FPC_InitSystemThreads:
		push	bp
		mov	bp,sp
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j20146
		push	word [U_$SYSTEM_$$_THREADID+2]
		push	word [U_$SYSTEM_$$_THREADID]
		call	ax
		mov	bx,ax
		jmp	..@j20147
..@j20146:
		mov	bx,word U_$SYSTEM_$$_THREADID+2
..@j20147:
		mov	word [bx],1
		call	SYSTEM_$$_SETNOTHREADMANAGER
		mov	sp,bp
		pop	bp
		ret
EXTERN	SYSTEM_$$_SETNOTHREADMANAGER
EXTERN	U_$SYSTEM_$$_THREADID
EXTERN	FPC_THREADVAR_RELOCATE
