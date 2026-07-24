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
	GLOBAL SYSTEM_$$_CHDIR$RAWBYTESTRING
SYSTEM_$$_CHDIR$RAWBYTESTRING:
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
		jne	..@j25437
		cmp	word [bp+4],0
		je	..@j25439
		jmp	..@j25441
..@j25441:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j25442
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j25443
..@j25442:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j25443:
		cmp	word [bx],0
		jne	..@j25439
		jmp	..@j25440
..@j25439:
		jmp	..@j25437
..@j25440:
		lea	ax,[bp-16]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_TOSINGLEBYTEFILESYSTEMENCODEDFILENAME$RAWBYTESTRING$$RAWBYTESTRING
		push	word [bp-16]
		call	SYSTEM_$$_DO_CHDIR$RAWBYTESTRING
..@j25437:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j25438
		call	FPC_RERAISE
..@j25438:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_DO_CHDIR$RAWBYTESTRING
EXTERN	SYSTEM_$$_TOSINGLEBYTEFILESYSTEMENCODEDFILENAME$RAWBYTESTRING$$RAWBYTESTRING
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
