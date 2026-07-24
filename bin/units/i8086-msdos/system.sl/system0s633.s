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
	GLOBAL fpc_pushexceptaddr
fpc_pushexceptaddr:
	GLOBAL FPC_PUSHEXCEPTADDR
FPC_PUSHEXCEPTADDR:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15448
		push	word [U_$SYSTEM_$$_EXCEPTADDRSTACK+2]
		push	word [U_$SYSTEM_$$_EXCEPTADDRSTACK]
		call	ax
		jmp	..@j15449
..@j15448:
		mov	ax,word U_$SYSTEM_$$_EXCEPTADDRSTACK+2
..@j15449:
		mov	word [bp-4],ax
		mov	si,word [bp+4]
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		mov	word [si+2],ax
		mov	bx,word [bp-4]
		mov	ax,word [bp+4]
		mov	word [bx],ax
		mov	bx,word [bp+4]
		mov	ax,word [bp+6]
		mov	word [bx],ax
		mov	bx,word [bp+4]
		mov	ax,word [bp+8]
		mov	word [bx+4],ax
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	U_$SYSTEM_$$_EXCEPTADDRSTACK
EXTERN	FPC_THREADVAR_RELOCATE
