BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TDATAMODULE_$__$$_CREATENEW$TCOMPONENT$SMALLINT$$TDATAMODULE
CLASSES$_$TDATAMODULE_$__$$_CREATENEW$TCOMPONENT$SMALLINT$$TDATAMODULE:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+8],1
		je	..@j13402
		jmp	..@j13403
..@j13402:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+10],ax
..@j13403:
		cmp	word [bp+10],0
		je	..@j13408
		jmp	..@j13409
..@j13408:
		jmp	..@j13400
..@j13409:
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j13412
		push	word [bp+10]
		mov	ax,0
		push	ax
		push	word [bp+6]
		call	CLASSES$_$TCOMPONENT_$__$$_CREATE$TCOMPONENT$$TCOMPONENT
		mov	bx,word [bp+10]
		mov	word [bx+44],96
		cmp	word [U_$CLASSES_$$_ADDDATAMODULE],0
		jne	..@j13427
		jmp	..@j13426
..@j13427:
		cmp	word [bp+4],0
		jge	..@j13425
		jmp	..@j13426
..@j13425:
		push	word [U_$CLASSES_$$_ADDDATAMODULE+2]
		push	word [bp+10]
		mov	ax,word [U_$CLASSES_$$_ADDDATAMODULE]
		call	ax
..@j13426:
		cmp	word [bp+10],0
		jne	..@j13434
		jmp	..@j13433
..@j13434:
		cmp	word [bp+8],0
		jne	..@j13432
		jmp	..@j13433
..@j13432:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j13433:
..@j13412:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j13414
		mov	ax,1
		push	ax
		lea	ax,[bp-26]
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j13437
		cmp	word [bp+8],0
		jne	..@j13438
		jmp	..@j13439
..@j13438:
		push	word [bp+10]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j13439:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j13437:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j13444
		call	FPC_RAISE_NESTED
..@j13444:
		call	FPC_DONEEXCEPTION
		jmp	..@j13414
..@j13414:
..@j13400:
		mov	ax,word [bp+10]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	U_$CLASSES_$$_ADDDATAMODULE
EXTERN	CLASSES$_$TCOMPONENT_$__$$_CREATE$TCOMPONENT$$TCOMPONENT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
