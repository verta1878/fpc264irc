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
	GLOBAL KEYBOARD_$$_DEFAULTTRANSLATEKEYEVENT$LONGWORD$$LONGWORD
KEYBOARD_$$_DEFAULTTRANSLATEKEYEVENT$LONGWORD$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	ax,0
		and	dx,768
		cmp	dx,768
		jne	..@j130
		cmp	ax,0
		jne	..@j130
		jmp	..@j129
..@j129:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		and	ax,255
		mov	dx,0
		cmp	dx,0
		jne	..@j131
		cmp	ax,0
		jne	..@j131
		jmp	..@j132
..@j131:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		and	dx,255
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j127
		jmp	..@j135
..@j132:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		and	ax,-256
		mov	dx,0
		mov	cx,8
..@j138:
		shr	dx,1
		rcr	ax,1
		loop	..@j138
		mov	byte [bp-7],al
		mov	word [bp-6],1
		dec	word [bp-6]
	ALIGN 2
..@j141:
		inc	word [bp-6]
		mov	bx,word [bp-6]
		mov	cl,2
		shl	bx,cl
		mov	al,byte [TC_$KEYBOARD_$$_TRANSLATIONTABLE+bx-4]
		cmp	al,byte [bp-7]
		jbe	..@j144
		jmp	..@j143
..@j144:
		mov	bx,word [bp-6]
		mov	cl,2
		shl	bx,cl
		mov	al,byte [TC_$KEYBOARD_$$_TRANSLATIONTABLE+bx-3]
		cmp	al,byte [bp-7]
		jae	..@j142
		jmp	..@j143
..@j142:
		mov	bx,word [bp-6]
		mov	cl,2
		shl	bx,cl
		mov	dl,byte [TC_$KEYBOARD_$$_TRANSLATIONTABLE+bx-4]
		mov	dh,0
		mov	al,byte [bp-7]
		mov	ah,0
		sub	ax,dx
		mov	cx,0
		mov	ah,0
		mov	dx,word [bp+4]
		mov	bx,word [bp+6]
		mov	dx,0
		and	bx,255
		add	bx,512
		add	dx,ax
		adc	bx,cx
		mov	si,word [bp-6]
		mov	cl,2
		shl	si,cl
		mov	ax,word [TC_$KEYBOARD_$$_TRANSLATIONTABLE+si-2]
		mov	cx,0
		add	ax,dx
		adc	cx,bx
		mov	word [bp-4],ax
		mov	word [bp-2],cx
		jmp	..@j127
..@j143:
		cmp	word [bp-6],12
		jl	..@j141
..@j135:
..@j130:
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
..@j127:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TC_$KEYBOARD_$$_TRANSLATIONTABLE
