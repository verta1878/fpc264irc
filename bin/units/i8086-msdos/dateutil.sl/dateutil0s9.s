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
	GLOBAL DATEUTILS_$$_ISVALIDDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$BOOLEAN
DATEUTILS_$$_ISVALIDDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+16]
		push	word [bp+14]
		push	word [bp+12]
		call	DATEUTILS_$$_ISVALIDDATE$WORD$WORD$WORD$$BOOLEAN
		test	al,al
		jne	..@j80
		jmp	..@j79
..@j80:
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	DATEUTILS_$$_ISVALIDTIME$WORD$WORD$WORD$WORD$$BOOLEAN
		test	al,al
		jne	..@j78
		jmp	..@j79
..@j78:
		mov	byte [bp-1],1
		jmp	..@j95
..@j79:
		mov	byte [bp-1],0
..@j95:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	14
EXTERN	DATEUTILS_$$_ISVALIDTIME$WORD$WORD$WORD$WORD$$BOOLEAN
EXTERN	DATEUTILS_$$_ISVALIDDATE$WORD$WORD$WORD$$BOOLEAN
