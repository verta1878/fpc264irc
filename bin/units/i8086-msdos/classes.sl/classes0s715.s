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
	GLOBAL CLASSES_$$_WRITECOMPONENTRESFILE$ANSISTRING$TCOMPONENT
CLASSES_$$_WRITECOMPONENTRESFILE$ANSISTRING$TCOMPONENT:
		push	bp
		mov	bp,sp
		sub	sp,288
		mov	word [bp-32],0
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
		jne	..@j15166
		mov	ax,word VMT_$CLASSES_$$_TFILESTREAM
		push	ax
		mov	ax,1
		push	ax
		push	word [bp+6]
		mov	ax,-256
		push	ax
		call	CLASSES$_$TFILESTREAM_$__$$_CREATE$ANSISTRING$WORD$$TFILESTREAM
		mov	word [bp-2],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-28]
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j15178
		push	word [bp-2]
		lea	ax,[bp-32]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-288]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
		lea	ax,[bp-288]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-32]
		push	word [bp+4]
		call	CLASSES$_$TSTREAM_$__$$_WRITECOMPONENTRES$ANSISTRING$TCOMPONENT
..@j15178:
		call	FPC_POPADDRSTACK
		push	word [bp-2]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		pop	ax
		test	ax,ax
		je	..@j15179
		call	FPC_RERAISE
..@j15179:
..@j15166:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-32]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j15167
		call	FPC_RERAISE
..@j15167:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_RERAISE
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TSTREAM_$__$$_WRITECOMPONENTRES$ANSISTRING$TCOMPONENT
EXTERN	fpc_shortstr_to_ansistr
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
EXTERN	CLASSES$_$TFILESTREAM_$__$$_CREATE$ANSISTRING$WORD$$TFILESTREAM
EXTERN	VMT_$CLASSES_$$_TFILESTREAM
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
