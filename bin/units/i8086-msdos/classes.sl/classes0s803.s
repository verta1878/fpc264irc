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
	GLOBAL CLASSES$_$TREADER_$__$$_CREATE$TSTREAM$SMALLINT$$TREADER
CLASSES$_$TREADER_$__$$_CREATE$TSTREAM$SMALLINT$$TREADER:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+8],1
		je	..@j18404
		jmp	..@j18405
..@j18404:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+10],ax
..@j18405:
		cmp	word [bp+10],0
		je	..@j18410
		jmp	..@j18411
..@j18410:
		jmp	..@j18402
..@j18411:
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
		jne	..@j18414
		push	word [bp+10]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		cmp	word [bp+6],0
		je	..@j18423
		jmp	..@j18424
..@j18423:
..@j18425:
		mov	ax,word VMT_$CLASSES_$$_EREADERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SEMPTYSTREAMILLEGALREADER+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j18425
		push	ax
		push	bp
		call	fpc_raiseexception
..@j18424:
		push	word [bp+10]
		push	word [bp+6]
		push	word [bp+4]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		mov	bx,word [bp+10]
		mov	word [bx+9],ax
		cmp	word [bp+10],0
		jne	..@j18448
		jmp	..@j18447
..@j18448:
		cmp	word [bp+8],0
		jne	..@j18446
		jmp	..@j18447
..@j18446:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j18447:
..@j18414:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j18416
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
		jne	..@j18451
		cmp	word [bp+8],0
		jne	..@j18452
		jmp	..@j18453
..@j18452:
		push	word [bp+10]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j18453:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j18451:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j18458
		call	FPC_RAISE_NESTED
..@j18458:
		call	FPC_DONEEXCEPTION
		jmp	..@j18416
..@j18416:
..@j18402:
		mov	ax,word [bp+10]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SEMPTYSTREAMILLEGALREADER
EXTERN	VMT_$CLASSES_$$_EREADERROR
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
