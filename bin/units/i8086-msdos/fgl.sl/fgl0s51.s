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
	GLOBAL FGL$_$TFPSMAP_$__$$_ADD$POINTER$$SMALLINT
FGL$_$TFPSMAP_$__$$_ADD$POINTER$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,258
		mov	bx,word [bp+6]
		cmp	byte [bx+16],0
		jne	..@j1246
		jmp	..@j1247
..@j1246:
		push	word [bp+6]
		push	word [bp+4]
		lea	ax,[bp-2]
		push	ax
		call	FGL$_$TFPSMAP_$__$$_FIND$POINTER$SMALLINT$$BOOLEAN
		test	al,al
		jne	..@j1248
		jmp	..@j1249
..@j1248:
		mov	bx,word [bp+6]
		mov	ax,word [bx+14]
		mov	dx,0
		test	dx,dx
		jne	..@j1260
		test	ax,ax
		je	..@j1258
..@j1260:
		test	dx,dx
		jne	..@j1261
		cmp	ax,2
		je	..@j1259
..@j1261:
		jmp	..@j1257
..@j1258:
		jmp	..@j1244
		jmp	..@j1256
..@j1259:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-258]
		push	ax
		mov	ax,255
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SDUPLICATEITEM+2]
		call	fpc_ansistr_to_shortstr
		lea	ax,[bp-258]
		push	ax
		mov	ax,0
		push	ax
		call	FGL$_$TFPSLIST_$__$$_ERROR$SHORTSTRING$SMALLINT
		jmp	..@j1256
..@j1257:
..@j1256:
..@j1249:
		jmp	..@j1274
..@j1247:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	word [bp-2],ax
..@j1274:
		push	word [bp+6]
		push	word [bp+4]
		push	word [bp+6]
		push	word [bp-2]
		call	FGL$_$TFPSLIST_$__$$_INSERT$SMALLINT$$POINTER
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+56]
		call	ax
..@j1244:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FGL$_$TFPSLIST_$__$$_INSERT$SMALLINT$$POINTER
EXTERN	FGL$_$TFPSLIST_$__$$_ERROR$SHORTSTRING$SMALLINT
EXTERN	fpc_ansistr_to_shortstr
EXTERN	RESSTR_$RTLCONSTS_$$_SDUPLICATEITEM
EXTERN	FGL$_$TFPSMAP_$__$$_FIND$POINTER$SMALLINT$$BOOLEAN
