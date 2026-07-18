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
	GLOBAL fpc_class_as_corbaintf
fpc_class_as_corbaintf:
	GLOBAL FPC_CLASS_AS_CORBAINTF
FPC_CLASS_AS_CORBAINTF:
		push	bp
		mov	bp,sp
		sub	sp,4
		cmp	word [bp+6],0
		jne	..@j14542
		jmp	..@j14543
..@j14542:
		mov	word [bp-4],0
		push	word [bp+6]
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-4]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$SHORTSTRING$formal$$BOOLEAN
		test	al,al
		je	..@j14546
		jmp	..@j14547
..@j14546:
		mov	ax,0
		push	ax
		mov	ax,219
		push	ax
		call	FPC_HANDLEERROR
..@j14547:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		jmp	..@j14558
..@j14543:
		mov	word [bp-2],0
..@j14558:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_HANDLEERROR
EXTERN	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$SHORTSTRING$formal$$BOOLEAN
