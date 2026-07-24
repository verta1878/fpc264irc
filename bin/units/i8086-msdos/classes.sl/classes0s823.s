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
	GLOBAL CLASSES$_$TREADER_$__$$_READCOLLECTION$TCOLLECTION
CLASSES$_$TREADER_$__$$_READCOLLECTION$TCOLLECTION:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+74]
		call	ax
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_ENDOFLIST$$BOOLEAN
		test	al,al
		je	..@j18963
		jmp	..@j18964
..@j18963:
		push	word [bp+4]
		call	CLASSES$_$TCOLLECTION_$__$$_CLEAR
..@j18964:
		jmp	..@j18970
	ALIGN 2
..@j18969:
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_READLISTBEGIN
		push	word [bp+4]
		call	CLASSES$_$TCOLLECTION_$__$$_ADD$$TCOLLECTIONITEM
		mov	word [bp-2],ax
		jmp	..@j18979
	ALIGN 2
..@j18978:
		push	word [bp+6]
		push	word [bp-2]
		call	CLASSES$_$TREADER_$__$$_READPROPERTY$TPERSISTENT
..@j18979:
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_NEXTVALUE$$TVALUETYPE
		test	ax,ax
		jne	..@j18978
		jmp	..@j18980
..@j18980:
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_READLISTEND
..@j18970:
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_ENDOFLIST$$BOOLEAN
		test	al,al
		jne	..@j18971
		jmp	..@j18969
..@j18971:
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+76]
		call	ax
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_READLISTEND
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TREADER_$__$$_READLISTEND
EXTERN	CLASSES$_$TREADER_$__$$_NEXTVALUE$$TVALUETYPE
EXTERN	CLASSES$_$TREADER_$__$$_READPROPERTY$TPERSISTENT
EXTERN	CLASSES$_$TCOLLECTION_$__$$_ADD$$TCOLLECTIONITEM
EXTERN	CLASSES$_$TREADER_$__$$_READLISTBEGIN
EXTERN	CLASSES$_$TCOLLECTION_$__$$_CLEAR
EXTERN	CLASSES$_$TREADER_$__$$_ENDOFLIST$$BOOLEAN
