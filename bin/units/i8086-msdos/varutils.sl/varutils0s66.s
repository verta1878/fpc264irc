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
	GLOBAL VARUTILS_$$_SETUNLOCKRESULT$PVARARRAY$HRESULT
VARUTILS_$$_SETUNLOCKRESULT$PVARARRAY$HRESULT:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jne	..@j4293
		cmp	ax,0
		jne	..@j4293
		jmp	..@j4292
..@j4292:
		push	word [bp+8]
		call	VARUTILS_$$_SAFEARRAYUNLOCK$PVARARRAY$$HRESULT
		mov	word [bp+4],ax
		mov	word [bp+6],dx
		jmp	..@j4298
..@j4293:
		push	word [bp+8]
		call	VARUTILS_$$_SAFEARRAYUNLOCK$PVARARRAY$$HRESULT
..@j4298:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	VARUTILS_$$_SAFEARRAYUNLOCK$PVARARRAY$$HRESULT
