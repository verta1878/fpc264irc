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
	GLOBAL CLASSES$_$TTHREAD_$__$$_SETRETURNVALUE$SMALLINT
CLASSES$_$TTHREAD_$__$$_SETRETURNVALUE$SMALLINT:
		push	bp
		mov	bp,sp
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j10270
		push	word [U_$CLASSES_$$_CURRENTTHREADVAR+2]
		push	word [U_$CLASSES_$$_CURRENTTHREADVAR]
		call	ax
		mov	bx,ax
		jmp	..@j10271
..@j10270:
		mov	bx,word U_$CLASSES_$$_CURRENTTHREADVAR+2
..@j10271:
		cmp	word [bx],0
		je	..@j10268
		jmp	..@j10269
..@j10268:
..@j10272:
		mov	ax,word VMT_$CLASSES_$$_ETHREADEXTERNALEXCEPTION
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_STHREADEXTERNAL+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j10272
		push	ax
		push	bp
		call	fpc_raiseexception
..@j10269:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j10287
		push	word [U_$CLASSES_$$_CURRENTTHREADVAR+2]
		push	word [U_$CLASSES_$$_CURRENTTHREADVAR]
		call	ax
		mov	bx,ax
		jmp	..@j10288
..@j10287:
		mov	bx,word U_$CLASSES_$$_CURRENTTHREADVAR+2
..@j10288:
		mov	bx,word [bx]
		mov	ax,word [bp+4]
		mov	word [bx+11],ax
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_STHREADEXTERNAL
EXTERN	VMT_$CLASSES_$$_ETHREADEXTERNALEXCEPTION
EXTERN	U_$CLASSES_$$_CURRENTTHREADVAR
EXTERN	FPC_THREADVAR_RELOCATE
