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
	GLOBAL SYSTEM_$$_STACKTOP$$POINTER
SYSTEM_$$_STACKTOP$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j17546
		push	word [U_$SYSTEM_$$_STACKBOTTOM+2]
		push	word [U_$SYSTEM_$$_STACKBOTTOM]
		call	ax
		mov	word [bp-4],ax
		jmp	..@j17547
..@j17546:
		mov	ax,word U_$SYSTEM_$$_STACKBOTTOM+2
		mov	word [bp-4],ax
..@j17547:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j17548
		push	word [U_$SYSTEM_$$_STACKLENGTH+2]
		push	word [U_$SYSTEM_$$_STACKLENGTH]
		call	ax
		mov	bx,ax
		jmp	..@j17549
..@j17548:
		mov	bx,word U_$SYSTEM_$$_STACKLENGTH+2
..@j17549:
		mov	si,word [bp-4]
		mov	dx,word [si]
		mov	ax,word [bx]
		add	ax,dx
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
EXTERN	U_$SYSTEM_$$_STACKLENGTH
EXTERN	U_$SYSTEM_$$_STACKBOTTOM
EXTERN	FPC_THREADVAR_RELOCATE
