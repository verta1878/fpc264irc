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
	GLOBAL FGL$_$TFPSMAP_$__$$_GETKEYDATA$POINTER$$POINTER
FGL$_$TFPSMAP_$__$$_GETKEYDATA$POINTER$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,260
		push	word [bp+6]
		push	word [bp+4]
		call	FGL$_$TFPSMAP_$__$$_INDEXOF$POINTER$$SMALLINT
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		jge	..@j1106
		jmp	..@j1107
..@j1106:
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mul	word [bx+8]
		mov	bx,word [bp+6]
		mov	dx,word [bx+2]
		add	dx,ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+10]
		add	ax,dx
		mov	word [bp-2],ax
		jmp	..@j1112
..@j1107:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-260]
		push	ax
		mov	ax,255
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SMAPKEYERROR+2]
		call	fpc_ansistr_to_shortstr
		lea	ax,[bp-260]
		push	ax
		push	word [bp+4]
		call	FGL$_$TFPSLIST_$__$$_ERROR$SHORTSTRING$SMALLINT
..@j1112:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FGL$_$TFPSLIST_$__$$_ERROR$SHORTSTRING$SMALLINT
EXTERN	fpc_ansistr_to_shortstr
EXTERN	RESSTR_$RTLCONSTS_$$_SMAPKEYERROR
EXTERN	FGL$_$TFPSMAP_$__$$_INDEXOF$POINTER$$SMALLINT
