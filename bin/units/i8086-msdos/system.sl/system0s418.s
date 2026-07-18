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
	GLOBAL SYSTEM_$$_DEFAULTUNICODE2ANSIMOVE$PUNICODECHAR$RAWBYTESTRING$WORD$SMALLINT
SYSTEM_$$_DEFAULTUNICODE2ANSIMOVE$PUNICODECHAR$RAWBYTESTRING$WORD$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	bx,word [bp+8]
		cmp	word [bx],0
		je	..@j10754
		jmp	..@j10755
..@j10754:
		jmp	..@j10746
..@j10755:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	dx,word [bp+4]
		mov	word [bp-2],1
		cmp	dx,word [bp-2]
		jl	..@j10767
		dec	word [bp-2]
	ALIGN 2
..@j10768:
		inc	word [bp-2]
		mov	bx,word [bp+10]
		cmp	word [bx],256
		jb	..@j10769
		jmp	..@j10770
..@j10769:
		mov	bx,word [bp+10]
		mov	si,word [bp-4]
		mov	al,byte [bx]
		mov	byte [si],al
		jmp	..@j10773
..@j10770:
		mov	bx,word [bp-4]
		mov	byte [bx],63
..@j10773:
		add	word [bp+10],2
		inc	word [bp-4]
		cmp	dx,word [bp-2]
		jg	..@j10768
..@j10767:
..@j10746:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
EXTERN	fpc_ansistr_setlength
