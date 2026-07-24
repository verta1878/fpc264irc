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
	GLOBAL TYPINFO_$$_GETPROPLIST$PTYPEINFO$PPROPLIST$$SMALLINT
TYPINFO_$$_GETPROPLIST$PTYPEINFO$PPROPLIST$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+6]
		call	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
		mov	bx,ax
		mov	ax,word [bx+4]
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jg	..@j726
		jmp	..@j727
..@j726:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp-2]
		shl	ax,1
		push	ax
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		push	word [bp+6]
		mov	bx,word [bp+4]
		push	word [bx]
		call	TYPINFO_$$_GETPROPINFOS$PTYPEINFO$PPROPLIST
		jmp	..@j736
..@j727:
		mov	bx,word [bp+4]
		mov	word [bx],0
..@j736:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TYPINFO_$$_GETPROPINFOS$PTYPEINFO$PPROPLIST
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
EXTERN	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
