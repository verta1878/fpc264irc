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
	GLOBAL DOORKIT86_$$_DOORINPUTLINE$BYTE$$SHORTSTRING
DOORKIT86_$$_DOORINPUTLINE$BYTE$$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,514
		mov	byte [bp-256],0
	ALIGN 2
..@j245:
		call	DOORKIT86_$$_DOORREADKEY$$CHAR
		mov	byte [bp-257],al
		mov	al,byte [bp-257]
		cmp	al,8
		jb	..@j251
		sub	al,8
		je	..@j253
		sub	al,5
		je	..@j252
		sub	al,14
		je	..@j254
		jmp	..@j251
..@j252:
		mov	ax,word _$DOORKIT86$_Ld11
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		jmp	..@j247
		jmp	..@j250
..@j253:
		cmp	byte [bp-256],0
		ja	..@j257
		jmp	..@j258
..@j257:
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		mov	al,byte [bp-256]
		mov	ah,0
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
		mov	ax,word _$DOORKIT86$_Ld12
		push	ax
		call	DOORKIT86_$$_DOORWRITE$SHORTSTRING
..@j258:
		jmp	..@j250
..@j254:
		jmp	..@j250
..@j251:
		mov	al,byte [bp-256]
		cmp	al,byte [bp+4]
		jb	..@j269
		jmp	..@j270
..@j269:
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	al,byte [bp-257]
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	dx,0
		or	ax,1
		mov	word [bp-513],ax
		lea	ax,[bp-513]
		push	ax
		call	fpc_shortstr_concat
		mov	al,byte [bp-257]
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	dx,0
		or	ax,1
		mov	word [bp-513],ax
		lea	ax,[bp-513]
		push	ax
		call	DOORKIT86_$$_DOORWRITE$SHORTSTRING
..@j270:
..@j250:
		jmp	..@j245
..@j247:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-256]
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_shortstr_to_shortstr
EXTERN	fpc_shortstr_concat
EXTERN	DOORKIT86_$$_DOORWRITE$SHORTSTRING
EXTERN	_$DOORKIT86$_Ld12
EXTERN	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
EXTERN	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
EXTERN	_$DOORKIT86$_Ld11
EXTERN	DOORKIT86_$$_DOORREADKEY$$CHAR
