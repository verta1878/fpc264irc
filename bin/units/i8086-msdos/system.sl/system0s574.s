BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION text
	ALIGN 2
	GLOBAL fpc_class_cast_corbaintf
fpc_class_cast_corbaintf:
	GLOBAL FPC_CLASS_CAST_CORBAINTF
FPC_CLASS_CAST_CORBAINTF:
		push	bp
		mov	bp,sp
		sub	sp,4
		cmp	word [bp+6],0
		jne	..@j14434
		jmp	..@j14433
..@j14434:
		push	word [bp+6]
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-4]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$SHORTSTRING$formal$$BOOLEAN
		test	al,al
		jne	..@j14432
		jmp	..@j14433
..@j14432:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		jmp	..@j14443
..@j14433:
		mov	word [bp-2],0
..@j14443:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$SHORTSTRING$formal$$BOOLEAN
