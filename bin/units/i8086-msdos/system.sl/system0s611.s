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
	GLOBAL SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY
SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY:
		push	bp
		mov	bp,sp
		sub	sp,14
		mov	ax,word [bp+6]
		mov	word [bp-10],ax
		jmp	..@j15177
	ALIGN 2
..@j15176:
		mov	bx,word [bp-10]
		mov	ax,word [bx+20]
		mov	word [bp-8],ax
		cmp	word [bp-8],0
		jne	..@j15181
		jmp	..@j15182
..@j15181:
		mov	bx,word [bp-8]
		mov	ax,word [bx]
		mov	dx,0
		sub	ax,1
		sbb	dx,0
		mov	word [bp-14],ax
		mov	word [bp-12],dx
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	ax,word [bp-12]
		cmp	ax,word [bp-4]
		jl	..@j15186
		jg	..@j15188
		mov	ax,word [bp-14]
		cmp	ax,word [bp-6]
		jb	..@j15186
..@j15188:
		sub	word [bp-6],1
		sbb	word [bp-4],0
	ALIGN 2
..@j15187:
		add	word [bp-6],1
		adc	word [bp-4],0
		mov	bx,word [bp-8]
		mov	ax,word [bp-6]
		mov	si,ax
		mov	ax,12
		mul	si
		mov	si,ax
		lea	ax,[bx+si+2]
		mov	word [bp-2],ax
		mov	bx,word [bp-2]
		cmp	word [bx],0
		jne	..@j15193
		jmp	..@j15192
..@j15193:
		mov	bx,word [bp-2]
		mov	ax,word [bx]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
		test	al,al
		jne	..@j15191
		jmp	..@j15192
..@j15191:
		jmp	..@j15172
..@j15192:
		mov	ax,word [bp-12]
		cmp	ax,word [bp-4]
		jg	..@j15187
		jl	..@j15198
		mov	ax,word [bp-14]
		cmp	ax,word [bp-6]
		ja	..@j15187
..@j15198:
..@j15186:
..@j15182:
		mov	bx,word [bp-10]
		mov	ax,word [bx+4]
		mov	word [bp-10],ax
..@j15177:
		cmp	word [bp-10],0
		jne	..@j15201
		jmp	..@j15178
..@j15201:
		mov	bx,word [bp-10]
		mov	ax,word FPC_EMPTYINTF
		cmp	ax,word [bx+20]
		jne	..@j15176
		jmp	..@j15178
..@j15178:
		mov	word [bp-2],0
..@j15172:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_EMPTYINTF
EXTERN	SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
