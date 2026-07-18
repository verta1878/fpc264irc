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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_VALIDATERENAME$TCOMPONENT$ANSISTRING$ANSISTRING
CLASSES$_$TCOMPONENT_$__$$_VALIDATERENAME$TCOMPONENT$ANSISTRING$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,6
		cmp	word [bp+8],0
		jne	..@j12488
		jmp	..@j12485
..@j12488:
		push	word [bp+6]
		push	word [bp+4]
		call	SYSUTILS_$$_COMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT
		test	ax,ax
		jne	..@j12487
		jmp	..@j12485
..@j12487:
		mov	bx,word [bp+8]
		mov	ax,word [bx+6]
		cmp	ax,word [bp+10]
		je	..@j12486
		jmp	..@j12485
..@j12486:
		push	word [bp+10]
		push	word [bp+4]
		call	CLASSES$_$TCOMPONENT_$__$$_FINDCOMPONENT$ANSISTRING$$TCOMPONENT
		test	ax,ax
		jne	..@j12484
		jmp	..@j12485
..@j12484:
..@j12497:
		mov	ax,word VMT_$CLASSES_$$_ECOMPONENTERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SDUPLICATENAME+2]
		mov	ax,word [bp+4]
		mov	dx,0
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	word [bp-6],11
		lea	ax,[bp-6]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j12497
		push	ax
		push	bp
		call	fpc_raiseexception
..@j12485:
		mov	bx,word [bp+10]
		test	word [bx+22],16
		jne	..@j12516
		jmp	..@j12515
..@j12516:
		mov	bx,word [bp+10]
		cmp	word [bx+6],0
		jne	..@j12514
		jmp	..@j12515
..@j12514:
		mov	bx,word [bp+10]
		push	word [bx+6]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		mov	bx,word [bx]
		mov	ax,word [bx+88]
		call	ax
..@j12515:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SDUPLICATENAME
EXTERN	VMT_$CLASSES_$$_ECOMPONENTERROR
EXTERN	CLASSES$_$TCOMPONENT_$__$$_FINDCOMPONENT$ANSISTRING$$TCOMPONENT
EXTERN	SYSUTILS_$$_COMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT
