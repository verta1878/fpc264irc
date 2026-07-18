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
	GLOBAL DATEUTILS_$$_ISVALIDDATEDAY$WORD$WORD$$BOOLEAN
DATEUTILS_$$_ISVALIDDATEDAY$WORD$WORD$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+6],0
		jne	..@j102
		jmp	..@j99
..@j102:
		cmp	word [bp+4],0
		jne	..@j101
		jmp	..@j99
..@j101:
		cmp	word [bp+6],10000
		jb	..@j100
		jmp	..@j99
..@j100:
		push	word [bp+6]
		call	SYSUTILS_$$_ISLEAPYEAR$WORD$$BOOLEAN
		mov	ah,0
		mov	bx,ax
		shl	bx,1
		mov	ax,word [bp+4]
		cmp	ax,word [TC_$DATEUTILS_$$_DAYSPERYEAR+bx]
		jbe	..@j98
		jmp	..@j99
..@j98:
		mov	byte [bp-1],1
		jmp	..@j105
..@j99:
		mov	byte [bp-1],0
..@j105:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TC_$DATEUTILS_$$_DAYSPERYEAR
EXTERN	SYSUTILS_$$_ISLEAPYEAR$WORD$$BOOLEAN
