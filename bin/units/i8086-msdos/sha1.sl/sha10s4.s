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
	GLOBAL SHA1_$$_SHA1TRANSFORM$TSHA1CONTEXT$POINTER
SHA1_$$_SHA1TRANSFORM$TSHA1CONTEXT$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,94
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	word [bp-8],ax
		mov	ax,word [bx+6]
		mov	word [bp-6],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+8]
		mov	word [bp-12],ax
		mov	ax,word [bx+10]
		mov	word [bp-10],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+12]
		mov	word [bp-16],ax
		mov	ax,word [bx+14]
		mov	word [bp-14],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+16]
		mov	word [bp-20],ax
		mov	ax,word [bx+18]
		mov	word [bp-18],ax
		push	word [bp+4]
		lea	ax,[bp-88]
		push	ax
		mov	ax,64
		push	ax
		call	SHA1_$$_INVERT$POINTER$POINTER$WORD
		mov	word [bp-90],0
	ALIGN 2
..@j54:
		mov	ax,word [bp-8]
		mov	bx,word [bp-6]
		not	ax
		not	bx
		mov	dx,word [bp-16]
		mov	cx,word [bp-14]
		and	dx,ax
		and	cx,bx
		mov	di,word [bp-8]
		mov	si,word [bp-6]
		mov	ax,word [bp-12]
		mov	bx,word [bp-10]
		and	ax,di
		and	bx,si
		or	ax,dx
		or	bx,cx
		add	ax,31129
		adc	bx,23170
		mov	dx,word [bp-20]
		mov	cx,word [bp-18]
		add	dx,ax
		adc	cx,bx
		mov	word [bp-24],dx
		mov	word [bp-22],cx
		mov	ax,word [bp-16]
		mov	word [bp-20],ax
		mov	ax,word [bp-14]
		mov	word [bp-18],ax
		mov	ax,word [bp-12]
		mov	word [bp-16],ax
		mov	ax,word [bp-10]
		mov	word [bp-14],ax
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		shr	dx,1
		rcr	ax,1
		shr	dx,1
		rcr	ax,1
		mov	bx,word [bp-8]
		mov	si,word [bp-6]
		mov	si,bx
		mov	bx,0
		mov	cl,14
		shl	si,cl
		or	bx,ax
		or	si,dx
		mov	word [bp-12],bx
		mov	word [bp-10],si
		mov	ax,word [bp-4]
		mov	word [bp-8],ax
		mov	ax,word [bp-2]
		mov	word [bp-6],ax
		mov	dx,word [bp-4]
		mov	bx,word [bp-2]
		mov	cx,5
..@j73:
		shl	dx,1
		rcl	bx,1
		loop	..@j73
		mov	ax,word [bp-4]
		mov	si,word [bp-2]
		mov	ax,si
		mov	si,0
		mov	cl,11
		shr	ax,cl
		or	ax,dx
		or	si,bx
		mov	bx,word [bp-24]
		mov	dx,word [bp-22]
		add	bx,ax
		adc	dx,si
		mov	ax,word [bp-90]
		and	ax,15
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp+si-88]
		mov	cx,word [bp+si-86]
		add	ax,bx
		adc	cx,dx
		mov	word [bp-4],ax
		mov	word [bp-2],cx
		mov	ax,word [bp-90]
		add	ax,2
		and	ax,15
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp-90]
		and	ax,15
		mov	di,ax
		mov	cl,2
		shl	di,cl
		mov	dx,word [bp+si-88]
		mov	cx,word [bp+si-86]
		mov	ax,word [bp+di-88]
		mov	bx,word [bp+di-86]
		mov	di,bx
		xor	ax,dx
		xor	di,cx
		mov	dx,word [bp-90]
		add	dx,8
		and	dx,15
		mov	si,dx
		mov	cl,2
		shl	si,cl
		mov	cx,word [bp+si-88]
		mov	dx,word [bp+si-86]
		mov	bx,cx
		xor	bx,ax
		xor	dx,di
		mov	ax,word [bp-90]
		add	ax,13
		and	ax,15
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp+si-88]
		mov	cx,word [bp+si-86]
		xor	ax,bx
		xor	cx,dx
		mov	word [bp-94],ax
		mov	word [bp-92],cx
		mov	si,word [bp-94]
		mov	ax,word [bp-92]
		shl	si,1
		rcl	ax,1
		mov	dx,word [bp-94]
		mov	bx,word [bp-92]
		mov	dx,bx
		mov	bx,0
		mov	cl,15
		shr	dx,cl
		or	dx,si
		or	bx,ax
		mov	ax,word [bp-90]
		and	ax,15
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	word [bp+si-88],dx
		mov	word [bp+si-86],bx
		inc	word [bp-90]
		cmp	word [bp-90],19
		jg	..@j56
		jmp	..@j54
..@j56:
	ALIGN 2
..@j80:
		mov	bx,word [bp-8]
		mov	cx,word [bp-6]
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		xor	ax,bx
		xor	dx,cx
		mov	cx,word [bp-16]
		mov	bx,word [bp-14]
		xor	cx,ax
		xor	bx,dx
		add	cx,-5215
		adc	bx,28377
		mov	ax,word [bp-20]
		mov	dx,word [bp-18]
		add	ax,cx
		adc	dx,bx
		mov	word [bp-24],ax
		mov	word [bp-22],dx
		mov	ax,word [bp-16]
		mov	word [bp-20],ax
		mov	ax,word [bp-14]
		mov	word [bp-18],ax
		mov	ax,word [bp-12]
		mov	word [bp-16],ax
		mov	ax,word [bp-10]
		mov	word [bp-14],ax
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		shr	dx,1
		rcr	ax,1
		shr	dx,1
		rcr	ax,1
		mov	bx,word [bp-8]
		mov	si,word [bp-6]
		mov	si,bx
		mov	bx,0
		mov	cl,14
		shl	si,cl
		or	bx,ax
		or	si,dx
		mov	word [bp-12],bx
		mov	word [bp-10],si
		mov	ax,word [bp-4]
		mov	word [bp-8],ax
		mov	ax,word [bp-2]
		mov	word [bp-6],ax
		mov	dx,word [bp-4]
		mov	bx,word [bp-2]
		mov	cx,5
..@j99:
		shl	dx,1
		rcl	bx,1
		loop	..@j99
		mov	ax,word [bp-4]
		mov	si,word [bp-2]
		mov	ax,si
		mov	si,0
		mov	cl,11
		shr	ax,cl
		or	ax,dx
		or	si,bx
		mov	bx,word [bp-24]
		mov	dx,word [bp-22]
		add	bx,ax
		adc	dx,si
		mov	ax,word [bp-90]
		and	ax,15
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp+si-88]
		mov	cx,word [bp+si-86]
		add	ax,bx
		adc	cx,dx
		mov	word [bp-4],ax
		mov	word [bp-2],cx
		mov	ax,word [bp-90]
		add	ax,2
		and	ax,15
		mov	di,ax
		mov	cl,2
		shl	di,cl
		mov	ax,word [bp-90]
		and	ax,15
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	cx,word [bp+di-88]
		mov	bx,word [bp+di-86]
		mov	dx,word [bp+si-88]
		mov	ax,word [bp+si-86]
		xor	dx,cx
		xor	ax,bx
		mov	si,word [bp-90]
		add	si,8
		and	si,15
		mov	cl,2
		shl	si,cl
		mov	cx,word [bp+si-88]
		mov	bx,word [bp+si-86]
		mov	di,cx
		xor	di,dx
		xor	bx,ax
		mov	ax,word [bp-90]
		add	ax,13
		and	ax,15
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp+si-88]
		mov	dx,word [bp+si-86]
		xor	ax,di
		xor	dx,bx
		mov	word [bp-94],ax
		mov	word [bp-92],dx
		mov	si,word [bp-94]
		mov	ax,word [bp-92]
		shl	si,1
		rcl	ax,1
		mov	dx,word [bp-94]
		mov	bx,word [bp-92]
		mov	dx,bx
		mov	bx,0
		mov	cl,15
		shr	dx,cl
		or	dx,si
		or	bx,ax
		mov	ax,word [bp-90]
		and	ax,15
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	word [bp+si-88],dx
		mov	word [bp+si-86],bx
		inc	word [bp-90]
		cmp	word [bp-90],39
		jg	..@j82
		jmp	..@j80
..@j82:
	ALIGN 2
..@j106:
		mov	cx,word [bp-8]
		mov	si,word [bp-6]
		mov	dx,word [bp-12]
		mov	ax,word [bp-10]
		mov	bx,dx
		and	bx,cx
		and	ax,si
		mov	di,word [bp-8]
		mov	dx,word [bp-6]
		mov	si,word [bp-16]
		mov	cx,word [bp-14]
		and	si,di
		and	cx,dx
		mov	dx,si
		or	dx,bx
		or	cx,ax
		mov	ax,word [bp-12]
		mov	bx,word [bp-10]
		mov	di,word [bp-16]
		mov	si,word [bp-14]
		and	di,ax
		and	si,bx
		mov	ax,di
		or	ax,dx
		or	si,cx
		add	ax,-17188
		adc	si,-28901
		mov	dx,word [bp-20]
		mov	cx,word [bp-18]
		add	dx,ax
		adc	cx,si
		mov	word [bp-24],dx
		mov	word [bp-22],cx
		mov	ax,word [bp-16]
		mov	word [bp-20],ax
		mov	ax,word [bp-14]
		mov	word [bp-18],ax
		mov	ax,word [bp-12]
		mov	word [bp-16],ax
		mov	ax,word [bp-10]
		mov	word [bp-14],ax
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		shr	dx,1
		rcr	ax,1
		shr	dx,1
		rcr	ax,1
		mov	bx,word [bp-8]
		mov	si,word [bp-6]
		mov	si,bx
		mov	bx,0
		mov	cl,14
		shl	si,cl
		or	bx,ax
		or	si,dx
		mov	word [bp-12],bx
		mov	word [bp-10],si
		mov	ax,word [bp-4]
		mov	word [bp-8],ax
		mov	ax,word [bp-2]
		mov	word [bp-6],ax
		mov	dx,word [bp-4]
		mov	bx,word [bp-2]
		mov	cx,5
..@j125:
		shl	dx,1
		rcl	bx,1
		loop	..@j125
		mov	ax,word [bp-4]
		mov	si,word [bp-2]
		mov	ax,si
		mov	si,0
		mov	cl,11
		shr	ax,cl
		or	ax,dx
		or	si,bx
		mov	bx,word [bp-24]
		mov	dx,word [bp-22]
		add	bx,ax
		adc	dx,si
		mov	ax,word [bp-90]
		and	ax,15
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp+si-88]
		mov	cx,word [bp+si-86]
		add	ax,bx
		adc	cx,dx
		mov	word [bp-4],ax
		mov	word [bp-2],cx
		mov	ax,word [bp-90]
		add	ax,2
		and	ax,15
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp-90]
		and	ax,15
		mov	di,ax
		mov	cl,2
		shl	di,cl
		mov	cx,word [bp+si-88]
		mov	bx,word [bp+si-86]
		mov	ax,word [bp+di-88]
		mov	dx,word [bp+di-86]
		xor	ax,cx
		xor	dx,bx
		mov	si,word [bp-90]
		add	si,8
		and	si,15
		mov	cl,2
		shl	si,cl
		mov	cx,word [bp+si-88]
		mov	bx,word [bp+si-86]
		mov	di,cx
		xor	di,ax
		xor	bx,dx
		mov	ax,word [bp-90]
		add	ax,13
		and	ax,15
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp+si-88]
		mov	dx,word [bp+si-86]
		xor	ax,di
		xor	dx,bx
		mov	word [bp-94],ax
		mov	word [bp-92],dx
		mov	si,word [bp-94]
		mov	ax,word [bp-92]
		shl	si,1
		rcl	ax,1
		mov	dx,word [bp-94]
		mov	bx,word [bp-92]
		mov	dx,bx
		mov	bx,0
		mov	cl,15
		shr	dx,cl
		or	dx,si
		or	bx,ax
		mov	ax,word [bp-90]
		and	ax,15
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	word [bp+si-88],dx
		mov	word [bp+si-86],bx
		inc	word [bp-90]
		cmp	word [bp-90],59
		jg	..@j108
		jmp	..@j106
..@j108:
	ALIGN 2
..@j132:
		mov	cx,word [bp-8]
		mov	bx,word [bp-6]
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		xor	ax,cx
		xor	dx,bx
		mov	cx,word [bp-16]
		mov	bx,word [bp-14]
		xor	cx,ax
		xor	bx,dx
		add	cx,-15914
		adc	bx,-13726
		mov	ax,word [bp-20]
		mov	dx,word [bp-18]
		add	ax,cx
		adc	dx,bx
		mov	word [bp-24],ax
		mov	word [bp-22],dx
		mov	ax,word [bp-16]
		mov	word [bp-20],ax
		mov	ax,word [bp-14]
		mov	word [bp-18],ax
		mov	ax,word [bp-12]
		mov	word [bp-16],ax
		mov	ax,word [bp-10]
		mov	word [bp-14],ax
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		shr	dx,1
		rcr	ax,1
		shr	dx,1
		rcr	ax,1
		mov	bx,word [bp-8]
		mov	si,word [bp-6]
		mov	si,bx
		mov	bx,0
		mov	cl,14
		shl	si,cl
		or	bx,ax
		or	si,dx
		mov	word [bp-12],bx
		mov	word [bp-10],si
		mov	ax,word [bp-4]
		mov	word [bp-8],ax
		mov	ax,word [bp-2]
		mov	word [bp-6],ax
		mov	dx,word [bp-4]
		mov	bx,word [bp-2]
		mov	cx,5
..@j151:
		shl	dx,1
		rcl	bx,1
		loop	..@j151
		mov	ax,word [bp-4]
		mov	si,word [bp-2]
		mov	ax,si
		mov	si,0
		mov	cl,11
		shr	ax,cl
		or	ax,dx
		or	si,bx
		mov	bx,word [bp-24]
		mov	dx,word [bp-22]
		add	bx,ax
		adc	dx,si
		mov	ax,word [bp-90]
		and	ax,15
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp+si-88]
		mov	cx,word [bp+si-86]
		add	ax,bx
		adc	cx,dx
		mov	word [bp-4],ax
		mov	word [bp-2],cx
		mov	ax,word [bp-90]
		add	ax,2
		and	ax,15
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp-90]
		and	ax,15
		mov	di,ax
		mov	cl,2
		shl	di,cl
		mov	cx,word [bp+si-88]
		mov	bx,word [bp+si-86]
		mov	ax,word [bp+di-88]
		mov	dx,word [bp+di-86]
		xor	ax,cx
		xor	dx,bx
		mov	si,word [bp-90]
		add	si,8
		and	si,15
		mov	cl,2
		shl	si,cl
		mov	cx,word [bp+si-88]
		mov	bx,word [bp+si-86]
		mov	di,cx
		xor	di,ax
		xor	bx,dx
		mov	ax,word [bp-90]
		add	ax,13
		and	ax,15
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp+si-88]
		mov	dx,word [bp+si-86]
		xor	ax,di
		xor	dx,bx
		mov	word [bp-94],ax
		mov	word [bp-92],dx
		mov	bx,word [bp-94]
		mov	ax,word [bp-92]
		shl	bx,1
		rcl	ax,1
		mov	si,word [bp-94]
		mov	dx,word [bp-92]
		mov	si,dx
		mov	dx,0
		mov	cl,15
		shr	si,cl
		mov	di,si
		or	di,bx
		or	dx,ax
		mov	ax,word [bp-90]
		and	ax,15
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	word [bp+si-88],di
		mov	word [bp+si-86],dx
		inc	word [bp-90]
		cmp	word [bp-90],79
		jg	..@j134
		jmp	..@j132
..@j134:
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		add	word [bx],ax
		adc	word [bx+2],dx
		mov	bx,word [bp+6]
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		add	word [bx+4],ax
		adc	word [bx+6],dx
		mov	bx,word [bp+6]
		mov	dx,word [bp-12]
		mov	ax,word [bp-10]
		add	word [bx+8],dx
		adc	word [bx+10],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		add	word [bx+12],ax
		adc	word [bx+14],dx
		mov	bx,word [bp+6]
		mov	ax,word [bp-20]
		mov	dx,word [bp-18]
		add	word [bx+16],ax
		adc	word [bx+18],dx
		mov	bx,word [bp+6]
		add	word [bx+86],64
		adc	word [bx+88],0
		adc	word [bx+90],0
		adc	word [bx+92],0
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SHA1_$$_INVERT$POINTER$POINTER$WORD
