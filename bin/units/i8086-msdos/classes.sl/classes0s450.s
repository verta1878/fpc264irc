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
	GLOBAL CLASSES$_$TTHREAD_$__$$_CREATEANONYMOUSTHREAD$TPROCEDURE$$TTHREAD
CLASSES$_$TTHREAD_$__$$_CREATEANONYMOUSTHREAD$TPROCEDURE$$TTHREAD:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+4],0
		je	..@j10291
		jmp	..@j10292
..@j10291:
..@j10293:
		mov	ax,word VMT_$SYSUTILS_$$_EXCEPTION
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SNOPROCGIVEN+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j10293
		push	ax
		push	bp
		call	fpc_raiseexception
..@j10292:
		mov	ax,word VMT_$CLASSES_$$_TANONYMOUSTHREAD
		push	ax
		mov	ax,1
		push	ax
		push	word [bp+4]
		call	CLASSES$_$TANONYMOUSTHREAD_$__$$_CREATE$TPROCEDURE$$TANONYMOUSTHREAD
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TANONYMOUSTHREAD_$__$$_CREATE$TPROCEDURE$$TANONYMOUSTHREAD
EXTERN	VMT_$CLASSES_$$_TANONYMOUSTHREAD
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SNOPROCGIVEN
EXTERN	VMT_$SYSUTILS_$$_EXCEPTION
