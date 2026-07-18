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
	GLOBAL CLASSES_$$_BEGINGLOBALLOADING
CLASSES_$$_BEGINGLOBALLOADING:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15291
		push	word [U_$CLASSES_$$_GLOBALLISTS+2]
		push	word [U_$CLASSES_$$_GLOBALLISTS]
		call	ax
		mov	bx,ax
		jmp	..@j15292
..@j15291:
		mov	bx,word U_$CLASSES_$$_GLOBALLISTS+2
..@j15292:
		cmp	word [bx],0
		je	..@j15289
		jmp	..@j15290
..@j15289:
		mov	ax,word VMT_$CLASSES_$$_TFPLIST
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	word [bp-4],ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15299
		push	word [U_$CLASSES_$$_GLOBALLISTS+2]
		push	word [U_$CLASSES_$$_GLOBALLISTS]
		call	ax
		mov	bx,ax
		jmp	..@j15300
..@j15299:
		mov	bx,word U_$CLASSES_$$_GLOBALLISTS+2
..@j15300:
		mov	ax,word [bp-4]
		mov	word [bx],ax
..@j15290:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15303
		push	word [U_$CLASSES_$$_GLOBALLISTS+2]
		push	word [U_$CLASSES_$$_GLOBALLISTS]
		call	ax
		mov	bx,ax
		jmp	..@j15304
..@j15303:
		mov	bx,word U_$CLASSES_$$_GLOBALLISTS+2
..@j15304:
		push	word [bx]
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15307
		push	word [U_$CLASSES_$$_GLOBALLOADED+2]
		push	word [U_$CLASSES_$$_GLOBALLOADED]
		call	ax
		mov	bx,ax
		jmp	..@j15308
..@j15307:
		mov	bx,word U_$CLASSES_$$_GLOBALLOADED+2
..@j15308:
		push	word [bx]
		call	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
		mov	ax,word VMT_$CLASSES_$$_TFPLIST
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	word [bp-2],ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15315
		push	word [U_$CLASSES_$$_GLOBALLOADED+2]
		push	word [U_$CLASSES_$$_GLOBALLOADED]
		call	ax
		mov	bx,ax
		jmp	..@j15316
..@j15315:
		mov	bx,word U_$CLASSES_$$_GLOBALLOADED+2
..@j15316:
		mov	ax,word [bp-2]
		mov	word [bx],ax
		mov	sp,bp
		pop	bp
		ret
EXTERN	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
EXTERN	U_$CLASSES_$$_GLOBALLOADED
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	VMT_$CLASSES_$$_TFPLIST
EXTERN	U_$CLASSES_$$_GLOBALLISTS
EXTERN	FPC_THREADVAR_RELOCATE
