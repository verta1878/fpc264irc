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
	GLOBAL CLASSES$_$TDATAMODULE_$__$$_DODESTROY
CLASSES$_$TDATAMODULE_$__$$_DODESTROY:
		push	bp
		mov	bp,sp
		sub	sp,28
		mov	bx,word [bp+4]
		cmp	word [bx+50],0
		jne	..@j13510
		jmp	..@j13511
..@j13510:
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
		jne	..@j13514
		mov	bx,word [bp+4]
		push	word [bx+52]
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	ax,word [bx+50]
		call	ax
..@j13514:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j13516
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
		jne	..@j13522
		cmp	word [U_$CLASSES_$$_APPLICATIONHANDLEEXCEPTION],0
		jne	..@j13523
		jmp	..@j13524
..@j13523:
		push	word [U_$CLASSES_$$_APPLICATIONHANDLEEXCEPTION+2]
		push	word [bp+4]
		mov	ax,word [U_$CLASSES_$$_APPLICATIONHANDLEEXCEPTION]
		call	ax
..@j13524:
..@j13522:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j13529
		call	FPC_RAISE_NESTED
..@j13529:
		call	FPC_DONEEXCEPTION
		jmp	..@j13516
..@j13516:
..@j13511:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	U_$CLASSES_$$_APPLICATIONHANDLEEXCEPTION
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
