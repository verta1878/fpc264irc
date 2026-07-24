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
	GLOBAL VARUTILS_$$_SAFEARRAYALLOCDESCRIPTOR$LONGWORD$PVARARRAY$$HRESULT
VARUTILS_$$_SAFEARRAYALLOCDESCRIPTOR$LONGWORD$PVARARRAY$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,34
		mov	ax,1
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j4990
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		sub	ax,1
		sbb	dx,0
		mov	cx,3
..@j4998:
		shl	ax,1
		rcl	dx,1
		loop	..@j4998
		add	ax,22
		adc	dx,0
		push	ax
		call	SYSTEM_$$_GETMEM$WORD$$POINTER
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j4990:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j4992
		mov	ax,word VMT_$SYSUTILS_$$_EXCEPTION
		push	ax
		call	fpc_catches
		test	ax,ax
		je	..@j5001
		mov	word [bp-20],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-32]
		push	ax
		lea	ax,[bp-26]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j5002
		push	word [bp-20]
		call	VARUTILS_$$_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j5002:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j5008
		call	FPC_RAISE_NESTED
..@j5008:
		call	FPC_DONEEXCEPTION
		jmp	..@j4992
..@j5001:
		call	FPC_RERAISE
..@j4992:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	VARUTILS_$$_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT
EXTERN	fpc_catches
EXTERN	VMT_$SYSUTILS_$$_EXCEPTION
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_GETMEM$WORD$$POINTER
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
