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
	GLOBAL SYSTEM_$$_GETARG$SMALLINT$OPENSTRING$$SMALLINT
SYSTEM_$$_GETARG$SMALLINT$OPENSTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,782
		lea	ax,[bp-258]
		push	ax
		call	SYSTEM_$$_GETCOMMANDLINE$$SHORTSTRING
		mov	bx,word [bp+6]
		mov	byte [bx],0
		mov	word [bp-260],1
		mov	byte [bp-261],0
		mov	word [bp-2],0
		mov	al,byte [bp-258]
		mov	ah,0
		mov	word [bp-782],ax
		mov	word [bp-260],1
		mov	ax,word [bp-782]
		cmp	ax,word [bp-260]
		jl	..@j26606
		dec	word [bp-260]
	ALIGN 2
..@j26607:
		inc	word [bp-260]
		cmp	byte [bp-261],0
		je	..@j26610
		jmp	..@j26609
..@j26610:
		mov	al,byte [bp-260]
		mov	byte [bp-776],al
		mov	byte [bp-775],0
		mov	si,word [bp-776]
		cmp	byte [bp+si-258],32
		jne	..@j26608
		jmp	..@j26609
..@j26608:
		mov	byte [bp-261],1
		inc	word [bp-2]
..@j26609:
		cmp	byte [bp-261],0
		jne	..@j26615
		jmp	..@j26614
..@j26615:
		mov	al,byte [bp-260]
		mov	byte [bp-778],al
		mov	byte [bp-777],0
		mov	si,word [bp-778]
		cmp	byte [bp+si-258],32
		je	..@j26613
		jmp	..@j26614
..@j26613:
		mov	byte [bp-261],0
..@j26614:
		cmp	byte [bp-261],0
		jne	..@j26620
		jmp	..@j26619
..@j26620:
		mov	ax,word [bp-2]
		cmp	ax,word [bp+8]
		je	..@j26618
		jmp	..@j26619
..@j26618:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		lea	ax,[bp-517]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word [bp+6]
		push	ax
		mov	al,byte [bp-260]
		mov	byte [bp-780],al
		mov	byte [bp-779],0
		mov	si,word [bp-780]
		mov	al,byte [bp+si-258]
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	dx,0
		or	ax,1
		mov	word [bp-773],ax
		lea	ax,[bp-773]
		push	ax
		call	fpc_shortstr_concat
		lea	ax,[bp-517]
		push	ax
		call	fpc_shortstr_to_shortstr
..@j26619:
		mov	ax,word [bp-782]
		cmp	ax,word [bp-260]
		jg	..@j26607
..@j26606:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_shortstr_to_shortstr
EXTERN	fpc_shortstr_concat
EXTERN	SYSTEM_$$_GETCOMMANDLINE$$SHORTSTRING
