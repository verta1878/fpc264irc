BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TTHREAD_$__$$_CHECKTERMINATED$$BOOLEAN
CLASSES$_$TTHREAD_$__$$_CHECKTERMINATED$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j10247
		push	word [U_$CLASSES_$$_CURRENTTHREADVAR+2]
		push	word [U_$CLASSES_$$_CURRENTTHREADVAR]
		call	ax
		mov	bx,ax
		jmp	..@j10248
..@j10247:
		mov	bx,word U_$CLASSES_$$_CURRENTTHREADVAR+2
..@j10248:
		cmp	word [bx],0
		je	..@j10245
		jmp	..@j10246
..@j10245:
..@j10249:
		mov	ax,word VMT_$CLASSES_$$_ETHREADEXTERNALEXCEPTION
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_STHREADEXTERNAL+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j10249
		push	ax
		push	bp
		call	fpc_raiseexception
..@j10246:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j10264
		push	word [U_$CLASSES_$$_CURRENTTHREADVAR+2]
		push	word [U_$CLASSES_$$_CURRENTTHREADVAR]
		call	ax
		mov	bx,ax
		jmp	..@j10265
..@j10264:
		mov	bx,word U_$CLASSES_$$_CURRENTTHREADVAR+2
..@j10265:
		mov	bx,word [bx]
		mov	al,byte [bx+4]
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_STHREADEXTERNAL
EXTERN	VMT_$CLASSES_$$_ETHREADEXTERNALEXCEPTION
EXTERN	U_$CLASSES_$$_CURRENTTHREADVAR
EXTERN	FPC_THREADVAR_RELOCATE
