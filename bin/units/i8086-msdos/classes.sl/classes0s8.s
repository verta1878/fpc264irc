BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TBITS_$__$$_SETSIZE$LONGINT
CLASSES$_$TBITS_$__$$_SETSIZE$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,8
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	CLASSES$_$TBITS_$__$$_CHECKBITINDEX$LONGINT$BOOLEAN
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jne	..@j137
		cmp	ax,0
		jne	..@j137
		jmp	..@j138
..@j137:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,5
..@j141:
		shr	dx,1
		rcr	ax,1
		loop	..@j141
		add	ax,1
		adc	dx,0
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j142
..@j138:
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j142:
		mov	bx,word [bp+8]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,word [bp-2]
		jne	..@j145
		cmp	dx,word [bp-4]
		jne	..@j145
		jmp	..@j146
		jmp	..@j146
..@j145:
		mov	bx,word [bp+8]
		lea	ax,[bx+2]
		push	ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		shl	ax,1
		rcl	dx,1
		shl	ax,1
		rcl	dx,1
		push	ax
		call	SYSTEM_$$_REALLOCMEM$POINTER$WORD$$POINTER
		mov	bx,word [bp+8]
		cmp	word [bx+2],0
		jne	..@j151
		jmp	..@j152
..@j151:
		mov	bx,word [bp+8]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,word [bp-2]
		jl	..@j153
		jg	..@j154
		cmp	dx,word [bp-4]
		jb	..@j153
		jmp	..@j154
		jmp	..@j154
..@j153:
		mov	dx,word [bp-4]
		mov	di,word [bp-2]
		sub	dx,1
		sbb	di,0
		mov	bx,word [bp+8]
		mov	cx,word [bx+4]
		mov	ax,word [bx+6]
		mov	word [bp-8],cx
		mov	word [bp-6],ax
		cmp	di,word [bp-6]
		jl	..@j158
		jg	..@j160
		cmp	dx,word [bp-8]
		jb	..@j158
..@j160:
		sub	word [bp-8],1
		sbb	word [bp-6],0
	ALIGN 2
..@j159:
		add	word [bp-8],1
		adc	word [bp-6],0
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	word [bx+si],0
		mov	word [bx+si+2],0
		cmp	di,word [bp-6]
		jg	..@j159
		jl	..@j163
		cmp	dx,word [bp-8]
		ja	..@j159
..@j163:
..@j158:
..@j154:
		jmp	..@j164
..@j152:
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,0
		jg	..@j165
		jl	..@j166
		cmp	dx,0
		ja	..@j165
		jmp	..@j166
..@j165:
		push	word [RESSTR_$RTLCONSTS_$$_SERROUTOFMEMORY+2]
		call	CLASSES_$$_BITSERROR$ANSISTRING
..@j166:
..@j164:
		mov	bx,word [bp+8]
		mov	ax,word [bp-4]
		mov	word [bx+4],ax
		mov	ax,word [bp-2]
		mov	word [bx+6],ax
..@j146:
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		mov	word [bx+8],ax
		mov	ax,word [bp+6]
		mov	word [bx+10],ax
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES_$$_BITSERROR$ANSISTRING
EXTERN	RESSTR_$RTLCONSTS_$$_SERROUTOFMEMORY
EXTERN	SYSTEM_$$_REALLOCMEM$POINTER$WORD$$POINTER
EXTERN	CLASSES$_$TBITS_$__$$_CHECKBITINDEX$LONGINT$BOOLEAN
