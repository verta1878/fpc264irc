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
	GLOBAL SYSUTILS_$$_DOFORMATERROR$LONGINT$ANSISTRING
SYSUTILS_$$_DOFORMATERROR$LONGINT$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	word [bp-2],0
		mov	ax,1
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j4019
		lea	ax,[bp-2]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
		mov	dx,word [bp+6]
		mov	ax,word [bp+8]
		test	ax,ax
		jne	..@j4030
		cmp	dx,1
		je	..@j4027
..@j4030:
		test	ax,ax
		jne	..@j4031
		cmp	dx,2
		je	..@j4028
..@j4031:
		test	ax,ax
		jne	..@j4032
		cmp	dx,3
		je	..@j4029
..@j4032:
		jmp	..@j4026
..@j4027:
..@j4033:
		mov	ax,word VMT_$SYSUTILS_$$_ECONVERTERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SINVALIDFORMAT+2]
		mov	ax,word [bp-2]
		mov	dx,0
		mov	word [bp-20],ax
		mov	word [bp-18],dx
		mov	word [bp-22],11
		lea	ax,[bp-22]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j4033
		push	ax
		push	bp
		call	fpc_raiseexception
		jmp	..@j4025
..@j4028:
..@j4050:
		mov	ax,word VMT_$SYSUTILS_$$_ECONVERTERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SARGUMENTMISSING+2]
		mov	dx,word [bp-2]
		mov	ax,0
		mov	word [bp-20],dx
		mov	word [bp-18],ax
		mov	word [bp-22],11
		lea	ax,[bp-22]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j4050
		push	ax
		push	bp
		call	fpc_raiseexception
		jmp	..@j4025
..@j4029:
..@j4067:
		mov	ax,word VMT_$SYSUTILS_$$_ECONVERTERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SINVALIDARGINDEX+2]
		mov	ax,word [bp-2]
		mov	dx,0
		mov	word [bp-20],ax
		mov	word [bp-18],dx
		mov	word [bp-22],11
		lea	ax,[bp-22]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j4067
		push	ax
		push	bp
		call	fpc_raiseexception
		jmp	..@j4025
..@j4026:
..@j4025:
..@j4019:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j4020
		call	FPC_RERAISE
..@j4020:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	RESSTR_$SYSCONST_$$_SINVALIDARGINDEX
EXTERN	RESSTR_$SYSCONST_$$_SARGUMENTMISSING
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$SYSCONST_$$_SINVALIDFORMAT
EXTERN	VMT_$SYSUTILS_$$_ECONVERTERROR
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
