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
	GLOBAL CHARSET_$$_GETMAP$WORD$$PUNICODEMAP
CHARSET_$$_GETMAP$WORD$$PUNICODEMAP:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j740
		push	word [U_$CHARSET_$$_INTMAPCACHE+2]
		push	word [U_$CHARSET_$$_INTMAPCACHE]
		call	ax
		mov	bx,ax
		jmp	..@j741
..@j740:
		mov	bx,word U_$CHARSET_$$_INTMAPCACHE+2
..@j741:
		mov	ax,word [bx]
		cmp	ax,word [bp+4]
		je	..@j739
		jmp	..@j737
..@j739:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j742
		push	word [U_$CHARSET_$$_INTMAPCACHEP+2]
		push	word [U_$CHARSET_$$_INTMAPCACHEP]
		call	ax
		mov	bx,ax
		jmp	..@j743
..@j742:
		mov	bx,word U_$CHARSET_$$_INTMAPCACHEP+2
..@j743:
		cmp	word [bx],0
		jne	..@j738
		jmp	..@j737
..@j738:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j744
		push	word [U_$CHARSET_$$_INTMAPCACHEP+2]
		push	word [U_$CHARSET_$$_INTMAPCACHEP]
		call	ax
		mov	bx,ax
		jmp	..@j745
..@j744:
		mov	bx,word U_$CHARSET_$$_INTMAPCACHEP+2
..@j745:
		mov	bx,word [bx]
		mov	ax,word [bx+21]
		cmp	ax,word [bp+4]
		je	..@j736
		jmp	..@j737
..@j736:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j748
		push	word [U_$CHARSET_$$_INTMAPCACHEP+2]
		push	word [U_$CHARSET_$$_INTMAPCACHEP]
		call	ax
		mov	bx,ax
		jmp	..@j749
..@j748:
		mov	bx,word U_$CHARSET_$$_INTMAPCACHEP+2
..@j749:
		mov	ax,word [bx]
		mov	word [bp-2],ax
		jmp	..@j734
..@j737:
		mov	ax,word [U_$CHARSET_$$_MAPPINGS]
		mov	word [bp-4],ax
		jmp	..@j753
	ALIGN 2
..@j752:
		mov	bx,word [bp-4]
		mov	ax,word [bx+21]
		cmp	ax,word [bp+4]
		je	..@j755
		jmp	..@j756
..@j755:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j761
		push	word [U_$CHARSET_$$_INTMAPCACHE+2]
		push	word [U_$CHARSET_$$_INTMAPCACHE]
		call	ax
		mov	bx,ax
		jmp	..@j762
..@j761:
		mov	bx,word U_$CHARSET_$$_INTMAPCACHE+2
..@j762:
		mov	ax,word [bp+4]
		mov	word [bx],ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j765
		push	word [U_$CHARSET_$$_INTMAPCACHEP+2]
		push	word [U_$CHARSET_$$_INTMAPCACHEP]
		call	ax
		mov	bx,ax
		jmp	..@j766
..@j765:
		mov	bx,word U_$CHARSET_$$_INTMAPCACHEP+2
..@j766:
		mov	ax,word [bp-4]
		mov	word [bx],ax
		jmp	..@j734
..@j756:
		mov	bx,word [bp-4]
		mov	ax,word [bx+35]
		mov	word [bp-4],ax
..@j753:
		cmp	word [bp-4],0
		jne	..@j752
		jmp	..@j754
..@j754:
		mov	word [bp-2],0
..@j734:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	U_$CHARSET_$$_MAPPINGS
EXTERN	U_$CHARSET_$$_INTMAPCACHEP
EXTERN	U_$CHARSET_$$_INTMAPCACHE
EXTERN	FPC_THREADVAR_RELOCATE
