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
	GLOBAL VARUTILS_$$_SAFEARRAYUNLOCK$PVARARRAY$$HRESULT
VARUTILS_$$_SAFEARRAYUNLOCK$PVARARRAY$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+4]
		call	VARUTILS_$$_CHECKVARARRAY$PVARARRAY$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jne	..@j5506
		cmp	ax,0
		jne	..@j5506
		jmp	..@j5507
..@j5506:
		jmp	..@j5500
..@j5507:
		mov	bx,word [bp+4]
		lea	ax,[bx+8]
		push	ax
		call	SYSTEM_$$_INTERLOCKEDDECREMENT$LONGINT$$LONGINT
		cmp	dx,0
		jl	..@j5508
		jg	..@j5509
		cmp	ax,0
		jb	..@j5508
		jmp	..@j5509
..@j5508:
		mov	bx,word [bp+4]
		lea	ax,[bx+8]
		push	ax
		call	SYSTEM_$$_INTERLOCKEDINCREMENT$LONGINT$$LONGINT
		mov	word [bp-4],-1
		mov	word [bp-2],-32768
..@j5509:
..@j5500:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_INTERLOCKEDINCREMENT$LONGINT$$LONGINT
EXTERN	SYSTEM_$$_INTERLOCKEDDECREMENT$LONGINT$$LONGINT
EXTERN	VARUTILS_$$_CHECKVARARRAY$PVARARRAY$$HRESULT
