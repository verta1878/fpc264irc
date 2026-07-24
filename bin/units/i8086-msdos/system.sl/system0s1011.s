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
	GLOBAL SYSTEM_$$_DO_ISDEVICE$WORD$$BOOLEAN
SYSTEM_$$_DO_ISDEVICE$WORD$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	word [bp-22],17408
		mov	ax,word [bp+4]
		mov	word [bp-20],ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_MSDOS
		mov	al,byte [bp-16]
		and	al,128
		test	al,al
		mov	al,0
		je	..@j20743
		inc	ax
..@j20743:
		mov	byte [bp-1],al
		mov	ax,word [bp-4]
		and	ax,1
		test	ax,ax
		jne	..@j20744
		jmp	..@j20745
..@j20744:
		push	word [bp-22]
		call	SYSTEM_$$_GETINOUTRES$WORD
..@j20745:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_GETINOUTRES$WORD
EXTERN	FPC_MSDOS
