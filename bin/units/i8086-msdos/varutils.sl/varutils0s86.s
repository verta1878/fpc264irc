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
	GLOBAL VARUTILS_$$_SAFEARRAYDESTROYDESCRIPTOR$PVARARRAY$$HRESULT
VARUTILS_$$_SAFEARRAYDESTROYDESCRIPTOR$PVARARRAY$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,34
		push	word [bp+4]
		call	VARUTILS_$$_CHECKVARARRAY$PVARARRAY$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jne	..@j5085
		cmp	ax,0
		jne	..@j5085
		jmp	..@j5086
..@j5085:
		jmp	..@j5079
..@j5086:
		push	word [bp+4]
		call	VARUTILS_$$_CHECKARRAYUNLOCKED$PVARARRAY$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jne	..@j5091
		cmp	ax,0
		jne	..@j5091
		jmp	..@j5092
..@j5091:
		jmp	..@j5079
..@j5092:
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
		jne	..@j5095
		push	word [bp+4]
		call	SYSTEM_$$_FREEMEM$POINTER$$WORD
..@j5095:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j5097
		mov	ax,word VMT_$SYSUTILS_$$_EXCEPTION
		push	ax
		call	fpc_catches
		test	ax,ax
		je	..@j5101
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
		jne	..@j5102
		push	word [bp-20]
		call	VARUTILS_$$_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j5102:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j5108
		call	FPC_RAISE_NESTED
..@j5108:
		call	FPC_DONEEXCEPTION
		jmp	..@j5097
..@j5101:
		call	FPC_RERAISE
..@j5097:
..@j5079:
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
EXTERN	SYSTEM_$$_FREEMEM$POINTER$$WORD
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	VARUTILS_$$_CHECKARRAYUNLOCKED$PVARARRAY$$HRESULT
EXTERN	VARUTILS_$$_CHECKVARARRAY$PVARARRAY$$HRESULT
