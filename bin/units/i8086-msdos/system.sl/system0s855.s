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
	GLOBAL SYSTEM_$$_ARRAYSTRINGTOPPCHAR$array_of_ANSISTRING$LONGINT$$PPCHAR
SYSTEM_$$_ARRAYSTRINGTOPPCHAR$array_of_ANSISTRING$LONGINT$$PPCHAR:
		push	bp
		mov	bp,sp
		sub	sp,10
		cmp	word [bp+8],0
		jl	..@j18143
		jmp	..@j18144
..@j18143:
		mov	word [bp-2],0
		jmp	..@j18141
..@j18144:
		lea	ax,[bp-4]
		push	ax
		mov	ax,word [bp+8]
		cwd
		mov	bx,word [bp+4]
		mov	cx,word [bp+6]
		add	bx,ax
		adc	cx,dx
		add	bx,2
		adc	cx,0
		shl	bx,1
		rcl	cx,1
		push	bx
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		cmp	word [bp-4],0
		je	..@j18151
		jmp	..@j18152
..@j18151:
		mov	word [bp-2],0
		jmp	..@j18141
..@j18152:
		mov	ax,word [bp+8]
		cwd
		mov	word [bp-8],0
		mov	word [bp-6],0
		cmp	dx,word [bp-6]
		jl	..@j18158
		jg	..@j18160
		cmp	ax,word [bp-8]
		jb	..@j18158
..@j18160:
		sub	word [bp-8],1
		sbb	word [bp-6],0
	ALIGN 2
..@j18159:
		add	word [bp-8],1
		adc	word [bp-6],0
		mov	cx,word [bp-4]
		mov	word [bp-10],cx
		mov	cx,word [bp-8]
		mov	bx,word [bp-6]
		mov	si,word [bp+4]
		mov	di,word [bp+6]
		add	si,cx
		adc	di,bx
		mov	cx,si
		mov	di,cx
		shl	di,1
		mov	bx,word [bp+10]
		mov	cx,word [bp-8]
		mov	si,cx
		shl	si,1
		mov	cx,word [bx+si]
		test	cx,cx
		jne	..@j18163
		mov	cx,word FPC_EMPTYCHAR
..@j18163:
		mov	bx,word [bp-10]
		mov	word [bx+di],cx
		cmp	dx,word [bp-6]
		jg	..@j18159
		jl	..@j18164
		cmp	ax,word [bp-8]
		ja	..@j18159
..@j18164:
..@j18158:
		mov	bx,word [bp-4]
		mov	ax,word [bp+8]
		inc	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp+4]
		mov	si,word [bp+6]
		add	dx,cx
		adc	si,ax
		mov	si,dx
		shl	si,1
		mov	word [bx+si],0
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
..@j18141:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_EMPTYCHAR
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
