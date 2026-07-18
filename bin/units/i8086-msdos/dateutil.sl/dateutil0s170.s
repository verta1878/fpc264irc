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
	GLOBAL DATEUTILS_$$_INVALIDDATEMONTHWEEKERROR$WORD$WORD$WORD$WORD
DATEUTILS_$$_INVALIDDATEMONTHWEEKERROR$WORD$WORD$WORD$WORD:
		push	bp
		mov	bp,sp
		sub	sp,24
..@j2972:
		mov	ax,word VMT_$SYSUTILS_$$_ECONVERTERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SERRINVALIDDATEMONTHWEEK+2]
		mov	ax,word [bp+10]
		mov	dx,0
		mov	word [bp-22],ax
		mov	word [bp-20],dx
		mov	word [bp-24],0
		mov	dx,word [bp+8]
		mov	ax,0
		mov	word [bp-16],dx
		mov	word [bp-14],ax
		mov	word [bp-18],0
		mov	ax,word [bp+6]
		mov	dx,0
		mov	word [bp-10],ax
		mov	word [bp-8],dx
		mov	word [bp-12],0
		mov	ax,word [bp+4]
		mov	dx,0
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	word [bp-6],0
		lea	ax,[bp-24]
		push	ax
		mov	ax,3
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j2972
		push	ax
		push	bp
		call	fpc_raiseexception
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$SYSCONST_$$_SERRINVALIDDATEMONTHWEEK
EXTERN	VMT_$SYSUTILS_$$_ECONVERTERROR
