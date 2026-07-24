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
	GLOBAL ISO7185_$$_REWRITE$TEXT
ISO7185_$$_REWRITE$TEXT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j28
		cmp	dx,0
		jne	..@j28
		jmp	..@j27
..@j27:
		mov	ax,word [bp+4]
		push	ax
		call	ISO7185_$$_DOASSIGN$TEXT
..@j28:
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM_$$_REWRITE$TEXT
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_REWRITE$TEXT
EXTERN	ISO7185_$$_DOASSIGN$TEXT
