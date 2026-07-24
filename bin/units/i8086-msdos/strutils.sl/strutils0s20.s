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
	GLOBAL STRUTILS$_$STRINGREPLACEFAST$crcB7088804_$$_ADDMATCH$SMALLINT
STRUTILS$_$STRINGREPLACEFAST$crcB7088804_$$_ADDMATCH$SMALLINT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		mov	si,word [bp+6]
		mov	ax,word [bx-4]
		cmp	ax,word [si-6]
		je	..@j679
		jmp	..@j680
..@j679:
		mov	ax,word [bp+6]
		push	ax
		call	STRUTILS$_$STRINGREPLACEFAST$crcB7088804_$$_RESIZEALLOCATEDMATCHES
..@j680:
		mov	bx,word [bp+6]
		mov	bx,word [bx-2]
		mov	si,word [bp+6]
		mov	ax,word [si-4]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp+4]
		mov	word [bx+si],ax
		mov	bx,word [bp+6]
		inc	word [bx-4]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	STRUTILS$_$STRINGREPLACEFAST$crcB7088804_$$_RESIZEALLOCATEDMATCHES
