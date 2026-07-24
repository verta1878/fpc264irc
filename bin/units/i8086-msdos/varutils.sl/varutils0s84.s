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
	GLOBAL VARUTILS_$$_SAFEARRAYALLOCDATA$PVARARRAY$$HRESULT
VARUTILS_$$_SAFEARRAYALLOCDATA$PVARARRAY$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,36
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
		jne	..@j5013
		mov	ax,word [bp+4]
		mov	word [bp-36],ax
		push	word [bp+4]
		call	VARUTILS_$$_SAFEARRAYELEMENTTOTAL$PVARARRAY$$SMALLINT
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		mov	bx,word [bp-36]
		push	word [bx+6]
		mov	bx,word [bp-36]
		push	word [bx+4]
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		push	ax
		call	SYSTEM_$$_GETMEM$WORD$$POINTER
		mov	bx,word [bp-36]
		mov	word [bx+12],ax
		mov	bx,word [bp-36]
		mov	ax,word [bx+12]
		push	ax
		push	word [bp+4]
		call	VARUTILS_$$_SAFEARRAYELEMENTTOTAL$PVARARRAY$$SMALLINT
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		mov	bx,word [bp-36]
		push	word [bx+6]
		mov	bx,word [bp-36]
		push	word [bx+4]
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j5013:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j5015
		mov	ax,word VMT_$SYSUTILS_$$_EXCEPTION
		push	ax
		call	fpc_catches
		test	ax,ax
		je	..@j5047
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
		jne	..@j5048
		push	word [bp-20]
		call	VARUTILS_$$_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j5048:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j5054
		call	FPC_RAISE_NESTED
..@j5054:
		call	FPC_DONEEXCEPTION
		jmp	..@j5015
..@j5047:
		call	FPC_RERAISE
..@j5015:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	VARUTILS_$$_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT
EXTERN	fpc_catches
EXTERN	VMT_$SYSUTILS_$$_EXCEPTION
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	SYSTEM_$$_GETMEM$WORD$$POINTER
EXTERN	fpc_mul_longint
EXTERN	VARUTILS_$$_SAFEARRAYELEMENTTOTAL$PVARARRAY$$SMALLINT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
