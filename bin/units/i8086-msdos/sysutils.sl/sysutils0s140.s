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
	GLOBAL SYSUTILS_$$_TRYSTRTODWORD$ANSISTRING$LONGWORD$$BOOLEAN
SYSUTILS_$$_TRYSTRTODWORD$ANSISTRING$LONGWORD$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+6]
		lea	ax,[bp-4]
		push	ax
		call	fpc_val_longword_ansistr
		mov	bx,word [bp+4]
		mov	word [bx],ax
		mov	word [bx+2],dx
		cmp	word [bp-4],0
		mov	al,0
		jne	..@j3945
		inc	ax
..@j3945:
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_val_longword_ansistr
