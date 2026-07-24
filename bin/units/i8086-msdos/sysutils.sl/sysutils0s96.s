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
	GLOBAL SYSUTILS_$$_GENERICANSILOWERCASE$ANSISTRING$$ANSISTRING
SYSUTILS_$$_GENERICANSILOWERCASE$ANSISTRING$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j2974
		mov	bx,word [bx-2]
..@j2974:
		mov	word [bp-2],bx
		mov	ax,word [bp+6]
		push	ax
		push	word [bp-2]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	ax,word [bp-2]
		mov	word [bp-8],ax
		mov	word [bp-4],1
		mov	ax,word [bp-8]
		cmp	ax,word [bp-4]
		jl	..@j2984
		dec	word [bp-4]
	ALIGN 2
..@j2985:
		inc	word [bp-4]
		mov	ax,word [bp+6]
		push	ax
		call	fpc_ansistr_unique
		mov	word [bp-6],ax
		mov	di,word [bp-4]
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		mov	bl,byte [bx+si-1]
		mov	bh,0
		mov	al,byte [U_$SYSUTILS_$$_LOWERCASETABLE+bx]
		mov	bx,word [bp-6]
		mov	byte [bx+di-1],al
		mov	ax,word [bp-8]
		cmp	ax,word [bp-4]
		jg	..@j2985
..@j2984:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	U_$SYSUTILS_$$_LOWERCASETABLE
EXTERN	fpc_ansistr_unique
EXTERN	fpc_ansistr_setlength
