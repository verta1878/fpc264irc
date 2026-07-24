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
	GLOBAL CLASSES_$$_REGISTERINTEGERCONSTS$POINTER$TIDENTTOINT$TINTTOIDENT
CLASSES_$$_REGISTERINTEGERCONSTS$POINTER$TIDENTTOINT$TINTTOIDENT:
		push	bp
		mov	bp,sp
		push	word [U_$CLASSES_$$_INTCONSTLIST]
		mov	ax,word VMT_$CLASSES_$$_TINTCONST
		push	ax
		mov	ax,1
		push	ax
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TINTCONST_$__$$_CREATE$PTYPEINFO$TIDENTTOINT$TINTTOIDENT$$TINTCONST
		push	ax
		call	CLASSES$_$TTHREADLIST_$__$$_ADD$POINTER
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$TTHREADLIST_$__$$_ADD$POINTER
EXTERN	CLASSES$_$TINTCONST_$__$$_CREATE$PTYPEINFO$TIDENTTOINT$TINTTOIDENT$$TINTCONST
EXTERN	VMT_$CLASSES_$$_TINTCONST
EXTERN	U_$CLASSES_$$_INTCONSTLIST
