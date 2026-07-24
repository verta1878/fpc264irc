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
	GLOBAL DOS_$$_GETENV$SHORTSTRING$$SHORTSTRING
DOS_$$_GETENV$SHORTSTRING$$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,1030
		mov	dx,word [bp+4]
		lea	ax,[bp-516]
		push	ax
		mov	ax,255
		push	ax
		push	dx
		call	fpc_shortstr_to_shortstr
		lea	ax,[bp-516]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-772]
		push	ax
		lea	ax,[bp-516]
		push	ax
		call	SYSTEM_$$_UPCASE$SHORTSTRING$$SHORTSTRING
		lea	ax,[bp-772]
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	bx,word [bp+6]
		mov	byte [bx],0
		call	DOS_$$_ENVCOUNT$$LONGINT
		mov	word [bp-1030],ax
		mov	word [bp-260],1
		mov	ax,word [bp-1030]
		cmp	ax,word [bp-260]
		jl	..@j1928
		dec	word [bp-260]
	ALIGN 2
..@j1929:
		inc	word [bp-260]
		lea	ax,[bp-256]
		push	ax
		mov	ax,word [bp-260]
		cwd
		push	dx
		push	ax
		call	DOS_$$_ENVSTR$LONGINT$$SHORTSTRING
		mov	ax,61
		push	ax
		lea	ax,[bp-256]
		push	ax
		call	SYSTEM_$$_POS$CHAR$SHORTSTRING$$SMALLINT
		mov	word [bp-258],ax
		lea	ax,[bp-772]
		push	ax
		lea	ax,[bp-1028]
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,1
		push	ax
		mov	ax,word [bp-258]
		dec	ax
		push	ax
		call	fpc_shortstr_copy
		lea	ax,[bp-1028]
		push	ax
		call	SYSTEM_$$_UPCASE$SHORTSTRING$$SHORTSTRING
		lea	ax,[bp-772]
		push	ax
		lea	ax,[bp-516]
		push	ax
		call	fpc_shortstr_compare_equal
		cmp	dx,0
		jne	..@j1941
		cmp	ax,0
		jne	..@j1941
		jmp	..@j1940
..@j1940:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,word [bp-258]
		inc	ax
		push	ax
		mov	dl,byte [bp-256]
		mov	dh,0
		mov	ax,word [bp-258]
		sub	dx,ax
		push	dx
		call	fpc_shortstr_copy
		jmp	..@j1928
..@j1941:
		mov	ax,word [bp-1030]
		cmp	ax,word [bp-260]
		jg	..@j1929
..@j1928:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_shortstr_compare_equal
EXTERN	fpc_shortstr_copy
EXTERN	SYSTEM_$$_POS$CHAR$SHORTSTRING$$SMALLINT
EXTERN	DOS_$$_ENVSTR$LONGINT$$SHORTSTRING
EXTERN	DOS_$$_ENVCOUNT$$LONGINT
EXTERN	SYSTEM_$$_UPCASE$SHORTSTRING$$SHORTSTRING
EXTERN	fpc_shortstr_to_shortstr
