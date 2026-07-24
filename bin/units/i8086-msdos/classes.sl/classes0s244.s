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
	GLOBAL CLASSES$_$TFPLIST_$__$$_DODESTUNIQUE$TFPLIST$TFPLIST
CLASSES$_$TFPLIST_$__$$_DODESTUNIQUE$TFPLIST$TFPLIST:
		push	bp
		mov	bp,sp
		sub	sp,16
		cmp	word [bp+4],0
		jne	..@j5321
		jmp	..@j5322
..@j5321:
		push	bp
		push	word [bp+4]
		push	word [bp+6]
		call	CLASSES$_$TFPLIST_$_DODESTUNIQUE$TFPLIST$TFPLIST_$$_MOVEELEMENTS$TFPLIST$TFPLIST
		jmp	..@j5329
..@j5322:
		mov	ax,1
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j5330
		mov	ax,word VMT_$CLASSES_$$_TFPLIST
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	word [bp-2],ax
		push	word [bp-2]
		push	word [bp+8]
		call	CLASSES$_$TFPLIST_$__$$_COPYMOVE$TFPLIST
		push	bp
		push	word [bp+6]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$_DODESTUNIQUE$TFPLIST$TFPLIST_$$_MOVEELEMENTS$TFPLIST$TFPLIST
..@j5330:
		call	FPC_POPADDRSTACK
		push	word [bp-2]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		pop	ax
		test	ax,ax
		je	..@j5331
		call	FPC_RERAISE
..@j5331:
..@j5329:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TFPLIST_$__$$_COPYMOVE$TFPLIST
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	VMT_$CLASSES_$$_TFPLIST
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	CLASSES$_$TFPLIST_$_DODESTUNIQUE$TFPLIST$TFPLIST_$$_MOVEELEMENTS$TFPLIST$TFPLIST
