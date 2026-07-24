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
	GLOBAL SYSTEM_$$_ACQUIREEXCEPTIONOBJECT$$POINTER
SYSTEM_$$_ACQUIREEXCEPTIONOBJECT$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15422
		push	word [U_$SYSTEM_$$_EXCEPTOBJECTSTACK+2]
		push	word [U_$SYSTEM_$$_EXCEPTOBJECTSTACK]
		call	ax
		mov	bx,ax
		jmp	..@j15423
..@j15422:
		mov	bx,word U_$SYSTEM_$$_EXCEPTOBJECTSTACK+2
..@j15423:
		mov	ax,word [bx]
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		jne	..@j15424
		jmp	..@j15425
..@j15424:
		mov	bx,word [bp-4]
		add	word [bx+6],1
		adc	word [bx+8],0
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		jmp	..@j15428
..@j15425:
		mov	ax,231
		push	ax
		call	SYSTEM_$$_RUNERROR$WORD
..@j15428:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
EXTERN	SYSTEM_$$_RUNERROR$WORD
EXTERN	U_$SYSTEM_$$_EXCEPTOBJECTSTACK
EXTERN	FPC_THREADVAR_RELOCATE
