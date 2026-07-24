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
	GLOBAL CLASSES_$$_ENDGLOBALLOADING
CLASSES_$$_ENDGLOBALLOADING:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15340
		push	word [U_$CLASSES_$$_GLOBALLOADED+2]
		push	word [U_$CLASSES_$$_GLOBALLOADED]
		call	ax
		mov	bx,ax
		jmp	..@j15341
..@j15340:
		mov	bx,word U_$CLASSES_$$_GLOBALLOADED+2
..@j15341:
		push	word [bx]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15346
		push	word [U_$CLASSES_$$_GLOBALLISTS+2]
		push	word [U_$CLASSES_$$_GLOBALLISTS]
		call	ax
		mov	bx,ax
		jmp	..@j15347
..@j15346:
		mov	bx,word U_$CLASSES_$$_GLOBALLISTS+2
..@j15347:
		push	word [bx]
		call	CLASSES$_$TFPLIST_$__$$_LAST$$POINTER
		mov	word [bp-2],ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15348
		push	word [U_$CLASSES_$$_GLOBALLOADED+2]
		push	word [U_$CLASSES_$$_GLOBALLOADED]
		call	ax
		mov	bx,ax
		jmp	..@j15349
..@j15348:
		mov	bx,word U_$CLASSES_$$_GLOBALLOADED+2
..@j15349:
		mov	ax,word [bp-2]
		mov	word [bx],ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15352
		push	word [U_$CLASSES_$$_GLOBALLISTS+2]
		push	word [U_$CLASSES_$$_GLOBALLISTS]
		call	ax
		mov	bx,ax
		jmp	..@j15353
..@j15352:
		mov	bx,word U_$CLASSES_$$_GLOBALLISTS+2
..@j15353:
		push	word [bx]
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15356
		push	word [U_$CLASSES_$$_GLOBALLISTS+2]
		push	word [U_$CLASSES_$$_GLOBALLISTS]
		call	ax
		mov	bx,ax
		jmp	..@j15357
..@j15356:
		mov	bx,word U_$CLASSES_$$_GLOBALLISTS+2
..@j15357:
		mov	bx,word [bx]
		mov	ax,word [bx+4]
		dec	ax
		push	ax
		call	CLASSES$_$TFPLIST_$__$$_DELETE$SMALLINT
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15360
		push	word [U_$CLASSES_$$_GLOBALLISTS+2]
		push	word [U_$CLASSES_$$_GLOBALLISTS]
		call	ax
		mov	bx,ax
		jmp	..@j15361
..@j15360:
		mov	bx,word U_$CLASSES_$$_GLOBALLISTS+2
..@j15361:
		mov	bx,word [bx]
		cmp	word [bx+4],0
		je	..@j15358
		jmp	..@j15359
..@j15358:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15364
		push	word [U_$CLASSES_$$_GLOBALLISTS+2]
		push	word [U_$CLASSES_$$_GLOBALLISTS]
		call	ax
		mov	bx,ax
		jmp	..@j15365
..@j15364:
		mov	bx,word U_$CLASSES_$$_GLOBALLISTS+2
..@j15365:
		push	word [bx]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15368
		push	word [U_$CLASSES_$$_GLOBALLISTS+2]
		push	word [U_$CLASSES_$$_GLOBALLISTS]
		call	ax
		mov	bx,ax
		jmp	..@j15369
..@j15368:
		mov	bx,word U_$CLASSES_$$_GLOBALLISTS+2
..@j15369:
		mov	word [bx],0
..@j15359:
		mov	sp,bp
		pop	bp
		ret
EXTERN	CLASSES$_$TFPLIST_$__$$_DELETE$SMALLINT
EXTERN	CLASSES$_$TFPLIST_$__$$_LAST$$POINTER
EXTERN	U_$CLASSES_$$_GLOBALLISTS
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	U_$CLASSES_$$_GLOBALLOADED
EXTERN	FPC_THREADVAR_RELOCATE
