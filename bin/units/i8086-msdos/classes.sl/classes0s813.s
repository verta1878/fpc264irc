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
	GLOBAL CLASSES$_$TREADER_$__$$_FINDMETHOD$TCOMPONENT$ANSISTRING$$NEARPOINTER
CLASSES$_$TREADER_$__$$_FINDMETHOD$TCOMPONENT$ANSISTRING$$NEARPOINTER:
		push	bp
		mov	bp,sp
		sub	sp,260
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-259]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_to_shortstr
		lea	ax,[bp-259]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_METHODADDRESS$SHORTSTRING$$NEARPOINTER
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		mov	al,0
		jne	..@j18660
		inc	ax
..@j18660:
		mov	byte [bp-3],al
		mov	bx,word [bp+8]
		cmp	word [bx+19],0
		jne	..@j18661
		jmp	..@j18662
..@j18661:
		mov	bx,word [bp+8]
		push	word [bx+21]
		push	word [bp+8]
		push	word [bp+4]
		lea	ax,[bp-2]
		push	ax
		lea	ax,[bp-3]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+19]
		call	ax
..@j18662:
		cmp	byte [bp-3],0
		jne	..@j18673
		jmp	..@j18674
..@j18673:
..@j18675:
		mov	ax,word VMT_$CLASSES_$$_EREADERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SINVALIDPROPERTYVALUE+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j18675
		push	ax
		push	bp
		call	fpc_raiseexception
..@j18674:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SINVALIDPROPERTYVALUE
EXTERN	VMT_$CLASSES_$$_EREADERROR
EXTERN	SYSTEM$_$TOBJECT_$__$$_METHODADDRESS$SHORTSTRING$$NEARPOINTER
EXTERN	fpc_ansistr_to_shortstr
