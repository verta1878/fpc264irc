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
	GLOBAL CLASSES$_$TLIST_$__$$_DODESTUNIQUE$TLIST$TLIST
CLASSES$_$TLIST_$__$$_DODESTUNIQUE$TLIST$TLIST:
		push	bp
		mov	bp,sp
		sub	sp,16
		cmp	word [bp+4],0
		jne	..@j6267
		jmp	..@j6268
..@j6267:
		push	bp
		push	word [bp+4]
		push	word [bp+6]
		call	CLASSES$_$TLIST_$_DODESTUNIQUE$TLIST$TLIST_$$_MOVEELEMENTS$TLIST$TLIST
		jmp	..@j6275
..@j6268:
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
		jne	..@j6276
		mov	ax,word VMT_$CLASSES_$$_TLIST
		push	ax
		mov	ax,1
		push	ax
		call	CLASSES$_$TLIST_$__$$_CREATE$$TLIST
		mov	word [bp-2],ax
		push	word [bp-2]
		push	word [bp+8]
		call	CLASSES$_$TLIST_$__$$_COPYMOVE$TLIST
		push	bp
		push	word [bp+6]
		push	word [bp-2]
		call	CLASSES$_$TLIST_$_DODESTUNIQUE$TLIST$TLIST_$$_MOVEELEMENTS$TLIST$TLIST
..@j6276:
		call	FPC_POPADDRSTACK
		push	word [bp-2]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		pop	ax
		test	ax,ax
		je	..@j6277
		call	FPC_RERAISE
..@j6277:
..@j6275:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TLIST_$__$$_COPYMOVE$TLIST
EXTERN	CLASSES$_$TLIST_$__$$_CREATE$$TLIST
EXTERN	VMT_$CLASSES_$$_TLIST
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	CLASSES$_$TLIST_$_DODESTUNIQUE$TLIST$TLIST_$$_MOVEELEMENTS$TLIST$TLIST
