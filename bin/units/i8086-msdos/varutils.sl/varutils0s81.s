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
	GLOBAL VARUTILS_$$_SAFEARRAYCOPYDATASPACE$PVARARRAY$PVARARRAY$$HRESULT
VARUTILS_$$_SAFEARRAYCOPYDATASPACE$PVARARRAY$PVARARRAY$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,52
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
		jne	..@j4835
		push	word [bp+6]
		call	VARUTILS_$$_SAFEARRAYELEMENTTOTAL$PVARARRAY$$SMALLINT
		mov	word [bp-16],ax
		push	word [bp+6]
		call	VARUTILS_$$_VARIANTARRAYTYPE$PVARARRAY$$TVARIANTARRAYTYPE
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		test	dx,dx
		jne	..@j4853
		test	ax,ax
		je	..@j4849
..@j4853:
		test	dx,dx
		jne	..@j4854
		cmp	ax,1
		je	..@j4850
..@j4854:
		test	dx,dx
		jne	..@j4855
		cmp	ax,2
		je	..@j4851
..@j4855:
		test	dx,dx
		jne	..@j4856
		cmp	ax,3
		je	..@j4852
..@j4856:
		jmp	..@j4848
..@j4849:
		mov	bx,word [bp+6]
		mov	ax,word [bx+12]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+12]
		push	ax
		mov	ax,word [bp-16]
		cwd
		push	dx
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+6]
		push	word [bx+4]
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		jmp	..@j4847
..@j4850:
		mov	ax,word [bp-16]
		dec	ax
		mov	word [bp-52],ax
		mov	word [bp-14],0
		mov	ax,word [bp-52]
		cmp	ax,word [bp-14]
		jl	..@j4872
		dec	word [bp-14]
	ALIGN 2
..@j4873:
		inc	word [bp-14]
		push	word [bp+6]
		push	word [bp-14]
		call	VARUTILS_$$_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$SMALLINT$$POINTER
		mov	word [bp-10],ax
		push	word [bp+4]
		push	word [bp-14]
		call	VARUTILS_$$_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$SMALLINT$$POINTER
		mov	word [bp-12],ax
		mov	ax,word [bp-12]
		push	ax
		mov	bx,word [bp-10]
		push	word [bx]
		call	fpc_intf_assign
		mov	ax,word [bp-52]
		cmp	ax,word [bp-14]
		jg	..@j4873
..@j4872:
		jmp	..@j4847
..@j4851:
		mov	ax,word [bp-16]
		dec	ax
		mov	word [bp-48],ax
		mov	word [bp-14],0
		mov	ax,word [bp-48]
		cmp	ax,word [bp-14]
		jl	..@j4893
		dec	word [bp-14]
	ALIGN 2
..@j4894:
		inc	word [bp-14]
		push	word [bp+6]
		push	word [bp-14]
		call	VARUTILS_$$_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$SMALLINT$$POINTER
		mov	word [bp-10],ax
		push	word [bp+4]
		push	word [bp-14]
		call	VARUTILS_$$_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$SMALLINT$$POINTER
		mov	word [bp-12],ax
		mov	ax,word [bp-12]
		push	ax
		mov	bx,word [bp-10]
		push	word [bx]
		call	fpc_unicodestr_assign
		mov	ax,word [bp-48]
		cmp	ax,word [bp-14]
		jg	..@j4894
..@j4893:
		jmp	..@j4847
..@j4852:
		mov	ax,word [bp-16]
		dec	ax
		mov	word [bp-50],ax
		mov	word [bp-14],0
		mov	ax,word [bp-50]
		cmp	ax,word [bp-14]
		jl	..@j4914
		dec	word [bp-14]
	ALIGN 2
..@j4915:
		inc	word [bp-14]
		push	word [bp+6]
		push	word [bp-14]
		call	VARUTILS_$$_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$SMALLINT$$POINTER
		mov	word [bp-10],ax
		push	word [bp+4]
		push	word [bp-14]
		call	VARUTILS_$$_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$SMALLINT$$POINTER
		mov	word [bp-12],ax
		mov	ax,word [bp-12]
		push	ax
		mov	ax,word [bp-12]
		push	ax
		call	VARUTILS_$$_VARIANTCOPY$TVARDATA$TVARDATA$$HRESULT
		mov	ax,word [bp-50]
		cmp	ax,word [bp-14]
		jg	..@j4915
..@j4914:
		jmp	..@j4847
..@j4848:
..@j4847:
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j4835:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j4837
		mov	ax,word VMT_$SYSUTILS_$$_EXCEPTION
		push	ax
		call	fpc_catches
		test	ax,ax
		je	..@j4934
		mov	word [bp-32],ax
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
		jne	..@j4935
		push	word [bp-32]
		call	VARUTILS_$$_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j4935:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j4941
		call	FPC_RAISE_NESTED
..@j4941:
		call	FPC_DONEEXCEPTION
		jmp	..@j4837
..@j4934:
		call	FPC_RERAISE
..@j4837:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	VARUTILS_$$_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT
EXTERN	fpc_catches
EXTERN	VMT_$SYSUTILS_$$_EXCEPTION
EXTERN	FPC_POPADDRSTACK
EXTERN	VARUTILS_$$_VARIANTCOPY$TVARDATA$TVARDATA$$HRESULT
EXTERN	fpc_unicodestr_assign
EXTERN	fpc_intf_assign
EXTERN	VARUTILS_$$_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$SMALLINT$$POINTER
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_mul_longint
EXTERN	VARUTILS_$$_VARIANTARRAYTYPE$PVARARRAY$$TVARIANTARRAYTYPE
EXTERN	VARUTILS_$$_SAFEARRAYELEMENTTOTAL$PVARARRAY$$SMALLINT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
