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
	GLOBAL CLASSES$_$TSTREAM_$__$$_READCOMPONENT$TCOMPONENT$$TCOMPONENT
CLASSES$_$TSTREAM_$__$$_READCOMPONENT$TCOMPONENT$$TCOMPONENT:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	ax,word VMT_$CLASSES_$$_TREADER
		push	ax
		mov	ax,1
		push	ax
		push	word [bp+6]
		mov	ax,4096
		push	ax
		call	CLASSES$_$TREADER_$__$$_CREATE$TSTREAM$SMALLINT$$TREADER
		mov	word [bp-4],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j1109
		push	word [bp-4]
		push	word [bp+4]
		call	CLASSES$_$TREADER_$__$$_READROOTCOMPONENT$TCOMPONENT$$TCOMPONENT
		mov	word [bp-2],ax
..@j1109:
		call	FPC_POPADDRSTACK
		push	word [bp-4]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		pop	ax
		test	ax,ax
		je	..@j1110
		call	FPC_RERAISE
..@j1110:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TREADER_$__$$_READROOTCOMPONENT$TCOMPONENT$$TCOMPONENT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	CLASSES$_$TREADER_$__$$_CREATE$TSTREAM$SMALLINT$$TREADER
EXTERN	VMT_$CLASSES_$$_TREADER
