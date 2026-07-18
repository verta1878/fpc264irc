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
	GLOBAL VARUTILS_$$_SAFEARRAYGETELEMSIZE$PVARARRAY$$LONGWORD
VARUTILS_$$_SAFEARRAYGETELEMSIZE$PVARARRAY$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+4]
		call	VARUTILS_$$_CHECKVARARRAY$PVARARRAY$$HRESULT
		cmp	dx,0
		jne	..@j5654
		cmp	ax,0
		jne	..@j5654
		jmp	..@j5655
..@j5654:
		mov	word [bp-4],0
		mov	word [bp-2],0
		jmp	..@j5660
..@j5655:
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		mov	word [bp-4],ax
		mov	ax,word [bx+6]
		mov	word [bp-2],ax
..@j5660:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
; End asmlist al_procedures
; Begin asmlist al_typedconsts
EXTERN	VARUTILS_$$_CHECKVARARRAY$PVARARRAY$$HRESULT
