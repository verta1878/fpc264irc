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
	GLOBAL CHARSET_$$_GETASCII$WORD$PUNICODEMAP$$SHORTSTRING
CHARSET_$$_GETASCII$WORD$PUNICODEMAP$$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+6]
		mov	bx,word [bp+4]
		push	word [bx+29]
		mov	bx,word [bp+4]
		push	word [bx+33]
		push	word [bx+31]
		call	CHARSET_$$_FIND$WORD$PREVERSECHARMAPPING$LONGINT$$PREVERSECHARMAPPING
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jne	..@j884
		jmp	..@j885
..@j884:
		mov	bx,word [bp-2]
		cmp	byte [bx+3],0
		je	..@j886
		jmp	..@j887
..@j886:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,1
		push	ax
		call	fpc_shortstr_setlength
		mov	bx,word [bp-2]
		mov	si,word [bp+8]
		mov	al,byte [bx+2]
		mov	byte [si+1],al
		jmp	..@j896
..@j887:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,2
		push	ax
		call	fpc_shortstr_setlength
		mov	bx,word [bp-2]
		mov	si,word [bp+8]
		mov	al,byte [bx+2]
		mov	byte [si+1],al
		mov	bx,word [bp-2]
		mov	si,word [bp+8]
		mov	al,byte [bx+3]
		mov	byte [si+2],al
..@j896:
		jmp	..@j907
..@j885:
		mov	bx,word [bp+8]
		mov	word [bx],16129
..@j907:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_shortstr_setlength
EXTERN	CHARSET_$$_FIND$WORD$PREVERSECHARMAPPING$LONGINT$$PREVERSECHARMAPPING
