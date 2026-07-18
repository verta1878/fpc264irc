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
	GLOBAL CLASSES$_$TREADER_$__$$_FINDCOMPONENTCLASS$ANSISTRING$$TCOMPONENTCLASS
CLASSES$_$TREADER_$__$$_FINDCOMPONENTCLASS$ANSISTRING$$TCOMPONENTCLASS:
		push	bp
		mov	bp,sp
		sub	sp,266
		mov	word [bp-2],0
		lea	ax,[bp-260]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_to_shortstr
		push	bp
		mov	bx,word [bp+6]
		push	word [bx+2]
		call	CLASSES$_$TREADER_$_FINDCOMPONENTCLASS$ANSISTRING$$TCOMPONENTCLASS_$$_FINDINFIELDTABLE$TCOMPONENT
		cmp	word [bp-2],0
		je	..@j20934
		jmp	..@j20932
..@j20934:
		mov	bx,word [bp+6]
		cmp	word [bx+4],0
		jne	..@j20933
		jmp	..@j20932
..@j20933:
		mov	bx,word [bp+6]
		mov	si,word [bp+6]
		mov	ax,word [bx+4]
		cmp	ax,word [si+2]
		jne	..@j20931
		jmp	..@j20932
..@j20931:
		push	bp
		mov	bx,word [bp+6]
		push	word [bx+4]
		call	CLASSES$_$TREADER_$_FINDCOMPONENTCLASS$ANSISTRING$$TCOMPONENTCLASS_$$_FINDINFIELDTABLE$TCOMPONENT
..@j20932:
		cmp	word [bp-2],0
		je	..@j20939
		jmp	..@j20940
..@j20939:
		push	word [bp+4]
		call	CLASSES_$$_GETCLASS$ANSISTRING$$TPERSISTENTCLASS
		mov	word [bp-4],ax
		push	word [bp-4]
		mov	ax,word VMT_$CLASSES_$$_TCOMPONENT
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
		test	al,al
		jne	..@j20945
		jmp	..@j20946
..@j20945:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
..@j20946:
..@j20940:
		cmp	word [bp-2],0
		je	..@j20955
		jmp	..@j20954
..@j20955:
		mov	bx,word [bp+6]
		cmp	word [bx+47],0
		jne	..@j20953
		jmp	..@j20954
..@j20953:
		mov	bx,word [bp+6]
		push	word [bx+49]
		push	word [bp+6]
		push	word [bp+4]
		lea	ax,[bp-2]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+47]
		call	ax
..@j20954:
		cmp	word [bp-2],0
		je	..@j20964
		jmp	..@j20966
..@j20966:
		push	word [bp-2]
		mov	ax,word VMT_$CLASSES_$$_TCOMPONENT
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
		test	al,al
		je	..@j20964
		jmp	..@j20965
..@j20964:
..@j20971:
		mov	ax,word VMT_$CLASSES_$$_ECLASSNOTFOUND
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SCLASSNOTFOUND+2]
		mov	dx,word [bp+4]
		mov	ax,0
		mov	word [bp-264],dx
		mov	word [bp-262],ax
		mov	word [bp-266],11
		lea	ax,[bp-266]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j20971
		push	ax
		push	bp
		call	fpc_raiseexception
..@j20965:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SCLASSNOTFOUND
EXTERN	VMT_$CLASSES_$$_ECLASSNOTFOUND
EXTERN	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
EXTERN	VMT_$CLASSES_$$_TCOMPONENT
EXTERN	CLASSES_$$_GETCLASS$ANSISTRING$$TPERSISTENTCLASS
EXTERN	CLASSES$_$TREADER_$_FINDCOMPONENTCLASS$ANSISTRING$$TCOMPONENTCLASS_$$_FINDINFIELDTABLE$TCOMPONENT
EXTERN	fpc_ansistr_to_shortstr
