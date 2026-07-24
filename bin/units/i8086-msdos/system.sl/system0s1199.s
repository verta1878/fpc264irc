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
	GLOBAL SYSTEM_$$_MKDIR$RAWBYTESTRING
SYSTEM_$$_MKDIR$RAWBYTESTRING:
		push	bp
		mov	bp,sp
		sub	sp,16
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
		jne	..@j25407
		cmp	word [bp+4],0
		je	..@j25409
		jmp	..@j25411
..@j25411:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j25412
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j25413
..@j25412:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j25413:
		cmp	word [bx],0
		jne	..@j25409
		jmp	..@j25410
..@j25409:
		jmp	..@j25407
..@j25410:
		lea	ax,[bp-16]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_TOSINGLEBYTEFILESYSTEMENCODEDFILENAME$RAWBYTESTRING$$RAWBYTESTRING
		push	word [bp-16]
		call	SYSTEM_$$_DO_MKDIR$RAWBYTESTRING
..@j25407:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j25408
		call	FPC_RERAISE
..@j25408:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_DO_MKDIR$RAWBYTESTRING
EXTERN	SYSTEM_$$_TOSINGLEBYTEFILESYSTEMENCODEDFILENAME$RAWBYTESTRING$$RAWBYTESTRING
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
