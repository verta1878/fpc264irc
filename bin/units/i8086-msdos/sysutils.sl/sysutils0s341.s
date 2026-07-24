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
	GLOBAL SYSUTILS_$$_TRYSTRTODATETIME$SHORTSTRING$TDATETIME$$BOOLEAN
SYSUTILS_$$_TRYSTRTODATETIME$SHORTSTRING$TDATETIME$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	word [bp-18],0
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
		jne	..@j12175
		lea	ax,[bp-18]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-18]
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
		push	ax
		call	SYSUTILS_$$_TRYSTRTODATETIME$ANSISTRING$TDATETIME$TFORMATSETTINGS$$BOOLEAN
		mov	byte [bp-1],al
..@j12175:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j12176
		call	FPC_RERAISE
..@j12176:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS_$$_TRYSTRTODATETIME$ANSISTRING$TDATETIME$TFORMATSETTINGS$$BOOLEAN
EXTERN	TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
EXTERN	fpc_shortstr_to_ansistr
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
