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
	GLOBAL FGL$_$TFPSLIST_$__$$_ASSIGN$TFPSLIST
FGL$_$TFPSLIST_$__$$_ASSIGN$TFPSLIST:
		push	bp
		mov	bp,sp
		sub	sp,260
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		mov	ax,word [bx+8]
		cmp	ax,word [si+8]
		jne	..@j875
		jmp	..@j876
..@j875:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-258]
		push	ax
		mov	ax,255
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SLISTITEMSIZEERROR+2]
		call	fpc_ansistr_to_shortstr
		lea	ax,[bp-258]
		push	ax
		mov	ax,0
		push	ax
		call	FGL$_$TFPSLIST_$__$$_ERROR$SHORTSTRING$SMALLINT
..@j876:
		push	word [bp+6]
		call	FGL$_$TFPSLIST_$__$$_CLEAR
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		dec	ax
		mov	word [bp-260],ax
		mov	word [bp-2],0
		mov	ax,word [bp-260]
		cmp	ax,word [bp-2]
		jl	..@j894
		dec	word [bp-2]
	ALIGN 2
..@j895:
		inc	word [bp-2]
		push	word [bp+6]
		push	word [bp+4]
		push	word [bp-2]
		call	FGL$_$TFPSLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	FGL$_$TFPSLIST_$__$$_ADD$POINTER$$SMALLINT
		mov	ax,word [bp-260]
		cmp	ax,word [bp-2]
		jg	..@j895
..@j894:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FGL$_$TFPSLIST_$__$$_ADD$POINTER$$SMALLINT
EXTERN	FGL$_$TFPSLIST_$__$$_GET$SMALLINT$$POINTER
EXTERN	FGL$_$TFPSLIST_$__$$_CLEAR
EXTERN	FGL$_$TFPSLIST_$__$$_ERROR$SHORTSTRING$SMALLINT
EXTERN	fpc_ansistr_to_shortstr
EXTERN	RESSTR_$RTLCONSTS_$$_SLISTITEMSIZEERROR
