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
	GLOBAL SYSTEM_$$_UPCASE$ANSISTRING$$ANSISTRING
SYSTEM_$$_UPCASE$ANSISTRING$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j10606
		mov	bx,word [bx-2]
..@j10606:
		push	bx
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j10611
		mov	bx,word [bx-2]
..@j10611:
		mov	word [bp-8],bx
		mov	word [bp-2],1
		mov	ax,word [bp-8]
		cmp	ax,word [bp-2]
		jl	..@j10613
		dec	word [bp-2]
	ALIGN 2
..@j10614:
		inc	word [bp-2]
		mov	ax,word [bp+6]
		push	ax
		call	fpc_ansistr_unique
		mov	word [bp-4],ax
		mov	ax,word [bp-2]
		mov	word [bp-6],ax
		mov	bx,word [bp+4]
		mov	si,word [bp-2]
		mov	al,byte [bx+si-1]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UPCASE$CHAR$$CHAR
		mov	bx,word [bp-4]
		mov	si,word [bp-6]
		mov	byte [bx+si-1],al
		mov	ax,word [bp-8]
		cmp	ax,word [bp-2]
		jg	..@j10614
..@j10613:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_UPCASE$CHAR$$CHAR
EXTERN	fpc_ansistr_unique
EXTERN	fpc_ansistr_setlength
