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
	GLOBAL SYSUTILS_$$_STRTOBOOL$ANSISTRING$$BOOLEAN
SYSUTILS_$$_STRTOBOOL$ANSISTRING$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,8
		push	word [bp+4]
		lea	ax,[bp-1]
		push	ax
		call	SYSUTILS_$$_TRYSTRTOBOOL$ANSISTRING$BOOLEAN$$BOOLEAN
		test	al,al
		je	..@j7375
		jmp	..@j7376
..@j7375:
..@j7381:
		mov	ax,word VMT_$SYSUTILS_$$_ECONVERTERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SINVALIDBOOLEAN+2]
		mov	dx,word [bp+4]
		mov	ax,0
		mov	word [bp-6],dx
		mov	word [bp-4],ax
		mov	word [bp-8],11
		lea	ax,[bp-8]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j7381
		push	ax
		push	bp
		call	fpc_raiseexception
..@j7376:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$SYSCONST_$$_SINVALIDBOOLEAN
EXTERN	VMT_$SYSUTILS_$$_ECONVERTERROR
EXTERN	SYSUTILS_$$_TRYSTRTOBOOL$ANSISTRING$BOOLEAN$$BOOLEAN
