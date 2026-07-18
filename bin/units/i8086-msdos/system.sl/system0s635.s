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
	GLOBAL SYSTEM_$$_DOUNHANDLEDEXCEPTION
SYSTEM_$$_DOUNHANDLEDEXCEPTION:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15524
		push	word [U_$SYSTEM_$$_EXCEPTOBJECTSTACK+2]
		push	word [U_$SYSTEM_$$_EXCEPTOBJECTSTACK]
		call	ax
		mov	bx,ax
		jmp	..@j15525
..@j15524:
		mov	bx,word U_$SYSTEM_$$_EXCEPTOBJECTSTACK+2
..@j15525:
		mov	ax,word [bx]
		mov	word [bp-2],ax
		cmp	word [TC_$SYSTEM_$$_EXCEPTPROC],0
		jne	..@j15528
		jmp	..@j15527
..@j15528:
		cmp	word [bp-2],0
		jne	..@j15526
		jmp	..@j15527
..@j15526:
		mov	ax,word [bp-2]
		mov	word [bp-4],ax
		mov	bx,word [bp-4]
		push	word [bx]
		mov	bx,word [bp-4]
		push	word [bx+2]
		mov	bx,word [bp-4]
		push	word [bx+12]
		mov	bx,word [bp-4]
		push	word [bx+10]
		mov	bx,word [bp-4]
		push	word [bx+14]
		mov	ax,word [TC_$SYSTEM_$$_EXCEPTPROC]
		call	ax
		mov	ax,0
		push	ax
		mov	ax,217
		push	ax
		call	SYSTEM_$$_HALT$LONGINT
..@j15527:
		cmp	word [TC_$SYSTEM_$$_ERRORADDR],0
		je	..@j15541
		jmp	..@j15542
..@j15541:
		mov	ax,217
		push	ax
		call	SYSTEM_$$_RUNERROR$WORD
		jmp	..@j15545
..@j15542:
		mov	ax,word [TC_$SYSTEM_$$_ERRORCODE]
		mov	dx,0
		push	dx
		push	ax
		call	SYSTEM_$$_HALT$LONGINT
..@j15545:
		mov	sp,bp
		pop	bp
		ret
EXTERN	TC_$SYSTEM_$$_ERRORCODE
EXTERN	SYSTEM_$$_RUNERROR$WORD
EXTERN	TC_$SYSTEM_$$_ERRORADDR
EXTERN	SYSTEM_$$_HALT$LONGINT
EXTERN	TC_$SYSTEM_$$_EXCEPTPROC
EXTERN	U_$SYSTEM_$$_EXCEPTOBJECTSTACK
EXTERN	FPC_THREADVAR_RELOCATE
