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
	GLOBAL fpc_popaddrstack
fpc_popaddrstack:
	GLOBAL FPC_POPADDRSTACK
FPC_POPADDRSTACK:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15601
		push	word [U_$SYSTEM_$$_EXCEPTADDRSTACK+2]
		push	word [U_$SYSTEM_$$_EXCEPTADDRSTACK]
		call	ax
		jmp	..@j15602
..@j15601:
		mov	ax,word U_$SYSTEM_$$_EXCEPTADDRSTACK+2
..@j15602:
		mov	word [bp-2],ax
		mov	bx,word [bp-2]
		cmp	word [bx],0
		je	..@j15603
		jmp	..@j15604
..@j15603:
		mov	ax,0
		push	ax
		mov	ax,255
		push	ax
		call	SYSTEM_$$_HALT$LONGINT
		jmp	..@j15607
..@j15604:
		mov	bx,word [bp-2]
		mov	bx,word [bx]
		mov	si,word [bp-2]
		mov	ax,word [bx+2]
		mov	word [si],ax
..@j15607:
		mov	sp,bp
		pop	bp
		ret
EXTERN	SYSTEM_$$_HALT$LONGINT
EXTERN	U_$SYSTEM_$$_EXCEPTADDRSTACK
EXTERN	FPC_THREADVAR_RELOCATE
