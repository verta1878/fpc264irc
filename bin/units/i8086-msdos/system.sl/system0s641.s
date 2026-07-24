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
	GLOBAL fpc_catches
fpc_catches:
	GLOBAL FPC_CATCHES
FPC_CATCHES:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15689
		push	word [U_$SYSTEM_$$_EXCEPTOBJECTSTACK+2]
		push	word [U_$SYSTEM_$$_EXCEPTOBJECTSTACK]
		call	ax
		mov	bx,ax
		jmp	..@j15690
..@j15689:
		mov	bx,word U_$SYSTEM_$$_EXCEPTOBJECTSTACK+2
..@j15690:
		mov	ax,word [bx]
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		je	..@j15691
		jmp	..@j15692
..@j15691:
		mov	ax,0
		push	ax
		mov	ax,255
		push	ax
		call	SYSTEM_$$_HALT$LONGINT
..@j15692:
		cmp	word [bp+4],-1
		je	..@j15696
		jmp	..@j15697
..@j15697:
		push	word [bp+4]
		mov	bx,word [bp-4]
		push	word [bx]
		call	fpc_do_is
		test	al,al
		jne	..@j15696
		jmp	..@j15695
..@j15695:
		mov	word [bp-2],0
		jmp	..@j15704
..@j15696:
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		mov	word [bp-2],ax
..@j15704:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_do_is
EXTERN	SYSTEM_$$_HALT$LONGINT
EXTERN	U_$SYSTEM_$$_EXCEPTOBJECTSTACK
EXTERN	FPC_THREADVAR_RELOCATE
