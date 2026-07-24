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
	GLOBAL fpc_stackcheck
fpc_stackcheck:
	GLOBAL FPC_STACKCHECK
FPC_STACKCHECK:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	byte [TC_$SYSTEM_$$_STACKERROR],0
		jne	..@j17662
		jmp	..@j17663
..@j17662:
		jmp	..@j17660
..@j17663:
		call	SYSTEM_$$_SPTR$$POINTER
		sub	ax,16384
		mov	word [bp-2],ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j17668
		push	word [U_$SYSTEM_$$_STACKBOTTOM+2]
		push	word [U_$SYSTEM_$$_STACKBOTTOM]
		call	ax
		mov	bx,ax
		jmp	..@j17669
..@j17668:
		mov	bx,word U_$SYSTEM_$$_STACKBOTTOM+2
..@j17669:
		mov	ax,word [bx]
		cmp	ax,word [bp-2]
		jae	..@j17666
		jmp	..@j17667
..@j17666:
		mov	byte [TC_$SYSTEM_$$_STACKERROR],1
		mov	ax,0
		push	ax
		mov	ax,202
		push	ax
		call	FPC_HANDLEERROR
..@j17667:
..@j17660:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_HANDLEERROR
EXTERN	U_$SYSTEM_$$_STACKBOTTOM
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	SYSTEM_$$_SPTR$$POINTER
EXTERN	TC_$SYSTEM_$$_STACKERROR
