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
	GLOBAL SYSTEM_$$_POS$SHORTSTRING$RAWBYTESTRING$$SMALLINT
SYSTEM_$$_POS$SHORTSTRING$RAWBYTESTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	word [bp-2],0
		mov	bx,word [bp+6]
		cmp	byte [bx],0
		ja	..@j9736
		jmp	..@j9737
..@j9736:
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j9740
		mov	bx,word [bx-2]
..@j9740:
		sub	bx,ax
		mov	word [bp-6],bx
		mov	word [bp-4],0
		mov	ax,word [bp+4]
		mov	word [bp-8],ax
		jmp	..@j9746
	ALIGN 2
..@j9745:
		inc	word [bp-4]
		mov	bx,word [bp+6]
		mov	si,word [bp-8]
		mov	al,byte [bx+1]
		cmp	al,byte [si]
		je	..@j9750
		jmp	..@j9749
..@j9750:
		mov	bx,word [bp+6]
		lea	ax,[bx+1]
		push	ax
		mov	ax,word [bp-8]
		push	ax
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$SMALLINT$$SMALLINT
		test	ax,ax
		je	..@j9748
		jmp	..@j9749
..@j9748:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		jmp	..@j9732
..@j9749:
		inc	word [bp-8]
..@j9746:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jle	..@j9745
		jmp	..@j9747
..@j9747:
..@j9737:
..@j9732:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_COMPAREBYTE$formal$formal$SMALLINT$$SMALLINT
