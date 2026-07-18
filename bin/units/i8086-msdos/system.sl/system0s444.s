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
	GLOBAL fpc_unicodestr_concat_multi
fpc_unicodestr_concat_multi:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+4],0
		je	..@j11227
		jmp	..@j11228
..@j11227:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_unicodestr_assign
		jmp	..@j11225
..@j11228:
		mov	word [bp-18],0
		mov	word [bp-16],0
		mov	word [bp-14],0
		mov	bx,word [bp+6]
		mov	ax,word [bp-16]
		mov	si,ax
		shl	si,1
		mov	di,word [bp+8]
		mov	ax,word [bx+si]
		cmp	ax,word [di]
		je	..@j11237
		jmp	..@j11238
..@j11237:
		add	word [bp-16],1
		adc	word [bp-14],0
..@j11238:
		mov	ax,word [bp+4]
		cwd
		mov	word [bp-24],ax
		mov	word [bp-22],dx
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-22]
		cmp	ax,word [bp-2]
		jl	..@j11242
		jg	..@j11244
		mov	ax,word [bp-24]
		cmp	ax,word [bp-4]
		jb	..@j11242
..@j11244:
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j11243:
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		mov	di,word [bp+8]
		mov	ax,word [bx+si]
		cmp	ax,word [di]
		je	..@j11245
		jmp	..@j11246
..@j11245:
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	word [bp-18],ax
		push	word [bp-18]
		call	FPC_UNICODESTR_INCR_REF
		mov	word [bp-16],0
		mov	word [bp-14],0
		jmp	..@j11242
..@j11246:
		mov	ax,word [bp-22]
		cmp	ax,word [bp-2]
		jg	..@j11243
		jl	..@j11253
		mov	ax,word [bp-24]
		cmp	ax,word [bp-4]
		ja	..@j11243
..@j11253:
..@j11242:
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		cmp	dx,0
		jne	..@j11255
		cmp	ax,0
		jne	..@j11255
		jmp	..@j11254
..@j11254:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_unicodestr_assign
..@j11255:
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j11262
		mov	bx,word [bx-2]
..@j11262:
		mov	word [bp-20],bx
		mov	word [bp-12],0
		mov	ax,word [bp+4]
		cwd
		mov	word [bp-4],0
		mov	word [bp-2],0
		cmp	dx,word [bp-2]
		jl	..@j11268
		jg	..@j11270
		cmp	ax,word [bp-4]
		jb	..@j11268
..@j11270:
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j11269:
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	bx,word [bp+6]
		mov	cx,word [bp-4]
		mov	si,cx
		shl	si,1
		mov	bx,word [bx+si]
		test	bx,bx
		je	..@j11271
		mov	bx,word [bx-2]
..@j11271:
		add	word [bp-12],bx
		cmp	dx,word [bp-2]
		jg	..@j11269
		jl	..@j11272
		cmp	ax,word [bp-4]
		ja	..@j11269
..@j11272:
..@j11268:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp-12]
		call	fpc_unicodestr_setlength
		mov	ax,word [bp-20]
		shl	ax,1
		mov	bx,word [bp+8]
		mov	dx,word [bx]
		add	dx,ax
		mov	word [bp-8],dx
		mov	ax,word [bp+4]
		cwd
		mov	word [bp-28],ax
		mov	word [bp-26],dx
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-26]
		cmp	ax,word [bp-2]
		jl	..@j11282
		jg	..@j11284
		mov	ax,word [bp-28]
		cmp	ax,word [bp-4]
		jb	..@j11282
..@j11284:
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j11283:
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	word [bp-6],ax
		cmp	word [bp-6],0
		jne	..@j11287
		jmp	..@j11288
..@j11287:
		mov	bx,word [bp-6]
		test	bx,bx
		je	..@j11291
		mov	bx,word [bx-2]
..@j11291:
		mov	word [bp-10],bx
		mov	ax,word [bp-6]
		push	ax
		mov	ax,word [bp-8]
		push	ax
		mov	ax,word [bp-10]
		inc	ax
		shl	ax,1
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp-10]
		shl	ax,1
		add	word [bp-8],ax
..@j11288:
		mov	ax,word [bp-26]
		cmp	ax,word [bp-2]
		jg	..@j11283
		jl	..@j11298
		mov	ax,word [bp-28]
		cmp	ax,word [bp-4]
		ja	..@j11283
..@j11298:
..@j11282:
		lea	ax,[bp-18]
		push	ax
		call	FPC_UNICODESTR_DECR_REF
..@j11225:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_UNICODESTR_DECR_REF
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_unicodestr_setlength
EXTERN	FPC_UNICODESTR_INCR_REF
EXTERN	fpc_unicodestr_assign
