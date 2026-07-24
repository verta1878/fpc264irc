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
	GLOBAL SYSTEM_$$_POS$RAWBYTESTRING$RAWBYTESTRING$$SMALLINT
SYSTEM_$$_POS$RAWBYTESTRING$RAWBYTESTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	word [bp-2],0
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j9765
		mov	bx,word [bx-2]
..@j9765:
		cmp	bx,0
		jg	..@j9763
		jmp	..@j9764
..@j9763:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j9768
		mov	bx,word [bx-2]
..@j9768:
		mov	si,word [bp+6]
		test	si,si
		je	..@j9769
		mov	si,word [si-2]
..@j9769:
		sub	bx,si
		mov	word [bp-6],bx
		mov	word [bp-4],0
		mov	ax,word [bp+4]
		mov	word [bp-8],ax
		jmp	..@j9775
	ALIGN 2
..@j9774:
		inc	word [bp-4]
		mov	bx,word [bp-8]
		mov	si,word [bp+6]
		mov	al,byte [bx]
		cmp	al,byte [si]
		je	..@j9779
		jmp	..@j9778
..@j9779:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp-8]
		push	ax
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j9786
		mov	bx,word [bx-2]
..@j9786:
		push	bx
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$SMALLINT$$SMALLINT
		test	ax,ax
		je	..@j9777
		jmp	..@j9778
..@j9777:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		jmp	..@j9759
..@j9778:
		inc	word [bp-8]
..@j9775:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jle	..@j9774
		jmp	..@j9776
..@j9776:
..@j9764:
..@j9759:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_COMPAREBYTE$formal$formal$SMALLINT$$SMALLINT
