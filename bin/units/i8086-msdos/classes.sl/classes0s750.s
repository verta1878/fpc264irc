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
	GLOBAL CLASSES_$$_OBJECTTEXTTOBINARY$TSTREAM$TSTREAM
CLASSES_$$_OBJECTTEXTTOBINARY$TSTREAM$TSTREAM:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	ax,word VMT_$CLASSES_$$_TPARSER
		push	ax
		mov	ax,1
		push	ax
		push	word [bp+6]
		call	CLASSES$_$TPARSER_$__$$_CREATE$TSTREAM$$TPARSER
		mov	word [bp-2],ax
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
		jne	..@j16620
		push	word [bp+4]
		mov	ax,word [TC_$CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_SIGNATURE]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
		push	bp
		call	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_PROCESSOBJECT
..@j16620:
		call	FPC_POPADDRSTACK
		push	word [bp-2]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		pop	ax
		test	ax,ax
		je	..@j16621
		call	FPC_RERAISE
..@j16621:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_PROCESSOBJECT
EXTERN	CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
EXTERN	TC_$CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_SIGNATURE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	CLASSES$_$TPARSER_$__$$_CREATE$TSTREAM$$TPARSER
EXTERN	VMT_$CLASSES_$$_TPARSER
