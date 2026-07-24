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
	GLOBAL CHARSET_$$_GETMAP$SHORTSTRING$$PUNICODEMAP
CHARSET_$$_GETMAP$SHORTSTRING$$PUNICODEMAP:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j689
		push	word [U_$CHARSET_$$_STRMAPCACHE+2]
		push	word [U_$CHARSET_$$_STRMAPCACHE]
		call	ax
		jmp	..@j690
..@j689:
		mov	ax,word U_$CHARSET_$$_STRMAPCACHE+2
..@j690:
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	fpc_shortstr_compare_equal
		cmp	dx,0
		jne	..@j684
		cmp	ax,0
		jne	..@j684
		jmp	..@j686
..@j686:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j693
		push	word [U_$CHARSET_$$_STRMAPCACHEP+2]
		push	word [U_$CHARSET_$$_STRMAPCACHEP]
		call	ax
		mov	bx,ax
		jmp	..@j694
..@j693:
		mov	bx,word U_$CHARSET_$$_STRMAPCACHEP+2
..@j694:
		cmp	word [bx],0
		jne	..@j685
		jmp	..@j684
..@j685:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j697
		push	word [U_$CHARSET_$$_STRMAPCACHEP+2]
		push	word [U_$CHARSET_$$_STRMAPCACHEP]
		call	ax
		mov	bx,ax
		jmp	..@j698
..@j697:
		mov	bx,word U_$CHARSET_$$_STRMAPCACHEP+2
..@j698:
		mov	ax,word [bx]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	fpc_shortstr_compare_equal
		cmp	dx,0
		jne	..@j684
		cmp	ax,0
		jne	..@j684
		jmp	..@j683
..@j683:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j703
		push	word [U_$CHARSET_$$_STRMAPCACHEP+2]
		push	word [U_$CHARSET_$$_STRMAPCACHEP]
		call	ax
		mov	bx,ax
		jmp	..@j704
..@j703:
		mov	bx,word U_$CHARSET_$$_STRMAPCACHEP+2
..@j704:
		mov	ax,word [bx]
		mov	word [bp-2],ax
		jmp	..@j681
..@j684:
		mov	ax,word [U_$CHARSET_$$_MAPPINGS]
		mov	word [bp-4],ax
		jmp	..@j708
	ALIGN 2
..@j707:
		mov	ax,word [bp-4]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	fpc_shortstr_compare_equal
		cmp	dx,0
		jne	..@j711
		cmp	ax,0
		jne	..@j711
		jmp	..@j710
..@j710:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j720
		push	word [U_$CHARSET_$$_STRMAPCACHE+2]
		push	word [U_$CHARSET_$$_STRMAPCACHE]
		call	ax
		jmp	..@j721
..@j720:
		mov	ax,word U_$CHARSET_$$_STRMAPCACHE+2
..@j721:
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j728
		push	word [U_$CHARSET_$$_STRMAPCACHEP+2]
		push	word [U_$CHARSET_$$_STRMAPCACHEP]
		call	ax
		mov	bx,ax
		jmp	..@j729
..@j728:
		mov	bx,word U_$CHARSET_$$_STRMAPCACHEP+2
..@j729:
		mov	ax,word [bp-4]
		mov	word [bx],ax
		jmp	..@j681
..@j711:
		mov	bx,word [bp-4]
		mov	ax,word [bx+35]
		mov	word [bp-4],ax
..@j708:
		cmp	word [bp-4],0
		jne	..@j707
		jmp	..@j709
..@j709:
		mov	word [bp-2],0
..@j681:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_shortstr_to_shortstr
EXTERN	U_$CHARSET_$$_MAPPINGS
EXTERN	U_$CHARSET_$$_STRMAPCACHEP
EXTERN	fpc_shortstr_compare_equal
EXTERN	U_$CHARSET_$$_STRMAPCACHE
EXTERN	FPC_THREADVAR_RELOCATE
