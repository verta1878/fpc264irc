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
	GLOBAL VARUTILS_$$_SAFEARRAYACCESSDATA$PVARARRAY$POINTER$$HRESULT
VARUTILS_$$_SAFEARRAYACCESSDATA$PVARARRAY$POINTER$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+4]
		call	VARUTILS_$$_SAFEARRAYLOCK$PVARARRAY$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,0
		jne	..@j5477
		cmp	dx,0
		jne	..@j5477
		jmp	..@j5478
..@j5477:
		mov	bx,word [bp+6]
		mov	word [bx],0
		jmp	..@j5481
..@j5478:
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		mov	ax,word [bx+12]
		mov	word [si],ax
..@j5481:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	VARUTILS_$$_SAFEARRAYLOCK$PVARARRAY$$HRESULT
