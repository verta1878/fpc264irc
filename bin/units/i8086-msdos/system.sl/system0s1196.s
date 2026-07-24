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
	GLOBAL SYSTEM_$$_DO_RMDIR$RAWBYTESTRING
SYSTEM_$$_DO_RMDIR$RAWBYTESTRING:
		push	bp
		mov	bp,sp
		push	word [bp+4]
		mov	ax,word _$SYSTEM$_Ld39
		push	ax
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j25246
		cmp	cx,0
		jne	..@j25246
		jmp	..@j25245
..@j25245:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j25253
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j25254
..@j25253:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j25254:
		mov	word [bx],16
		jmp	..@j25243
..@j25246:
		mov	ax,58
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_DOSDIR$BYTE$RAWBYTESTRING
..@j25243:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_DOSDIR$BYTE$RAWBYTESTRING
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	fpc_ansistr_compare_equal
EXTERN	_$SYSTEM$_Ld39
