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
	GLOBAL CLASSES$_$COLLECTIONSEQUAL$crc0ECFEF77_$$_STREAM_COLLECTION$TSTREAM$TCOLLECTION$TCOMPONENT
CLASSES$_$COLLECTIONSEQUAL$crc0ECFEF77_$$_STREAM_COLLECTION$TSTREAM$TCOLLECTION$TCOMPONENT:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	ax,word VMT_$CLASSES_$$_TWRITER
		push	ax
		mov	ax,1
		push	ax
		push	word [bp+8]
		mov	ax,4096
		push	ax
		call	CLASSES$_$TWRITER_$__$$_CREATE$TSTREAM$SMALLINT$$TWRITER
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
		jne	..@j15461
		push	word [bp-2]
		push	word [bp+4]
		mov	bx,word [bp-2]
		mov	bx,word [bx]
		mov	ax,word [bx+50]
		call	ax
		mov	bx,word [bp-2]
		mov	ax,word [bp+4]
		mov	word [bx+4],ax
		push	word [bp-2]
		push	word [bp+6]
		call	CLASSES$_$TWRITER_$__$$_WRITECOLLECTION$TCOLLECTION
..@j15461:
		call	FPC_POPADDRSTACK
		push	word [bp-2]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		pop	ax
		test	ax,ax
		je	..@j15462
		call	FPC_RERAISE
..@j15462:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_RERAISE
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TWRITER_$__$$_WRITECOLLECTION$TCOLLECTION
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	CLASSES$_$TWRITER_$__$$_CREATE$TSTREAM$SMALLINT$$TWRITER
EXTERN	VMT_$CLASSES_$$_TWRITER
