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
	GLOBAL CLASSES$_$TREADER_$__$$_READPROPERTY$TPERSISTENT
CLASSES$_$TREADER_$__$$_READPROPERTY$TPERSISTENT:
		push	bp
		mov	bp,sp
		sub	sp,336
		mov	word [bp-2],0
		mov	word [bp-14],0
		mov	word [bp-18],0
		mov	word [bp-64],0
		mov	word [bp-62],0
		mov	ax,1
		push	ax
		lea	ax,[bp-30]
		push	ax
		lea	ax,[bp-24]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j19770
		mov	ax,1
		push	ax
		lea	ax,[bp-44]
		push	ax
		lea	ax,[bp-38]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j19774
		mov	bx,word [bp+6]
		push	word [bx+9]
		lea	ax,[bp-2]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+58]
		call	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-58]
		push	ax
		lea	ax,[bp-52]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j19784
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
		mov	bx,word [bp+6]
		mov	byte [bx+57],1
		mov	ax,word [bp-2]
		test	ax,ax
		jne	..@j19794
		mov	ax,word FPC_EMPTYCHAR
..@j19794:
		mov	word [bp-6],ax
		jmp	..@j19796
	ALIGN 2
..@j19795:
		push	word [bp-6]
		mov	ax,46
		push	ax
		call	SYSUTILS_$$_STRSCAN$PCHAR$CHAR$$PCHAR
		mov	word [bp-8],ax
		cmp	word [bp-8],0
		jne	..@j19804
		jmp	..@j19805
..@j19804:
		mov	bx,word [bp+6]
		lea	ax,[bx+55]
		push	ax
		lea	ax,[bp-62]
		push	ax
		lea	ax,[bp-64]
		push	ax
		push	word [bp-6]
		mov	ax,0
		push	ax
		call	fpc_pchar_to_ansistr
		push	word [bp-64]
		mov	ax,1
		push	ax
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		sub	ax,dx
		push	ax
		call	fpc_ansistr_copy
		push	word [bp-62]
		call	fpc_ansistr_assign
		jmp	..@j19824
..@j19805:
		mov	bx,word [bp+6]
		lea	ax,[bx+55]
		push	ax
		lea	ax,[bp-64]
		push	ax
		push	word [bp-6]
		mov	ax,0
		push	ax
		call	fpc_pchar_to_ansistr
		push	word [bp-64]
		call	fpc_ansistr_assign
		jmp	..@j19797
..@j19824:
		mov	ax,word [bp-8]
		inc	ax
		mov	word [bp-6],ax
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CLASSINFO$$POINTER
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+55]
		call	TYPINFO_$$_GETPROPINFO$PTYPEINFO$ANSISTRING$$PPROPINFO
		mov	word [bp-10],ax
		cmp	word [bp-10],0
		je	..@j19845
		jmp	..@j19846
..@j19845:
		push	bp
		mov	ax,1
		push	ax
		call	CLASSES$_$TREADER_$_READPROPERTY$TPERSISTENT_$$_HANDLEMISSINGPROPERTY$BOOLEAN$$BOOLEAN
		test	al,al
		je	..@j19847
		jmp	..@j19848
..@j19847:
		jmp	..@j19782
..@j19848:
		cmp	word [bp-10],0
		je	..@j19853
		jmp	..@j19854
..@j19853:
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_PROPERTYERROR
..@j19854:
..@j19846:
		mov	bx,word [bp-10]
		mov	bx,word [bx]
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		cmp	ax,0
		jne	..@j19858
		cmp	dx,15
		jne	..@j19858
		jmp	..@j19857
..@j19857:
		push	word [bp-4]
		push	word [bp-10]
		call	TYPINFO_$$_GETOBJECTPROP$TOBJECT$PPROPINFO$$TOBJECT
		mov	word [bp-12],ax
		jmp	..@j19865
..@j19858:
		mov	word [bp-12],0
..@j19865:
		mov	ax,word VMT_$CLASSES_$$_TPERSISTENT
		push	ax
		push	word [bp-12]
		call	fpc_do_is
		test	al,al
		je	..@j19868
		jmp	..@j19869
..@j19868:
		mov	bx,word [bp+6]
		push	word [bx+9]
		mov	bx,word [bp+6]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+96]
		call	ax
..@j19876:
		mov	ax,word VMT_$CLASSES_$$_EREADERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SINVALIDPROPERTYPATH+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j19876
		push	ax
		push	bp
		call	fpc_raiseexception
..@j19869:
		mov	ax,word [bp-12]
		mov	word [bp-4],ax
..@j19796:
		jmp	..@j19795
..@j19797:
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CLASSINFO$$POINTER
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+55]
		call	TYPINFO_$$_GETPROPINFO$PTYPEINFO$ANSISTRING$$PPROPINFO
		mov	word [bp-10],ax
		cmp	word [bp-10],0
		jne	..@j19899
		jmp	..@j19900
..@j19899:
		push	word [bp+6]
		push	word [bp-4]
		push	word [bp-10]
		call	CLASSES$_$TREADER_$__$$_READPROPVALUE$TPERSISTENT$POINTER
		jmp	..@j19907
..@j19900:
		mov	bx,word [bp+6]
		mov	byte [bx+57],0
		push	word [bp-4]
		push	word [bp+6]
		mov	bx,word [bp-4]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		mov	bx,word [bp+6]
		mov	byte [bx+57],1
		mov	bx,word [bp+6]
		mov	bx,word [bx+55]
		test	bx,bx
		je	..@j19918
		mov	bx,word [bx-2]
..@j19918:
		cmp	bx,0
		jg	..@j19916
		jmp	..@j19917
..@j19916:
		push	bp
		mov	ax,0
		push	ax
		call	CLASSES$_$TREADER_$_READPROPERTY$TPERSISTENT_$$_HANDLEMISSINGPROPERTY$BOOLEAN$$BOOLEAN
		test	al,al
		je	..@j19919
		jmp	..@j19920
..@j19919:
		jmp	..@j19782
..@j19920:
		cmp	word [bp-10],0
		je	..@j19925
		jmp	..@j19926
..@j19925:
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_PROPERTYERROR
..@j19926:
..@j19917:
..@j19907:
..@j19784:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j19786
		mov	ax,word VMT_$SYSUTILS_$$_EXCEPTION
		push	ax
		call	fpc_catches
		test	ax,ax
		je	..@j19929
		mov	word [bp-66],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-78]
		push	ax
		lea	ax,[bp-72]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j19930
		lea	ax,[bp-14]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		push	ax
		mov	ax,word VMT_$CLASSES_$$_TCOMPONENT
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
		test	al,al
		jne	..@j19938
		jmp	..@j19939
..@j19938:
		lea	ax,[bp-14]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	fpc_ansistr_assign
..@j19939:
		mov	bx,word [bp-14]
		test	bx,bx
		je	..@j19950
		mov	bx,word [bx-2]
..@j19950:
		test	bx,bx
		je	..@j19948
		jmp	..@j19949
..@j19948:
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-64]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-336]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
		lea	ax,[bp-336]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-64]
		call	fpc_ansistr_assign
..@j19949:
..@j19965:
		mov	ax,word VMT_$CLASSES_$$_EREADERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SPROPERTYEXCEPTION+2]
		mov	dx,word [bp-14]
		mov	ax,0
		mov	word [bp-102],dx
		mov	word [bp-100],ax
		mov	word [bp-104],11
		mov	dx,word [TC_$TYPINFO_$$_DOTSEP]
		mov	ax,0
		mov	word [bp-96],dx
		mov	word [bp-94],ax
		mov	word [bp-98],11
		mov	dx,word [bp-2]
		mov	ax,0
		mov	word [bp-90],dx
		mov	word [bp-88],ax
		mov	word [bp-92],11
		mov	bx,word [bp-66]
		mov	ax,word [bx+2]
		mov	dx,0
		mov	word [bp-84],ax
		mov	word [bp-82],dx
		mov	word [bp-86],11
		lea	ax,[bp-104]
		push	ax
		mov	ax,3
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j19965
		push	ax
		push	bp
		call	fpc_raiseexception
..@j19930:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j19982
		call	FPC_RAISE_NESTED
..@j19982:
		call	FPC_DONEEXCEPTION
		jmp	..@j19786
..@j19929:
		call	FPC_RERAISE
..@j19782:
		call	FPC_POPADDRSTACK
		pop	ax
		jmp	..@j19772
..@j19786:
..@j19774:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j19776
		mov	ax,word VMT_$SYSUTILS_$$_EXCEPTION
		push	ax
		call	fpc_catches
		test	ax,ax
		je	..@j19983
		mov	word [bp-66],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-78]
		push	ax
		lea	ax,[bp-72]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j19984
		mov	bx,word [bp+6]
		cmp	byte [bx+57],0
		je	..@j19986
		jmp	..@j19988
..@j19988:
		push	word [bp+6]
		mov	bx,word [bp-66]
		push	word [bx+2]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+56]
		call	ax
		test	al,al
		je	..@j19986
		jmp	..@j19987
..@j19986:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j19987:
..@j19984:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j19993
		call	FPC_RAISE_NESTED
..@j19993:
		call	FPC_DONEEXCEPTION
		jmp	..@j19776
..@j19983:
		call	FPC_RERAISE
..@j19772:
		call	FPC_POPADDRSTACK
		pop	ax
		jmp	..@j19770
..@j19776:
..@j19770:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-64]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-62]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-14]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j19771
		call	FPC_RERAISE
..@j19771:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_RERAISE
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	TC_$TYPINFO_$$_DOTSEP
EXTERN	RESSTR_$RTLCONSTS_$$_SPROPERTYEXCEPTION
EXTERN	fpc_shortstr_to_ansistr
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
EXTERN	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
EXTERN	VMT_$CLASSES_$$_TCOMPONENT
EXTERN	fpc_ansistr_setlength
EXTERN	fpc_catches
EXTERN	VMT_$SYSUTILS_$$_EXCEPTION
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TREADER_$__$$_READPROPVALUE$TPERSISTENT$POINTER
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SINVALIDPROPERTYPATH
EXTERN	VMT_$CLASSES_$$_EREADERROR
EXTERN	fpc_do_is
EXTERN	VMT_$CLASSES_$$_TPERSISTENT
EXTERN	TYPINFO_$$_GETOBJECTPROP$TOBJECT$PPROPINFO$$TOBJECT
EXTERN	CLASSES$_$TREADER_$__$$_PROPERTYERROR
EXTERN	CLASSES$_$TREADER_$_READPROPERTY$TPERSISTENT_$$_HANDLEMISSINGPROPERTY$BOOLEAN$$BOOLEAN
EXTERN	TYPINFO_$$_GETPROPINFO$PTYPEINFO$ANSISTRING$$PPROPINFO
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSINFO$$POINTER
EXTERN	fpc_ansistr_assign
EXTERN	fpc_ansistr_copy
EXTERN	fpc_pchar_to_ansistr
EXTERN	SYSUTILS_$$_STRSCAN$PCHAR$CHAR$$PCHAR
EXTERN	FPC_EMPTYCHAR
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
