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
	GLOBAL CLASSES$_$TSTREAM_$__$$_READNOTIMPLEMENTED
CLASSES$_$TSTREAM_$__$$_READNOTIMPLEMENTED:
		push	bp
		mov	bp,sp
		sub	sp,262
		mov	ax,word VMT_$CLASSES_$$_ESTREAMERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SSTREAMNOREADING+2]
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-262]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
		lea	ax,[bp-262]
		mov	word [bp-4],ax
		mov	word [bp-6],4
		lea	ax,[bp-6]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		push	bp
		mov	ax,0
		push	ax
		call	SYSTEM_$$_GET_CALLER_ADDR$POINTER$NEARPOINTER$$NEARPOINTER
		push	ax
		push	bp
		mov	ax,0
		push	ax
		call	SYSTEM_$$_GET_CALLER_FRAME$POINTER$NEARPOINTER$$POINTER
		push	ax
		call	fpc_raiseexception
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_raiseexception
EXTERN	SYSTEM_$$_GET_CALLER_FRAME$POINTER$NEARPOINTER$$POINTER
EXTERN	SYSTEM_$$_GET_CALLER_ADDR$POINTER$NEARPOINTER$$NEARPOINTER
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
EXTERN	RESSTR_$RTLCONSTS_$$_SSTREAMNOREADING
EXTERN	VMT_$CLASSES_$$_ESTREAMERROR
