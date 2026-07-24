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
	GLOBAL VARUTILS_$$_SAFEARRAYCLEARDATASPACE$PVARARRAY$BOOLEAN$$HRESULT
VARUTILS_$$_SAFEARRAYCLEARDATASPACE$PVARARRAY$BOOLEAN$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,50
		mov	ax,1
		push	ax
		lea	ax,[bp-26]
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j4744
		push	word [bp+6]
		call	VARUTILS_$$_SAFEARRAYELEMENTTOTAL$PVARARRAY$$SMALLINT
		mov	word [bp-14],ax
		push	word [bp+6]
		call	VARUTILS_$$_VARIANTARRAYTYPE$PVARARRAY$$TVARIANTARRAYTYPE
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		test	dx,dx
		jne	..@j4762
		test	ax,ax
		je	..@j4758
..@j4762:
		test	dx,dx
		jne	..@j4763
		cmp	ax,1
		je	..@j4759
..@j4763:
		test	dx,dx
		jne	..@j4764
		cmp	ax,2
		je	..@j4760
..@j4764:
		test	dx,dx
		jne	..@j4765
		cmp	ax,3
		je	..@j4761
..@j4765:
		jmp	..@j4757
..@j4758:
		mov	bx,word [bp+6]
		mov	ax,word [bx+12]
		push	ax
		mov	ax,word [bp-14]
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
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		jmp	..@j4756
..@j4759:
		mov	ax,word [bp-14]
		dec	ax
		mov	word [bp-50],ax
		mov	word [bp-12],0
		mov	ax,word [bp-50]
		cmp	ax,word [bp-12]
		jl	..@j4781
		dec	word [bp-12]
	ALIGN 2
..@j4782:
		inc	word [bp-12]
		push	word [bp+6]
		push	word [bp-12]
		call	VARUTILS_$$_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$SMALLINT$$POINTER
		mov	word [bp-10],ax
		mov	ax,word [bp-10]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_intf_assign
		mov	ax,word [bp-50]
		cmp	ax,word [bp-12]
		jg	..@j4782
..@j4781:
		jmp	..@j4756
..@j4760:
		mov	ax,word [bp-14]
		dec	ax
		mov	word [bp-48],ax
		mov	word [bp-12],0
		mov	ax,word [bp-48]
		cmp	ax,word [bp-12]
		jl	..@j4796
		dec	word [bp-12]
	ALIGN 2
..@j4797:
		inc	word [bp-12]
		push	word [bp+6]
		push	word [bp-12]
		call	VARUTILS_$$_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$SMALLINT$$POINTER
		mov	word [bp-10],ax
		mov	ax,word [bp-10]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_unicodestr_assign
		mov	ax,word [bp-48]
		cmp	ax,word [bp-12]
		jg	..@j4797
..@j4796:
		jmp	..@j4756
..@j4761:
		mov	ax,word [bp-14]
		dec	ax
		mov	word [bp-46],ax
		mov	word [bp-12],0
		mov	ax,word [bp-46]
		cmp	ax,word [bp-12]
		jl	..@j4811
		dec	word [bp-12]
	ALIGN 2
..@j4812:
		inc	word [bp-12]
		push	word [bp+6]
		push	word [bp-12]
		call	VARUTILS_$$_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$SMALLINT$$POINTER
		mov	word [bp-10],ax
		mov	ax,word [bp-10]
		push	ax
		call	VARUTILS_$$_VARIANTCLEAR$TVARDATA$$HRESULT
		mov	ax,word [bp-46]
		cmp	ax,word [bp-12]
		jg	..@j4812
..@j4811:
		jmp	..@j4756
..@j4757:
..@j4756:
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j4744:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j4746
		mov	ax,word VMT_$SYSUTILS_$$_EXCEPTION
		push	ax
		call	fpc_catches
		test	ax,ax
		je	..@j4823
		mov	word [bp-30],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-42]
		push	ax
		lea	ax,[bp-36]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j4824
		push	word [bp-30]
		call	VARUTILS_$$_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j4824:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j4830
		call	FPC_RAISE_NESTED
..@j4830:
		call	FPC_DONEEXCEPTION
		jmp	..@j4746
..@j4823:
		call	FPC_RERAISE
..@j4746:
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
EXTERN	VARUTILS_$$_VARIANTCLEAR$TVARDATA$$HRESULT
EXTERN	fpc_unicodestr_assign
EXTERN	fpc_intf_assign
EXTERN	VARUTILS_$$_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$SMALLINT$$POINTER
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	fpc_mul_longint
EXTERN	VARUTILS_$$_VARIANTARRAYTYPE$PVARARRAY$$TVARIANTARRAYTYPE
EXTERN	VARUTILS_$$_SAFEARRAYELEMENTTOTAL$PVARARRAY$$SMALLINT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
