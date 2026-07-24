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
	GLOBAL FGL$_$TFPSMAP_$__$$_PUTKEY$SMALLINT$POINTER
FGL$_$TFPSMAP_$__$$_PUTKEY$SMALLINT$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,256
		mov	bx,word [bp+8]
		cmp	byte [bx+16],0
		jne	..@j1175
		jmp	..@j1176
..@j1175:
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SSORTEDLISTERROR+2]
		call	fpc_ansistr_to_shortstr
		lea	ax,[bp-256]
		push	ax
		mov	ax,0
		push	ax
		call	FGL$_$TFPSLIST_$__$$_ERROR$SHORTSTRING$SMALLINT
..@j1176:
		push	word [bp+8]
		push	word [bp+4]
		push	word [bp+8]
		push	word [bp+6]
		call	FGL$_$TFPSLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+56]
		call	ax
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FGL$_$TFPSLIST_$__$$_GET$SMALLINT$$POINTER
EXTERN	FGL$_$TFPSLIST_$__$$_ERROR$SHORTSTRING$SMALLINT
EXTERN	fpc_ansistr_to_shortstr
EXTERN	RESSTR_$RTLCONSTS_$$_SSORTEDLISTERROR
