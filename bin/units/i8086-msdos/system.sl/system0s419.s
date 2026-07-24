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
	GLOBAL SYSTEM_$$_DEFAULTANSI2UNICODEMOVE$PCHAR$WORD$UNICODESTRING$SMALLINT
SYSTEM_$$_DEFAULTANSI2UNICODEMOVE$PCHAR$WORD$UNICODESTRING$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	fpc_unicodestr_setlength
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	ax,word [bp+4]
		mov	word [bp-2],1
		cmp	ax,word [bp-2]
		jl	..@j10787
		dec	word [bp-2]
	ALIGN 2
..@j10788:
		inc	word [bp-2]
		mov	bx,word [bp+10]
		mov	dl,byte [bx]
		mov	dh,0
		mov	bx,word [bp-4]
		mov	word [bx],dx
		inc	word [bp+10]
		add	word [bp-4],2
		cmp	ax,word [bp-2]
		jg	..@j10788
..@j10787:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_unicodestr_setlength
