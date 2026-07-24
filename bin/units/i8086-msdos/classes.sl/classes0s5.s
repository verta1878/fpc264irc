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
	GLOBAL CLASSES_$$_BITSERRORFMT$ANSISTRING$array_of_const
CLASSES_$$_BITSERRORFMT$ANSISTRING$array_of_const:
		push	bp
		mov	bp,sp
		mov	ax,word VMT_$CLASSES_$$_EBITSERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [bp+8]
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
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
		ret	6
EXTERN	fpc_raiseexception
EXTERN	SYSTEM_$$_GET_CALLER_FRAME$POINTER$NEARPOINTER$$POINTER
EXTERN	SYSTEM_$$_GET_CALLER_ADDR$POINTER$NEARPOINTER$$NEARPOINTER
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	VMT_$CLASSES_$$_EBITSERROR
