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
	GLOBAL SYSUTILS_$$_STRTOINT$ANSISTRING$$LONGINT
SYSUTILS_$$_STRTOINT$ANSISTRING$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,12
		push	word [bp+4]
		lea	ax,[bp-6]
		push	ax
		call	fpc_val_longint_ansistr
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		cmp	word [bp-6],0
		jne	..@j3824
		jmp	..@j3825
..@j3824:
..@j3826:
		mov	ax,word VMT_$SYSUTILS_$$_ECONVERTERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SINVALIDINTEGER+2]
		mov	dx,word [bp+4]
		mov	ax,0
		mov	word [bp-10],dx
		mov	word [bp-8],ax
		mov	word [bp-12],11
		lea	ax,[bp-12]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j3826
		push	ax
		push	bp
		call	fpc_raiseexception
..@j3825:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$SYSCONST_$$_SINVALIDINTEGER
EXTERN	VMT_$SYSUTILS_$$_ECONVERTERROR
EXTERN	fpc_val_longint_ansistr
