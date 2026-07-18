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
	GLOBAL SYSUTILS_$$_GENERICANSISTRLOWER$PCHAR$$PCHAR
SYSUTILS_$$_GENERICANSISTRLOWER$PCHAR$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
		cmp	word [bp+4],0
		jne	..@j3150
		jmp	..@j3151
..@j3150:
		jmp	..@j3153
	ALIGN 2
..@j3152:
		mov	bx,word [bp+4]
		mov	bl,byte [bx]
		mov	bh,0
		mov	si,word [bp+4]
		mov	al,byte [U_$SYSUTILS_$$_LOWERCASETABLE+bx]
		mov	byte [si],al
		mov	ax,word [bp+4]
		inc	ax
		mov	word [bp+4],ax
..@j3153:
		mov	bx,word [bp+4]
		cmp	byte [bx],0
		jne	..@j3152
		jmp	..@j3154
..@j3154:
..@j3151:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	U_$SYSUTILS_$$_LOWERCASETABLE
