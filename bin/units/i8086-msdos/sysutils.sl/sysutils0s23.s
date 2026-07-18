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
	GLOBAL SYSUTILS_$$_GETDIRIO$BYTE$RAWBYTESTRING
SYSUTILS_$$_GETDIRIO$BYTE$RAWBYTESTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j583
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j584
..@j583:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j584:
		mov	ax,word [bx]
		mov	word [bp-2],ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j587
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j588
..@j587:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j588:
		mov	word [bx],0
		mov	al,byte [bp+6]
		mov	ah,0
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM_$$_GETDIR$BYTE$RAWBYTESTRING
		mov	ax,word [bp+4]
		push	ax
		push	word [U_$SYSTEM_$$_DEFAULTFILESYSTEMCODEPAGE]
		mov	ax,1
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j601
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j602
..@j601:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j602:
		mov	ax,word [bp-2]
		mov	word [bx],ax
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
EXTERN	U_$SYSTEM_$$_DEFAULTFILESYSTEMCODEPAGE
EXTERN	SYSTEM_$$_GETDIR$BYTE$RAWBYTESTRING
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
