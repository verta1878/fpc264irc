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
	GLOBAL DOORKIT86_$$_DOORANSICOLOR$BYTE$BYTE
DOORKIT86_$$_DOORANSICOLOR$BYTE$BYTE:
		push	bp
		mov	bp,sp
		sub	sp,520
		cmp	byte [bp+6],7
		mov	al,0
		jbe	..@j129
		inc	ax
..@j129:
		mov	byte [bp-257],al
		cmp	byte [bp-257],0
		jne	..@j130
		jmp	..@j131
..@j130:
		mov	al,byte [bp+6]
		mov	ah,0
		sub	ax,8
		mov	byte [bp+6],al
..@j131:
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word _$DOORKIT86$_Ld2
		push	ax
		call	fpc_shortstr_to_shortstr
		cmp	byte [bp-257],0
		jne	..@j140
		jmp	..@j141
..@j140:
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,word _$DOORKIT86$_Ld3
		push	ax
		call	fpc_shortstr_concat
		jmp	..@j150
..@j141:
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,word _$DOORKIT86$_Ld4
		push	ax
		call	fpc_shortstr_concat
..@j150:
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-256]
		mov	word [bp-264],ax
		mov	ax,word _$DOORKIT86$_Ld5
		mov	word [bp-262],ax
		mov	al,byte [bp+6]
		mov	ah,0
		add	ax,48
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	dx,0
		or	ax,1
		mov	word [bp-520],ax
		lea	ax,[bp-520]
		mov	word [bp-260],ax
		lea	ax,[bp-264]
		push	ax
		mov	ax,2
		push	ax
		call	fpc_shortstr_concat_multi
		cmp	byte [bp+4],0
		ja	..@j167
		jmp	..@j168
..@j167:
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-256]
		mov	word [bp-264],ax
		mov	ax,word _$DOORKIT86$_Ld6
		mov	word [bp-262],ax
		mov	al,byte [bp+4]
		mov	ah,0
		add	ax,48
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	dx,0
		or	ax,1
		mov	word [bp-520],ax
		lea	ax,[bp-520]
		mov	word [bp-260],ax
		lea	ax,[bp-264]
		push	ax
		mov	ax,2
		push	ax
		call	fpc_shortstr_concat_multi
..@j168:
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,word _$DOORKIT86$_Ld7
		push	ax
		call	fpc_shortstr_concat
		lea	ax,[bp-256]
		push	ax
		call	DOORKIT86_$$_DOORWRITE$SHORTSTRING
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	DOORKIT86_$$_DOORWRITE$SHORTSTRING
EXTERN	_$DOORKIT86$_Ld7
EXTERN	_$DOORKIT86$_Ld6
EXTERN	fpc_shortstr_concat_multi
EXTERN	_$DOORKIT86$_Ld5
EXTERN	_$DOORKIT86$_Ld4
EXTERN	fpc_shortstr_concat
EXTERN	_$DOORKIT86$_Ld3
EXTERN	fpc_shortstr_to_shortstr
EXTERN	_$DOORKIT86$_Ld2
