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
	GLOBAL FGL$_$TFPSLIST_$__$$_SETCOUNT$SMALLINT
FGL$_$TFPSLIST_$__$$_SETCOUNT$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,256
		cmp	word [bp+4],0
		jl	..@j190
		jmp	..@j192
..@j192:
		cmp	word [bp+4],2047
		jg	..@j190
		jmp	..@j191
..@j190:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SLISTCOUNTERROR+2]
		call	fpc_ansistr_to_shortstr
		lea	ax,[bp-256]
		push	ax
		push	word [bp+4]
		call	FGL$_$TFPSLIST_$__$$_ERROR$SHORTSTRING$SMALLINT
..@j191:
		mov	bx,word [bp+6]
		mov	ax,word [bx+6]
		cmp	ax,word [bp+4]
		jl	..@j205
		jmp	..@j206
..@j205:
		push	word [bp+6]
		push	word [bp+4]
		call	FGL$_$TFPSLIST_$__$$_SETCAPACITY$SMALLINT
..@j206:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		cmp	ax,word [bp+4]
		jl	..@j211
		jmp	..@j212
..@j211:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-2]
		mul	word [bx+8]
		mov	bx,word [bp+6]
		mov	dx,word [bx+2]
		add	dx,ax
		push	dx
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	dx,word [bp+4]
		sub	dx,ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+8]
		mul	dx
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLBYTE$formal$SMALLINT$BYTE
		jmp	..@j223
..@j212:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		cmp	ax,word [bp+4]
		jg	..@j224
		jmp	..@j225
..@j224:
		push	word [bp+6]
		push	word [bp+4]
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		dec	ax
		push	ax
		call	FGL$_$TFPSLIST_$__$$_DEREF$SMALLINT$SMALLINT
..@j225:
..@j223:
		mov	bx,word [bp+6]
		mov	ax,word [bp+4]
		mov	word [bx+4],ax
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FGL$_$TFPSLIST_$__$$_DEREF$SMALLINT$SMALLINT
EXTERN	SYSTEM_$$_FILLBYTE$formal$SMALLINT$BYTE
EXTERN	FGL$_$TFPSLIST_$__$$_SETCAPACITY$SMALLINT
EXTERN	FGL$_$TFPSLIST_$__$$_ERROR$SHORTSTRING$SMALLINT
EXTERN	fpc_ansistr_to_shortstr
EXTERN	RESSTR_$RTLCONSTS_$$_SLISTCOUNTERROR
