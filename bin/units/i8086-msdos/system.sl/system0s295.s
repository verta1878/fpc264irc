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
	GLOBAL SYSTEM$_$STR_REAL$crcEDBAA446_$$_U128_DIV_U64_TO_U64$QWORD$QWORD$QWORD$QWORD$QWORD$$BOOLEAN
SYSTEM$_$STR_REAL$crcEDBAA446_$$_U128_DIV_U64_TO_U64$QWORD$QWORD$QWORD$QWORD$QWORD$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,140
		mov	cx,word [bp+24]
		mov	ax,word [bp+26]
		mov	dx,word [bp+28]
		mov	bx,word [bp+30]
		cmp	bx,word [bp+14]
		ja	..@j5234
		jb	..@j5235
		cmp	dx,word [bp+12]
		ja	..@j5234
		jb	..@j5235
		cmp	ax,word [bp+10]
		ja	..@j5234
		jb	..@j5235
		cmp	cx,word [bp+8]
		jae	..@j5234
		jmp	..@j5235
		jmp	..@j5235
..@j5234:
		mov	byte [bp-1],0
		jmp	..@j4702
..@j5235:
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		call	SYSTEM_$$_BSRQWORD$QWORD$$BYTE
		mov	ah,0
		mov	dx,63
		sub	dx,ax
		mov	word [bp-100],dx
		mov	si,word [bp+8]
		mov	dx,word [bp+10]
		mov	bx,word [bp+12]
		mov	ax,word [bp+14]
		mov	cx,word [bp-100]
		cmp	cx,64
		jl	..@j5244
		xor	si,si
		xor	dx,dx
		xor	bx,bx
		xor	ax,ax
		jmp	..@j5246
..@j5244:
		test	cx,cx
		je	..@j5246
..@j5245:
		shl	si,1
		rcl	dx,1
		rcl	bx,1
		rcl	ax,1
		loop	..@j5245
..@j5246:
		mov	word [bp-18],si
		mov	word [bp-16],dx
		mov	word [bp-14],bx
		mov	word [bp-12],ax
		mov	si,word [bp-18]
		mov	dx,word [bp-16]
		mov	ax,word [bp-14]
		mov	bx,word [bp-12]
		mov	cx,32
..@j5250:
		shr	bx,1
		rcr	ax,1
		rcr	dx,1
		rcr	si,1
		loop	..@j5250
		mov	cx,si
		mov	bx,dx
		mov	cx,si
		mov	bx,dx
		mov	ax,0
		mov	dx,0
		mov	word [bp-42],cx
		mov	word [bp-40],bx
		mov	word [bp-38],ax
		mov	word [bp-36],dx
		mov	bx,word [bp-18]
		mov	dx,word [bp-16]
		mov	cx,0
		mov	ax,0
		mov	word [bp-50],bx
		mov	word [bp-48],dx
		mov	word [bp-46],cx
		mov	word [bp-44],ax
		mov	ax,word [bp+24]
		mov	dx,word [bp+26]
		mov	si,word [bp+28]
		mov	bx,word [bp+30]
		mov	cx,word [bp-100]
		cmp	cx,64
		jl	..@j5256
		xor	ax,ax
		xor	dx,dx
		xor	si,si
		xor	bx,bx
		jmp	..@j5258
..@j5256:
		test	cx,cx
		je	..@j5258
..@j5257:
		shl	ax,1
		rcl	dx,1
		rcl	si,1
		rcl	bx,1
		loop	..@j5257
..@j5258:
		mov	word [bp-74],ax
		mov	word [bp-72],dx
		mov	word [bp-70],si
		mov	word [bp-68],bx
		cmp	word [bp-100],0
		jg	..@j5259
		jmp	..@j5260
..@j5259:
		mov	ax,word [bp-100]
		mov	cx,64
		sub	cx,ax
		mov	ax,word [bp+16]
		mov	dx,word [bp+18]
		mov	si,word [bp+20]
		mov	bx,word [bp+22]
		cmp	cx,64
		jl	..@j5263
		xor	ax,ax
		xor	dx,dx
		xor	si,si
		xor	bx,bx
		jmp	..@j5265
..@j5263:
		test	cx,cx
		je	..@j5265
..@j5264:
		shr	bx,1
		rcr	si,1
		rcr	dx,1
		rcr	ax,1
		loop	..@j5264
..@j5265:
		or	ax,word [bp-74]
		or	dx,word [bp-72]
		or	si,word [bp-70]
		or	bx,word [bp-68]
		mov	word [bp-74],ax
		mov	word [bp-72],dx
		mov	word [bp-70],si
		mov	word [bp-68],bx
..@j5260:
		mov	bx,word [bp+16]
		mov	si,word [bp+18]
		mov	dx,word [bp+20]
		mov	ax,word [bp+22]
		mov	cx,word [bp-100]
		cmp	cx,64
		jl	..@j5268
		xor	bx,bx
		xor	si,si
		xor	dx,dx
		xor	ax,ax
		jmp	..@j5270
..@j5268:
		test	cx,cx
		je	..@j5270
..@j5269:
		shl	bx,1
		rcl	si,1
		rcl	dx,1
		rcl	ax,1
		loop	..@j5269
..@j5270:
		mov	word [bp-90],bx
		mov	word [bp-88],si
		mov	word [bp-86],dx
		mov	word [bp-84],ax
		mov	dx,word [bp-90]
		mov	ax,word [bp-88]
		mov	si,word [bp-86]
		mov	bx,word [bp-84]
		mov	cx,32
..@j5274:
		shr	bx,1
		rcr	si,1
		rcr	ax,1
		rcr	dx,1
		loop	..@j5274
		mov	cx,dx
		mov	bx,ax
		mov	cx,dx
		mov	bx,ax
		mov	dx,0
		mov	ax,0
		mov	word [bp-26],cx
		mov	word [bp-24],bx
		mov	word [bp-22],dx
		mov	word [bp-20],ax
		mov	ax,word [bp-90]
		mov	cx,word [bp-88]
		mov	bx,0
		mov	dx,0
		mov	word [bp-34],ax
		mov	word [bp-32],cx
		mov	word [bp-30],bx
		mov	word [bp-28],dx
		push	word [bp-36]
		push	word [bp-38]
		push	word [bp-40]
		push	word [bp-42]
		push	word [bp-68]
		push	word [bp-70]
		push	word [bp-72]
		push	word [bp-74]
		call	fpc_div_qword
		mov	word [bp-58],dx
		mov	word [bp-56],cx
		mov	word [bp-54],bx
		mov	word [bp-52],ax
		push	word [bp-52]
		push	word [bp-54]
		push	word [bp-56]
		push	word [bp-58]
		push	word [bp-36]
		push	word [bp-38]
		push	word [bp-40]
		push	word [bp-42]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_qword
		mov	si,word [bp-74]
		mov	di,word [bp-72]
		sub	si,dx
		sbb	di,cx
		mov	dx,si
		mov	cx,di
		mov	si,word [bp-70]
		mov	di,word [bp-68]
		sbb	si,bx
		sbb	di,ax
		mov	bx,si
		mov	ax,di
		mov	word [bp-98],dx
		mov	word [bp-96],cx
		mov	word [bp-94],bx
		mov	word [bp-92],ax
		mov	word [bp-10],0
		mov	word [bp-8],0
		mov	word [bp-6],1
		mov	word [bp-4],0
		jmp	..@j5295
	ALIGN 2
..@j5294:
		sub	word [bp-58],1
		sbb	word [bp-56],0
		sbb	word [bp-54],0
		sbb	word [bp-52],0
		mov	ax,word [bp-42]
		mov	word [bp-106],ax
		mov	bx,word [bp-40]
		mov	si,word [bp-38]
		mov	ax,word [bp-36]
		mov	word [bp-102],ax
		mov	di,word [bp-98]
		mov	ax,word [bp-96]
		mov	dx,word [bp-94]
		mov	cx,word [bp-92]
		add	di,word [bp-106]
		adc	ax,bx
		adc	dx,si
		adc	cx,word [bp-102]
		mov	word [bp-98],di
		mov	word [bp-96],ax
		mov	word [bp-94],dx
		mov	word [bp-92],cx
		mov	cx,word [bp-98]
		mov	bx,word [bp-96]
		mov	dx,word [bp-94]
		mov	ax,word [bp-92]
		cmp	ax,word [bp-4]
		ja	..@j5297
		jb	..@j5298
		cmp	dx,word [bp-6]
		ja	..@j5297
		jb	..@j5298
		cmp	bx,word [bp-8]
		ja	..@j5297
		jb	..@j5298
		cmp	cx,word [bp-10]
		jae	..@j5297
		jmp	..@j5298
		jmp	..@j5298
..@j5297:
		jmp	..@j5296
..@j5298:
..@j5295:
		mov	ax,word [bp-58]
		mov	dx,word [bp-56]
		mov	cx,word [bp-54]
		mov	bx,word [bp-52]
		cmp	bx,word [bp-4]
		ja	..@j5294
		jb	..@j5299
		cmp	cx,word [bp-6]
		ja	..@j5294
		jb	..@j5299
		cmp	dx,word [bp-8]
		ja	..@j5294
		jb	..@j5299
		cmp	ax,word [bp-10]
		jae	..@j5294
		jmp	..@j5299
		jmp	..@j5299
..@j5299:
		push	word [bp-52]
		push	word [bp-54]
		push	word [bp-56]
		push	word [bp-58]
		push	word [bp-44]
		push	word [bp-46]
		push	word [bp-48]
		push	word [bp-50]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_qword
		mov	word [bp-130],dx
		mov	word [bp-128],cx
		mov	word [bp-126],bx
		mov	word [bp-122],ax
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-92]
		push	word [bp-94]
		push	word [bp-96]
		push	word [bp-98]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_qword
		mov	si,dx
		mov	dx,bx
		add	si,word [bp-26]
		adc	cx,word [bp-24]
		adc	dx,word [bp-22]
		adc	ax,word [bp-20]
		cmp	word [bp-122],ax
		ja	..@j5294
		jb	..@j5296
		cmp	word [bp-126],dx
		ja	..@j5294
		jb	..@j5296
		cmp	word [bp-128],cx
		ja	..@j5294
		jb	..@j5296
		cmp	word [bp-130],si
		ja	..@j5294
		jmp	..@j5296
..@j5296:
		push	word [bp-68]
		push	word [bp-70]
		push	word [bp-72]
		push	word [bp-74]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_qword
		mov	word [bp-110],dx
		mov	word [bp-112],cx
		mov	word [bp-114],bx
		mov	word [bp-116],ax
		mov	ax,word [bp-110]
		add	ax,word [bp-26]
		mov	word [bp-110],ax
		mov	ax,word [bp-112]
		adc	ax,word [bp-24]
		mov	word [bp-112],ax
		mov	ax,word [bp-114]
		adc	ax,word [bp-22]
		mov	word [bp-114],ax
		mov	ax,word [bp-116]
		adc	ax,word [bp-20]
		mov	word [bp-116],ax
		push	word [bp-52]
		push	word [bp-54]
		push	word [bp-56]
		push	word [bp-58]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-18]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_qword
		mov	si,dx
		mov	dx,bx
		sub	word [bp-110],si
		sbb	word [bp-112],cx
		sbb	word [bp-114],dx
		sbb	word [bp-116],ax
		mov	ax,word [bp-110]
		mov	word [bp-82],ax
		mov	ax,word [bp-112]
		mov	word [bp-80],ax
		mov	ax,word [bp-114]
		mov	word [bp-78],ax
		mov	ax,word [bp-116]
		mov	word [bp-76],ax
		push	word [bp-36]
		push	word [bp-38]
		push	word [bp-40]
		push	word [bp-42]
		push	word [bp-76]
		push	word [bp-78]
		push	word [bp-80]
		push	word [bp-82]
		call	fpc_div_qword
		mov	word [bp-66],dx
		mov	word [bp-64],cx
		mov	word [bp-62],bx
		mov	word [bp-60],ax
		push	word [bp-60]
		push	word [bp-62]
		push	word [bp-64]
		push	word [bp-66]
		push	word [bp-36]
		push	word [bp-38]
		push	word [bp-40]
		push	word [bp-42]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_qword
		mov	si,word [bp-82]
		mov	di,word [bp-80]
		sub	si,dx
		sbb	di,cx
		mov	dx,si
		mov	cx,di
		mov	si,word [bp-78]
		mov	di,word [bp-76]
		sbb	si,bx
		sbb	di,ax
		mov	bx,si
		mov	ax,di
		mov	word [bp-98],dx
		mov	word [bp-96],cx
		mov	word [bp-94],bx
		mov	word [bp-92],ax
		jmp	..@j5341
	ALIGN 2
..@j5340:
		sub	word [bp-66],1
		sbb	word [bp-64],0
		sbb	word [bp-62],0
		sbb	word [bp-60],0
		mov	bx,word [bp-42]
		mov	ax,word [bp-40]
		mov	word [bp-104],ax
		mov	ax,word [bp-38]
		mov	word [bp-108],ax
		mov	ax,word [bp-36]
		mov	dx,word [bp-98]
		mov	cx,word [bp-96]
		mov	si,word [bp-94]
		mov	di,word [bp-92]
		add	dx,bx
		adc	cx,word [bp-104]
		adc	si,word [bp-108]
		adc	di,ax
		mov	word [bp-98],dx
		mov	word [bp-96],cx
		mov	word [bp-94],si
		mov	word [bp-92],di
		mov	ax,word [bp-98]
		mov	dx,word [bp-96]
		mov	bx,word [bp-94]
		mov	cx,word [bp-92]
		cmp	cx,word [bp-4]
		ja	..@j5343
		jb	..@j5344
		cmp	bx,word [bp-6]
		ja	..@j5343
		jb	..@j5344
		cmp	dx,word [bp-8]
		ja	..@j5343
		jb	..@j5344
		cmp	ax,word [bp-10]
		jae	..@j5343
		jmp	..@j5344
		jmp	..@j5344
..@j5343:
		jmp	..@j5342
..@j5344:
..@j5341:
		mov	bx,word [bp-66]
		mov	ax,word [bp-64]
		mov	dx,word [bp-62]
		mov	cx,word [bp-60]
		cmp	cx,word [bp-4]
		ja	..@j5340
		jb	..@j5345
		cmp	dx,word [bp-6]
		ja	..@j5340
		jb	..@j5345
		cmp	ax,word [bp-8]
		ja	..@j5340
		jb	..@j5345
		cmp	bx,word [bp-10]
		jae	..@j5340
		jmp	..@j5345
		jmp	..@j5345
..@j5345:
		push	word [bp-60]
		push	word [bp-62]
		push	word [bp-64]
		push	word [bp-66]
		push	word [bp-44]
		push	word [bp-46]
		push	word [bp-48]
		push	word [bp-50]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_qword
		mov	word [bp-124],dx
		mov	word [bp-120],cx
		mov	word [bp-134],bx
		mov	word [bp-132],ax
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-92]
		push	word [bp-94]
		push	word [bp-96]
		push	word [bp-98]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_qword
		mov	si,dx
		mov	dx,bx
		add	si,word [bp-34]
		adc	cx,word [bp-32]
		adc	dx,word [bp-30]
		adc	ax,word [bp-28]
		cmp	word [bp-132],ax
		ja	..@j5340
		jb	..@j5342
		cmp	word [bp-134],dx
		ja	..@j5340
		jb	..@j5342
		cmp	word [bp-120],cx
		ja	..@j5340
		jb	..@j5342
		cmp	word [bp-124],si
		ja	..@j5340
		jmp	..@j5342
..@j5342:
		push	word [bp-76]
		push	word [bp-78]
		push	word [bp-80]
		push	word [bp-82]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_qword
		mov	word [bp-118],dx
		mov	word [bp-136],cx
		mov	word [bp-138],bx
		mov	word [bp-140],ax
		mov	ax,word [bp-118]
		add	ax,word [bp-34]
		mov	word [bp-118],ax
		mov	ax,word [bp-136]
		adc	ax,word [bp-32]
		mov	word [bp-136],ax
		mov	ax,word [bp-138]
		adc	ax,word [bp-30]
		mov	word [bp-138],ax
		mov	ax,word [bp-140]
		adc	ax,word [bp-28]
		mov	word [bp-140],ax
		push	word [bp-60]
		push	word [bp-62]
		push	word [bp-64]
		push	word [bp-66]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-18]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_qword
		mov	si,dx
		mov	dx,bx
		sub	word [bp-118],si
		sbb	word [bp-136],cx
		sbb	word [bp-138],dx
		sbb	word [bp-140],ax
		mov	ax,word [bp-118]
		mov	dx,word [bp-136]
		mov	si,word [bp-138]
		mov	di,word [bp-140]
		mov	cx,word [bp-100]
		cmp	cx,64
		jl	..@j5372
		xor	ax,ax
		xor	dx,dx
		xor	si,si
		xor	di,di
		jmp	..@j5374
..@j5372:
		test	cx,cx
		je	..@j5374
..@j5373:
		shr	di,1
		rcr	si,1
		rcr	dx,1
		rcr	ax,1
		loop	..@j5373
..@j5374:
		mov	bx,word [bp+4]
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	word [bx+4],si
		mov	word [bx+6],di
		push	word [bp-52]
		push	word [bp-54]
		push	word [bp-56]
		push	word [bp-58]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_qword
		add	dx,word [bp-66]
		adc	cx,word [bp-64]
		adc	bx,word [bp-62]
		adc	ax,word [bp-60]
		mov	si,word [bp+6]
		mov	word [si],dx
		mov	word [si+2],cx
		mov	word [si+4],bx
		mov	word [si+6],ax
		mov	byte [bp-1],1
..@j4702:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	30
EXTERN	fpc_mul_qword
EXTERN	fpc_div_qword
EXTERN	SYSTEM_$$_BSRQWORD$QWORD$$BYTE
