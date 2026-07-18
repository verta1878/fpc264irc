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
	GLOBAL SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREINT$SMALLINT$SMALLINT
SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREINT$SMALLINT$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,24
		push	word [bp+6]
		push	word [bp+4]
		lea	ax,[bp-17]
		push	ax
		mov	ax,16
		push	ax
		call	fpc_shortstr_sint
		mov	al,byte [bp-17]
		mov	ah,0
		mov	word [bp-20],1
		cmp	ax,word [bp-20]
		jl	..@j11828
		dec	word [bp-20]
	ALIGN 2
..@j11829:
		inc	word [bp-20]
		mov	dl,byte [bp-20]
		mov	byte [bp-22],dl
		mov	byte [bp-21],0
		mov	si,word [bp-22]
		cmp	byte [bp+si-17],32
		je	..@j11830
		jmp	..@j11831
..@j11830:
		mov	dl,byte [bp-20]
		mov	byte [bp-24],dl
		mov	byte [bp-23],0
		mov	si,word [bp-24]
		mov	byte [bp+si-17],48
		jmp	..@j11834
..@j11831:
		jmp	..@j11828
..@j11834:
		cmp	ax,word [bp-20]
		jg	..@j11829
..@j11828:
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	al,byte [bp-17]
		mov	ah,0
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STORESTR$PCHAR$SMALLINT
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STORESTR$PCHAR$SMALLINT
EXTERN	fpc_shortstr_sint
