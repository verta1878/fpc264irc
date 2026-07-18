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
	GLOBAL fpc_raiseexception
fpc_raiseexception:
	GLOBAL FPC_RAISEEXCEPTION
FPC_RAISEEXCEPTION:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15552
		push	word [U_$SYSTEM_$$_EXCEPTTRYLEVEL+2]
		push	word [U_$SYSTEM_$$_EXCEPTTRYLEVEL]
		call	ax
		mov	bx,ax
		jmp	..@j15553
..@j15552:
		mov	bx,word U_$SYSTEM_$$_EXCEPTTRYLEVEL+2
..@j15553:
		cmp	word [bx],0
		jne	..@j15550
		jmp	..@j15551
..@j15550:
		mov	ax,0
		push	ax
		mov	ax,217
		push	ax
		call	SYSTEM_$$_HALT$LONGINT
..@j15551:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15558
		push	word [U_$SYSTEM_$$_EXCEPTTRYLEVEL+2]
		push	word [U_$SYSTEM_$$_EXCEPTTRYLEVEL]
		call	ax
		mov	bx,ax
		jmp	..@j15559
..@j15558:
		mov	bx,word U_$SYSTEM_$$_EXCEPTTRYLEVEL+2
..@j15559:
		mov	word [bx],1
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	SYSTEM_$$_PUSHEXCEPTOBJECT$TOBJECT$NEARPOINTER$POINTER
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15568
		push	word [U_$SYSTEM_$$_EXCEPTTRYLEVEL+2]
		push	word [U_$SYSTEM_$$_EXCEPTTRYLEVEL]
		call	ax
		mov	bx,ax
		jmp	..@j15569
..@j15568:
		mov	bx,word U_$SYSTEM_$$_EXCEPTTRYLEVEL+2
..@j15569:
		mov	word [bx],0
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15572
		push	word [U_$SYSTEM_$$_EXCEPTADDRSTACK+2]
		push	word [U_$SYSTEM_$$_EXCEPTADDRSTACK]
		call	ax
		mov	bx,ax
		jmp	..@j15573
..@j15572:
		mov	bx,word U_$SYSTEM_$$_EXCEPTADDRSTACK+2
..@j15573:
		mov	ax,word [bx]
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		je	..@j15574
		jmp	..@j15575
..@j15574:
		call	SYSTEM_$$_DOUNHANDLEDEXCEPTION
..@j15575:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15578
		push	word [U_$SYSTEM_$$_EXCEPTOBJECTSTACK+2]
		push	word [U_$SYSTEM_$$_EXCEPTOBJECTSTACK]
		call	ax
		mov	bx,ax
		jmp	..@j15579
..@j15578:
		mov	bx,word U_$SYSTEM_$$_EXCEPTOBJECTSTACK+2
..@j15579:
		mov	ax,word [bx]
		mov	word [bp-2],ax
		cmp	word [TC_$SYSTEM_$$_RAISEPROC],0
		jne	..@j15582
		jmp	..@j15581
..@j15582:
		cmp	word [bp-2],0
		jne	..@j15580
		jmp	..@j15581
..@j15580:
		mov	ax,word [bp-2]
		mov	word [bp-6],ax
		mov	bx,word [bp-6]
		push	word [bx]
		mov	bx,word [bp-6]
		push	word [bx+2]
		mov	bx,word [bp-6]
		push	word [bx+12]
		mov	bx,word [bp-6]
		push	word [bx+10]
		mov	bx,word [bp-6]
		push	word [bx+14]
		mov	ax,word [TC_$SYSTEM_$$_RAISEPROC]
		call	ax
..@j15581:
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		push	ax
		mov	ax,1
		push	ax
		call	FPC_LONGJMP
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_LONGJMP
EXTERN	TC_$SYSTEM_$$_RAISEPROC
EXTERN	U_$SYSTEM_$$_EXCEPTOBJECTSTACK
EXTERN	SYSTEM_$$_DOUNHANDLEDEXCEPTION
EXTERN	U_$SYSTEM_$$_EXCEPTADDRSTACK
EXTERN	SYSTEM_$$_PUSHEXCEPTOBJECT$TOBJECT$NEARPOINTER$POINTER
EXTERN	SYSTEM_$$_HALT$LONGINT
EXTERN	U_$SYSTEM_$$_EXCEPTTRYLEVEL
EXTERN	FPC_THREADVAR_RELOCATE
