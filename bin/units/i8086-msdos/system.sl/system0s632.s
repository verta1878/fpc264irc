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
	GLOBAL SYSTEM_$$_RELEASEEXCEPTIONOBJECT
SYSTEM_$$_RELEASEEXCEPTIONOBJECT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15435
		push	word [U_$SYSTEM_$$_EXCEPTOBJECTSTACK+2]
		push	word [U_$SYSTEM_$$_EXCEPTOBJECTSTACK]
		call	ax
		mov	bx,ax
		jmp	..@j15436
..@j15435:
		mov	bx,word U_$SYSTEM_$$_EXCEPTOBJECTSTACK+2
..@j15436:
		mov	ax,word [bx]
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jne	..@j15437
		jmp	..@j15438
..@j15437:
		mov	bx,word [bp-2]
		mov	dx,word [bx+6]
		mov	ax,word [bx+8]
		cmp	ax,0
		jg	..@j15439
		jl	..@j15440
		cmp	dx,0
		ja	..@j15439
		jmp	..@j15440
..@j15439:
		mov	bx,word [bp-2]
		sub	word [bx+6],1
		sbb	word [bx+8],0
..@j15440:
		jmp	..@j15441
..@j15438:
		mov	ax,231
		push	ax
		call	SYSTEM_$$_RUNERROR$WORD
..@j15441:
		mov	sp,bp
		pop	bp
		ret
EXTERN	SYSTEM_$$_RUNERROR$WORD
EXTERN	U_$SYSTEM_$$_EXCEPTOBJECTSTACK
EXTERN	FPC_THREADVAR_RELOCATE
