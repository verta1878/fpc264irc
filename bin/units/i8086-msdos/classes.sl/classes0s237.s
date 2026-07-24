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
	GLOBAL CLASSES_$$_QUICKSORT$PPOINTERLIST$LONGINT$LONGINT$TLISTSORTCOMPARE
CLASSES_$$_QUICKSORT$PPOINTERLIST$LONGINT$LONGINT$TLISTSORTCOMPARE:
		push	bp
		mov	bp,sp
		sub	sp,16
	ALIGN 2
..@j5144:
		mov	ax,word [bp+10]
		mov	word [bp-4],ax
		mov	ax,word [bp+12]
		mov	word [bp-2],ax
		mov	ax,word [bp+6]
		mov	word [bp-8],ax
		mov	ax,word [bp+8]
		mov	word [bp-6],ax
		mov	ax,word [bp+14]
		mov	word [bp-16],ax
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		mov	cx,word [bp+10]
		mov	bx,word [bp+12]
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		add	ax,cx
		adc	dx,bx
		push	dx
		push	ax
		call	fpc_div_longint
		mov	si,ax
		shl	si,1
		mov	bx,word [bp-16]
		mov	ax,word [bx+si]
		mov	word [bp-10],ax
	ALIGN 2
..@j5157:
		jmp	..@j5161
	ALIGN 2
..@j5160:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		add	ax,1
		adc	dx,0
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j5161:
		push	word [bp-10]
		mov	bx,word [bp+14]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		mov	ax,word [bp+4]
		call	ax
		cmp	ax,0
		jg	..@j5160
		jmp	..@j5162
..@j5162:
		jmp	..@j5170
	ALIGN 2
..@j5169:
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-8],ax
		mov	word [bp-6],dx
..@j5170:
		push	word [bp-10]
		mov	bx,word [bp+14]
		mov	ax,word [bp-8]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		mov	ax,word [bp+4]
		call	ax
		cmp	ax,0
		jl	..@j5169
		jmp	..@j5171
..@j5171:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,word [bp-6]
		jl	..@j5178
		jg	..@j5179
		cmp	ax,word [bp-8]
		jbe	..@j5178
		jmp	..@j5179
		jmp	..@j5179
..@j5178:
		mov	bx,word [bp+14]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	word [bp-12],ax
		mov	ax,word [bp+14]
		mov	word [bp-14],ax
		mov	ax,word [bp-4]
		mov	di,ax
		shl	di,1
		mov	bx,word [bp+14]
		mov	ax,word [bp-8]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	bx,word [bp-14]
		mov	word [bx+di],ax
		mov	bx,word [bp+14]
		mov	ax,word [bp-8]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp-12]
		mov	word [bx+si],ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		add	ax,1
		adc	dx,0
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-8],ax
		mov	word [bp-6],dx
..@j5179:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,word [bp-6]
		jg	..@j5159
		jl	..@j5157
		cmp	ax,word [bp-8]
		ja	..@j5159
		jmp	..@j5157
		jmp	..@j5157
..@j5159:
		mov	di,word [bp-8]
		mov	si,word [bp-6]
		mov	ax,word [bp+10]
		mov	dx,word [bp+12]
		sub	di,ax
		sbb	si,dx
		mov	bx,word [bp+6]
		mov	cx,word [bp+8]
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		sub	bx,ax
		sbb	cx,dx
		cmp	si,cx
		jl	..@j5190
		jg	..@j5191
		cmp	di,bx
		jb	..@j5190
		jmp	..@j5191
..@j5190:
		mov	dx,word [bp+10]
		mov	ax,word [bp+12]
		cmp	ax,word [bp-6]
		jl	..@j5192
		jg	..@j5193
		cmp	dx,word [bp-8]
		jb	..@j5192
		jmp	..@j5193
		jmp	..@j5193
..@j5192:
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp+4]
		call	CLASSES_$$_QUICKSORT$PPOINTERLIST$LONGINT$LONGINT$TLISTSORTCOMPARE
..@j5193:
		mov	ax,word [bp-4]
		mov	word [bp+10],ax
		mov	ax,word [bp-2]
		mov	word [bp+12],ax
		jmp	..@j5204
..@j5191:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,word [bp+8]
		jl	..@j5205
		jg	..@j5206
		cmp	ax,word [bp+6]
		jb	..@j5205
		jmp	..@j5206
		jmp	..@j5206
..@j5205:
		push	word [bp+14]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES_$$_QUICKSORT$PPOINTERLIST$LONGINT$LONGINT$TLISTSORTCOMPARE
..@j5206:
		mov	ax,word [bp-8]
		mov	word [bp+6],ax
		mov	ax,word [bp-6]
		mov	word [bp+8],ax
..@j5204:
		mov	dx,word [bp+10]
		mov	ax,word [bp+12]
		cmp	ax,word [bp+8]
		jg	..@j5146
		jl	..@j5144
		cmp	dx,word [bp+6]
		jae	..@j5146
		jmp	..@j5144
		jmp	..@j5144
..@j5146:
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	fpc_div_longint
