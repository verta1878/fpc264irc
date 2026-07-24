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
	GLOBAL DATEUTILS_$$_ISVALIDTIME$WORD$WORD$WORD$WORD$$BOOLEAN
DATEUTILS_$$_ISVALIDTIME$WORD$WORD$WORD$WORD$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+10],24
		je	..@j67
		jmp	..@j64
..@j67:
		cmp	word [bp+8],0
		je	..@j66
		jmp	..@j64
..@j66:
		cmp	word [bp+6],0
		je	..@j65
		jmp	..@j64
..@j65:
		cmp	word [bp+4],0
		je	..@j63
		jmp	..@j64
..@j63:
		mov	byte [bp-1],1
		jmp	..@j68
..@j64:
		mov	byte [bp-1],0
..@j68:
		cmp	byte [bp-1],0
		jne	..@j69
		jmp	..@j71
..@j71:
		cmp	word [bp+10],24
		jb	..@j74
		jmp	..@j70
..@j74:
		cmp	word [bp+8],60
		jb	..@j73
		jmp	..@j70
..@j73:
		cmp	word [bp+6],60
		jb	..@j72
		jmp	..@j70
..@j72:
		cmp	word [bp+4],1000
		jb	..@j69
		jmp	..@j70
..@j69:
		mov	byte [bp-1],1
		jmp	..@j75
..@j70:
		mov	byte [bp-1],0
..@j75:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	8
