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
	GLOBAL fpc_reraise
fpc_reraise:
	GLOBAL FPC_RERAISE
FPC_RERAISE:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15673
		push	word [U_$SYSTEM_$$_EXCEPTADDRSTACK+2]
		push	word [U_$SYSTEM_$$_EXCEPTADDRSTACK]
		call	ax
		mov	bx,ax
		jmp	..@j15674
..@j15673:
		mov	bx,word U_$SYSTEM_$$_EXCEPTADDRSTACK+2
..@j15674:
		mov	ax,word [bx]
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		je	..@j15675
		jmp	..@j15676
..@j15675:
		call	SYSTEM_$$_DOUNHANDLEDEXCEPTION
..@j15676:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15679
		push	word [U_$SYSTEM_$$_EXCEPTOBJECTSTACK+2]
		push	word [U_$SYSTEM_$$_EXCEPTOBJECTSTACK]
		call	ax
		mov	bx,ax
		jmp	..@j15680
..@j15679:
		mov	bx,word U_$SYSTEM_$$_EXCEPTOBJECTSTACK+2
..@j15680:
		mov	bx,word [bx]
		mov	word [bx+6],0
		mov	word [bx+8],0
		mov	bx,word [bp-2]
		mov	ax,word [bx]
		push	ax
		mov	ax,1
		push	ax
		call	FPC_LONGJMP
		mov	sp,bp
		pop	bp
		ret
EXTERN	FPC_LONGJMP
EXTERN	U_$SYSTEM_$$_EXCEPTOBJECTSTACK
EXTERN	SYSTEM_$$_DOUNHANDLEDEXCEPTION
EXTERN	U_$SYSTEM_$$_EXCEPTADDRSTACK
EXTERN	FPC_THREADVAR_RELOCATE
