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
	GLOBAL SYSUTILS_$$_GETRANDOMBYTES$formal$SMALLINT
SYSUTILS_$$_GETRANDOMBYTES$formal$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+6]
		mov	word [bp-4],ax
		cmp	byte [TC_$SYSUTILS_$$_GUIDCALLEDRANDOMIZE],0
		je	..@j15075
		jmp	..@j15076
..@j15075:
		call	SYSTEM_$$_RANDOMIZE
		mov	byte [TC_$SYSUTILS_$$_GUIDCALLEDRANDOMIZE],1
..@j15076:
		mov	ax,word [bp+4]
		dec	ax
		mov	word [bp-6],ax
		mov	word [bp-2],0
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jl	..@j15082
		dec	word [bp-2]
	ALIGN 2
..@j15083:
		inc	word [bp-2]
		mov	ax,0
		push	ax
		mov	ax,256
		push	ax
		call	SYSTEM_$$_RANDOM$LONGINT$$LONGINT
		mov	bx,word [bp-4]
		mov	si,word [bp-2]
		mov	byte [bx+si],al
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jg	..@j15083
..@j15082:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_RANDOM$LONGINT$$LONGINT
EXTERN	SYSTEM_$$_RANDOMIZE
EXTERN	TC_$SYSUTILS_$$_GUIDCALLEDRANDOMIZE
