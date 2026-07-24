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
	GLOBAL SYSUTILS_$$_APPLICATIONNAME$$ANSISTRING
SYSUTILS_$$_APPLICATIONNAME$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	word [bp-18],0
		mov	word [bp-16],0
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j13289
		cmp	word [U_$SYSUTILS_$$_ONGETAPPLICATIONNAME],0
		jne	..@j13291
		jmp	..@j13292
..@j13291:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [U_$SYSUTILS_$$_ONGETAPPLICATIONNAME]
		call	ax
		jmp	..@j13295
..@j13292:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	ax,0
		push	ax
		call	OBJPAS_$$_PARAMSTR$SMALLINT$$ANSISTRING
		push	word [bp-18]
		call	SYSUTILS_$$_EXTRACTFILENAME$RAWBYTESTRING$$RAWBYTESTRING
		push	word [bp-16]
		mov	ax,0
		push	ax
		call	SYSUTILS_$$_CHANGEFILEEXT$RAWBYTESTRING$RAWBYTESTRING$$RAWBYTESTRING
..@j13295:
..@j13289:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j13290
		call	FPC_RERAISE
..@j13290:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS_$$_CHANGEFILEEXT$RAWBYTESTRING$RAWBYTESTRING$$RAWBYTESTRING
EXTERN	SYSUTILS_$$_EXTRACTFILENAME$RAWBYTESTRING$$RAWBYTESTRING
EXTERN	OBJPAS_$$_PARAMSTR$SMALLINT$$ANSISTRING
EXTERN	U_$SYSUTILS_$$_ONGETAPPLICATIONNAME
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
