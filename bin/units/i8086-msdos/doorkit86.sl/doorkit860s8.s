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
	GLOBAL DOORKIT86_$$_BIOSKEYPRESSED$$BOOLEAN
DOORKIT86_$$_BIOSKEYPRESSED$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	byte [bp-21],1
		mov	ax,22
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_INTR
		mov	ax,word [bp-4]
		and	ax,64
		test	ax,ax
		mov	al,0
		jne	..@j83
		inc	ax
..@j83:
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret
EXTERN	FPC_INTR
