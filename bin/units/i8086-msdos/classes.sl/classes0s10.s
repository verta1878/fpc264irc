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
	GLOBAL CLASSES$_$TBITS_$__$$_OPENBIT$$LONGINT
CLASSES$_$TBITS_$__$$_OPENBIT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,14
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		mov	bx,word [bp+4]
		mov	dx,word [bx+8]
		mov	ax,word [bx+10]
		add	dx,31
		adc	ax,0
		mov	cx,5
..@j199:
		shr	ax,1
		rcr	dx,1
		loop	..@j199
		sub	dx,1
		sbb	ax,0
		mov	word [bp-14],dx
		mov	di,ax
		mov	word [bp-8],0
		mov	word [bp-6],0
		cmp	di,word [bp-6]
		jl	..@j201
		jg	..@j203
		mov	ax,word [bp-14]
		cmp	ax,word [bp-8]
		jb	..@j201
..@j203:
		sub	word [bp-8],1
		sbb	word [bp-6],0
	ALIGN 2
..@j202:
		add	word [bp-8],1
		adc	word [bp-6],0
		mov	bx,word [bp+4]
		mov	bx,word [bx+2]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	dx,word [bx+si]
		mov	ax,word [bx+si+2]
		cmp	ax,-1
		jne	..@j204
		cmp	dx,-1
		jne	..@j204
		jmp	..@j205
..@j204:
		mov	word [bp-12],0
		mov	word [bp-10],0
		sub	word [bp-12],1
		sbb	word [bp-10],0
	ALIGN 2
..@j208:
		add	word [bp-12],1
		adc	word [bp-10],0
		mov	bx,word [bp+4]
		mov	bx,word [bx+2]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,1
		mov	dx,0
		mov	cx,word [bp-12]
		and	cx,31
		jz	..@j211
..@j212:
		shl	ax,1
		rcl	dx,1
		loop	..@j212
..@j211:
		mov	cx,word [bx+si]
		mov	bx,word [bx+si+2]
		mov	si,ax
		mov	ax,dx
		and	si,cx
		and	ax,bx
		cmp	ax,0
		jne	..@j210
		cmp	si,0
		jne	..@j210
		jmp	..@j209
..@j209:
		mov	bx,word [bp-8]
		mov	dx,word [bp-6]
		mov	cx,5
..@j215:
		shl	bx,1
		rcl	dx,1
		loop	..@j215
		mov	cx,word [bp-12]
		mov	ax,word [bp-10]
		add	cx,bx
		adc	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		mov	dx,word [bx+8]
		mov	ax,word [bx+10]
		cmp	ax,word [bp-2]
		jl	..@j216
		jg	..@j217
		cmp	dx,word [bp-4]
		jb	..@j216
		jmp	..@j217
		jmp	..@j217
..@j216:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-4],ax
		mov	ax,word [bx+10]
		mov	word [bp-2],ax
..@j217:
		jmp	..@j193
..@j210:
		cmp	word [bp-10],0
		jl	..@j208
		jg	..@j220
		cmp	word [bp-12],31
		jb	..@j208
..@j220:
..@j205:
		cmp	di,word [bp-6]
		jg	..@j202
		jl	..@j221
		mov	ax,word [bp-14]
		cmp	ax,word [bp-8]
		ja	..@j202
..@j221:
..@j201:
		mov	bx,word [bp+4]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,0
		jl	..@j222
		jg	..@j223
		cmp	dx,1023
		jb	..@j222
		jmp	..@j223
..@j222:
		mov	bx,word [bp+4]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		mov	cx,5
..@j226:
		shl	dx,1
		rcl	ax,1
		loop	..@j226
		mov	word [bp-4],dx
		mov	word [bp-2],ax
..@j223:
..@j193:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
