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
	GLOBAL CLASSES$_$TSTREAM_$__$$_WRITEDESCENDENT$TCOMPONENT$TCOMPONENT
CLASSES$_$TSTREAM_$__$$_WRITEDESCENDENT$TCOMPONENT$TCOMPONENT:
		push	bp
		mov	bp,sp
		sub	sp,32
		mov	ax,word VMT_$CLASSES_$$_TBINARYOBJECTWRITER
		push	ax
		mov	ax,1
		push	ax
		push	word [bp+8]
		mov	ax,4096
		push	ax
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_CREATE$TSTREAM$SMALLINT$$TBINARYOBJECTWRITER
		mov	word [bp-2],ax
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
		jne	..@j1160
		mov	ax,word VMT_$CLASSES_$$_TWRITER
		push	ax
		mov	ax,1
		push	ax
		push	word [bp-2]
		call	CLASSES$_$TWRITER_$__$$_CREATE$TABSTRACTOBJECTWRITER$$TWRITER
		mov	word [bp-4],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-30]
		push	ax
		lea	ax,[bp-24]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j1171
		push	word [bp-4]
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TWRITER_$__$$_WRITEDESCENDENT$TCOMPONENT$TCOMPONENT
..@j1171:
		call	FPC_POPADDRSTACK
		push	word [bp-4]
		mov	ax,1
		push	ax
		mov	bx,word [bp-4]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
		pop	ax
		test	ax,ax
		je	..@j1172
		call	FPC_RERAISE
..@j1172:
..@j1160:
		call	FPC_POPADDRSTACK
		push	word [bp-2]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		pop	ax
		test	ax,ax
		je	..@j1161
		call	FPC_RERAISE
..@j1161:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TWRITER_$__$$_WRITEDESCENDENT$TCOMPONENT$TCOMPONENT
EXTERN	CLASSES$_$TWRITER_$__$$_CREATE$TABSTRACTOBJECTWRITER$$TWRITER
EXTERN	VMT_$CLASSES_$$_TWRITER
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	CLASSES$_$TBINARYOBJECTWRITER_$__$$_CREATE$TSTREAM$SMALLINT$$TBINARYOBJECTWRITER
EXTERN	VMT_$CLASSES_$$_TBINARYOBJECTWRITER
