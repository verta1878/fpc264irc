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
	GLOBAL SYSUTILS_$$_GUIDCASE$TGUID$array_of_TGUID$$SMALLINT
SYSUTILS_$$_GUIDCASE$TGUID$array_of_TGUID$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jl	..@j13929
		inc	word [bp-2]
	ALIGN 2
..@j13930:
		dec	word [bp-2]
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-2]
		mov	si,ax
		mov	cl,4
		shl	si,cl
		lea	ax,[bx+si]
		push	ax
		call	SYSUTILS_$$_ISEQUALGUID$TGUID$TGUID$$BOOLEAN
		test	al,al
		jne	..@j13931
		jmp	..@j13932
..@j13931:
		jmp	..@j13926
..@j13932:
		cmp	word [bp-2],0
		jg	..@j13930
..@j13929:
		mov	word [bp-2],-1
..@j13926:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSUTILS_$$_ISEQUALGUID$TGUID$TGUID$$BOOLEAN
