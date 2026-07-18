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
	GLOBAL VARUTILS_$$_SAFEARRAYDESTROY$PVARARRAY$$HRESULT
VARUTILS_$$_SAFEARRAYDESTROY$PVARARRAY$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+4]
		call	VARUTILS_$$_CHECKVARARRAY$PVARARRAY$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,0
		jne	..@j5061
		cmp	dx,0
		jne	..@j5061
		jmp	..@j5062
..@j5061:
		jmp	..@j5055
..@j5062:
		push	word [bp+4]
		call	VARUTILS_$$_CHECKARRAYUNLOCKED$PVARARRAY$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jne	..@j5067
		cmp	ax,0
		jne	..@j5067
		jmp	..@j5068
..@j5067:
		jmp	..@j5055
..@j5068:
		push	word [bp+4]
		call	VARUTILS_$$_SAFEARRAYDESTROYDATA$PVARARRAY$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jne	..@j5073
		cmp	ax,0
		jne	..@j5073
		jmp	..@j5074
..@j5073:
		jmp	..@j5055
..@j5074:
		push	word [bp+4]
		call	VARUTILS_$$_SAFEARRAYDESTROYDESCRIPTOR$PVARARRAY$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j5055:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	VARUTILS_$$_SAFEARRAYDESTROYDESCRIPTOR$PVARARRAY$$HRESULT
EXTERN	VARUTILS_$$_SAFEARRAYDESTROYDATA$PVARARRAY$$HRESULT
EXTERN	VARUTILS_$$_CHECKARRAYUNLOCKED$PVARARRAY$$HRESULT
EXTERN	VARUTILS_$$_CHECKVARARRAY$PVARARRAY$$HRESULT
