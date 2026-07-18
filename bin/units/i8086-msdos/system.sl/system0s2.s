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
	GLOBAL SYSTEM_$$_GETINOUTRES$WORD
SYSTEM_$$_GETINOUTRES$WORD:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	word [bp-20],22784
		mov	word [bp-18],0
		lea	ax,[bp-20]
		push	ax
		call	FPC_MSDOS
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j13
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j14
..@j13:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j14:
		mov	ax,word [bp-20]
		mov	word [bx],ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j20
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21
..@j20:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21:
		mov	ax,word [bx]
		cmp	ax,19
		jb	..@j16
		sub	ax,19
		je	..@j17
		sub	ax,2
		je	..@j18
		sub	ax,11
		je	..@j19
		jmp	..@j16
..@j17:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j25
..@j24:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j25:
		mov	word [bx],150
		jmp	..@j15
..@j18:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j28
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j29
..@j28:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j29:
		mov	word [bx],152
		jmp	..@j15
..@j19:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j32
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j33
..@j32:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j33:
		mov	word [bx],5
		jmp	..@j15
..@j16:
..@j15:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j36
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j37
..@j36:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j37:
		cmp	word [bx],0
		je	..@j34
		jmp	..@j35
..@j34:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j40
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j41
..@j40:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j41:
		mov	ax,word [bp+4]
		mov	word [bx],ax
..@j35:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	FPC_MSDOS
