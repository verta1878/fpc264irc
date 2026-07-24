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
	GLOBAL SYSUTILS_$$_STRINGTOGUID$ANSISTRING$$TGUID
SYSUTILS_$$_STRINGTOGUID$ANSISTRING$$TGUID:
		push	bp
		mov	bp,sp
		sub	sp,6
		push	word [bp+4]
		mov	ax,word [bp+6]
		push	ax
		call	SYSUTILS_$$_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN
		test	al,al
		je	..@j13728
		jmp	..@j13729
..@j13728:
..@j13734:
		mov	ax,word VMT_$SYSUTILS_$$_ECONVERTERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SINVALIDGUID+2]
		mov	dx,word [bp+4]
		mov	ax,0
		mov	word [bp-4],dx
		mov	word [bp-2],ax
		mov	word [bp-6],11
		lea	ax,[bp-6]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j13734
		push	ax
		push	bp
		call	fpc_raiseexception
..@j13729:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$SYSCONST_$$_SINVALIDGUID
EXTERN	VMT_$SYSUTILS_$$_ECONVERTERROR
EXTERN	SYSUTILS_$$_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN
