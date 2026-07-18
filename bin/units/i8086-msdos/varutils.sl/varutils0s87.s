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
	GLOBAL VARUTILS_$$_SAFEARRAYDESTROYDATA$PVARARRAY$$HRESULT
VARUTILS_$$_SAFEARRAYDESTROYDATA$PVARARRAY$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,34
		push	word [bp+4]
		call	VARUTILS_$$_CHECKVARARRAY$PVARARRAY$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,0
		jne	..@j5115
		cmp	dx,0
		jne	..@j5115
		jmp	..@j5116
..@j5115:
		jmp	..@j5109
..@j5116:
		push	word [bp+4]
		call	VARUTILS_$$_CHECKARRAYUNLOCKED$PVARARRAY$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jne	..@j5121
		cmp	ax,0
		jne	..@j5121
		jmp	..@j5122
..@j5121:
		jmp	..@j5109
..@j5122:
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
		jne	..@j5125
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	VARUTILS_$$_SAFEARRAYCLEARDATASPACE$PVARARRAY$BOOLEAN$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,0
		jne	..@j5136
		cmp	dx,0
		jne	..@j5136
		jmp	..@j5137
..@j5137:
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		and	ax,16
		test	ax,ax
		je	..@j5135
		jmp	..@j5136
..@j5135:
		mov	bx,word [bp+4]
		push	word [bx+12]
		call	SYSTEM_$$_FREEMEM$POINTER$$WORD
		mov	bx,word [bp+4]
		mov	word [bx+12],0
..@j5136:
..@j5125:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j5127
		mov	ax,word VMT_$SYSUTILS_$$_EXCEPTION
		push	ax
		call	fpc_catches
		test	ax,ax
		je	..@j5142
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
		jne	..@j5143
		push	word [bp-20]
		call	VARUTILS_$$_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j5143:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j5149
		call	FPC_RAISE_NESTED
..@j5149:
		call	FPC_DONEEXCEPTION
		jmp	..@j5127
..@j5142:
		call	FPC_RERAISE
..@j5127:
..@j5109:
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
EXTERN	VARUTILS_$$_SAFEARRAYCLEARDATASPACE$PVARARRAY$BOOLEAN$$HRESULT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	VARUTILS_$$_CHECKARRAYUNLOCKED$PVARARRAY$$HRESULT
EXTERN	VARUTILS_$$_CHECKVARARRAY$PVARARRAY$$HRESULT
