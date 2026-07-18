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
	GLOBAL SYSTEM_$$_GENRAND_MT19937$$LONGINT
SYSTEM_$$_GENRAND_MT19937$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	ax,word [U_$SYSTEM_$$_RANDSEED]
		mov	dx,word [U_$SYSTEM_$$_RANDSEED+2]
		cmp	dx,word [TC_$SYSTEM_$$_OLDRANDSEED+2]
		jne	..@j17454
		cmp	ax,word [TC_$SYSTEM_$$_OLDRANDSEED]
		jne	..@j17454
		jmp	..@j17455
		jmp	..@j17455
..@j17454:
		mov	word [TC_$SYSTEM_$$_MTI],625
		mov	word [TC_$SYSTEM_$$_MTI+2],0
..@j17455:
		mov	ax,word [TC_$SYSTEM_$$_MTI]
		mov	dx,word [TC_$SYSTEM_$$_MTI+2]
		cmp	dx,0
		jg	..@j17458
		jl	..@j17459
		cmp	ax,624
		jae	..@j17458
		jmp	..@j17459
..@j17458:
		mov	ax,word [TC_$SYSTEM_$$_MTI]
		mov	dx,word [TC_$SYSTEM_$$_MTI+2]
		cmp	dx,0
		jne	..@j17461
		cmp	ax,625
		jne	..@j17461
		jmp	..@j17460
..@j17460:
		push	word [U_$SYSTEM_$$_RANDSEED+2]
		push	word [U_$SYSTEM_$$_RANDSEED]
		call	SYSTEM_$$_SGENRAND_MT19937$LONGINT
		mov	ax,word [U_$SYSTEM_$$_RANDSEED]
		mov	dx,word [U_$SYSTEM_$$_RANDSEED+2]
		not	ax
		not	dx
		mov	word [U_$SYSTEM_$$_RANDSEED],ax
		mov	word [U_$SYSTEM_$$_RANDSEED+2],dx
		mov	ax,word [U_$SYSTEM_$$_RANDSEED]
		mov	word [TC_$SYSTEM_$$_OLDRANDSEED],ax
		mov	ax,word [U_$SYSTEM_$$_RANDSEED+2]
		mov	word [TC_$SYSTEM_$$_OLDRANDSEED+2],ax
..@j17461:
		mov	word [bp-12],0
		mov	word [bp-10],0
		sub	word [bp-12],1
		sbb	word [bp-10],0
	ALIGN 2
..@j17470:
		add	word [bp-12],1
		adc	word [bp-10],0
		mov	bx,word [bp-12]
		mov	ax,word [bp-10]
		add	bx,1
		adc	ax,0
		mov	cl,2
		shl	bx,cl
		mov	ax,word [U_$SYSTEM_$$_MT+bx]
		mov	dx,word [U_$SYSTEM_$$_MT+bx+2]
		and	dx,32767
		mov	bx,word [bp-12]
		mov	cl,2
		shl	bx,cl
		mov	cx,word [U_$SYSTEM_$$_MT+bx]
		mov	bx,word [U_$SYSTEM_$$_MT+bx+2]
		mov	cx,0
		and	bx,-32768
		or	cx,ax
		or	bx,dx
		mov	word [bp-8],cx
		mov	word [bp-6],bx
		mov	bx,word [bp-12]
		mov	ax,word [bp-10]
		add	bx,397
		adc	ax,0
		mov	cl,2
		shl	bx,cl
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		shr	dx,1
		rcr	ax,1
		mov	cx,word [U_$SYSTEM_$$_MT+bx]
		mov	bx,word [U_$SYSTEM_$$_MT+bx+2]
		xor	ax,cx
		xor	dx,bx
		mov	bx,word [bp-8]
		mov	cx,word [bp-6]
		and	bx,1
		mov	cx,0
		mov	cl,2
		shl	bx,cl
		mov	si,word [TC_$SYSTEM$_$GENRAND_MT19937$$LONGINT_$$_MAG01+bx]
		mov	bx,word [TC_$SYSTEM$_$GENRAND_MT19937$$LONGINT_$$_MAG01+bx+2]
		xor	si,ax
		xor	bx,dx
		mov	di,word [bp-12]
		mov	cl,2
		shl	di,cl
		mov	word [U_$SYSTEM_$$_MT+di],si
		mov	word [U_$SYSTEM_$$_MT+di+2],bx
		cmp	word [bp-10],0
		jl	..@j17470
		jg	..@j17475
		cmp	word [bp-12],226
		jb	..@j17470
..@j17475:
		mov	word [bp-12],227
		mov	word [bp-10],0
		sub	word [bp-12],1
		sbb	word [bp-10],0
	ALIGN 2
..@j17478:
		add	word [bp-12],1
		adc	word [bp-10],0
		mov	bx,word [bp-12]
		mov	ax,word [bp-10]
		add	bx,1
		adc	ax,0
		mov	cl,2
		shl	bx,cl
		mov	ax,word [U_$SYSTEM_$$_MT+bx]
		mov	dx,word [U_$SYSTEM_$$_MT+bx+2]
		and	dx,32767
		mov	bx,word [bp-12]
		mov	cl,2
		shl	bx,cl
		mov	cx,word [U_$SYSTEM_$$_MT+bx]
		mov	bx,word [U_$SYSTEM_$$_MT+bx+2]
		mov	cx,0
		and	bx,-32768
		or	cx,ax
		or	bx,dx
		mov	word [bp-8],cx
		mov	word [bp-6],bx
		mov	bx,word [bp-12]
		mov	ax,word [bp-10]
		add	bx,-227
		adc	ax,-1
		mov	cl,2
		shl	bx,cl
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		shr	dx,1
		rcr	ax,1
		mov	cx,word [U_$SYSTEM_$$_MT+bx]
		mov	bx,word [U_$SYSTEM_$$_MT+bx+2]
		xor	ax,cx
		xor	dx,bx
		mov	bx,word [bp-8]
		mov	cx,word [bp-6]
		and	bx,1
		mov	cx,0
		mov	cl,2
		shl	bx,cl
		mov	si,word [TC_$SYSTEM$_$GENRAND_MT19937$$LONGINT_$$_MAG01+bx]
		mov	bx,word [TC_$SYSTEM$_$GENRAND_MT19937$$LONGINT_$$_MAG01+bx+2]
		xor	si,ax
		xor	bx,dx
		mov	di,word [bp-12]
		mov	cl,2
		shl	di,cl
		mov	word [U_$SYSTEM_$$_MT+di],si
		mov	word [U_$SYSTEM_$$_MT+di+2],bx
		cmp	word [bp-10],0
		jl	..@j17478
		jg	..@j17483
		cmp	word [bp-12],622
		jb	..@j17478
..@j17483:
		mov	ax,word [U_$SYSTEM_$$_MT+2492]
		mov	dx,word [U_$SYSTEM_$$_MT+2494]
		mov	ax,0
		and	dx,-32768
		mov	cx,word [U_$SYSTEM_$$_MT]
		mov	bx,word [U_$SYSTEM_$$_MT+2]
		and	bx,32767
		or	cx,ax
		or	bx,dx
		mov	word [bp-8],cx
		mov	word [bp-6],bx
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		shr	dx,1
		rcr	ax,1
		mov	bx,word [U_$SYSTEM_$$_MT+1584]
		mov	si,word [U_$SYSTEM_$$_MT+1586]
		xor	bx,ax
		xor	si,dx
		mov	di,word [bp-8]
		mov	ax,word [bp-6]
		and	di,1
		mov	ax,0
		mov	cl,2
		shl	di,cl
		mov	ax,word [TC_$SYSTEM$_$GENRAND_MT19937$$LONGINT_$$_MAG01+di]
		mov	dx,word [TC_$SYSTEM$_$GENRAND_MT19937$$LONGINT_$$_MAG01+di+2]
		xor	ax,bx
		xor	dx,si
		mov	word [U_$SYSTEM_$$_MT+2492],ax
		mov	word [U_$SYSTEM_$$_MT+2494],dx
		mov	word [TC_$SYSTEM_$$_MTI],0
		mov	word [TC_$SYSTEM_$$_MTI+2],0
..@j17459:
		mov	bx,word [TC_$SYSTEM_$$_MTI]
		mov	cl,2
		shl	bx,cl
		mov	ax,word [U_$SYSTEM_$$_MT+bx]
		mov	word [bp-8],ax
		mov	ax,word [U_$SYSTEM_$$_MT+bx+2]
		mov	word [bp-6],ax
		add	word [TC_$SYSTEM_$$_MTI],1
		adc	word [TC_$SYSTEM_$$_MTI+2],0
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		mov	cx,11
..@j17494:
		shr	dx,1
		rcr	ax,1
		loop	..@j17494
		mov	cx,word [bp-8]
		mov	bx,word [bp-6]
		xor	cx,ax
		xor	bx,dx
		mov	word [bp-8],cx
		mov	word [bp-6],bx
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		mov	cx,7
..@j17497:
		shl	ax,1
		rcl	dx,1
		loop	..@j17497
		and	ax,22144
		and	dx,-25300
		mov	cx,word [bp-8]
		mov	bx,word [bp-6]
		xor	cx,ax
		xor	bx,dx
		mov	word [bp-8],cx
		mov	word [bp-6],bx
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		mov	cx,15
..@j17500:
		shl	ax,1
		rcl	dx,1
		loop	..@j17500
		mov	ax,0
		and	dx,-4154
		mov	cx,word [bp-8]
		mov	bx,word [bp-6]
		xor	cx,ax
		xor	bx,dx
		mov	word [bp-8],cx
		mov	word [bp-6],bx
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		mov	ax,dx
		mov	dx,0
		mov	cl,2
		shr	ax,cl
		mov	cx,word [bp-8]
		mov	bx,word [bp-6]
		xor	cx,ax
		xor	bx,dx
		mov	word [bp-8],cx
		mov	word [bp-6],bx
		mov	ax,word [bp-8]
		mov	word [bp-4],ax
		mov	ax,word [bp-6]
		mov	word [bp-2],ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
EXTERN	TC_$SYSTEM$_$GENRAND_MT19937$$LONGINT_$$_MAG01
EXTERN	U_$SYSTEM_$$_MT
EXTERN	SYSTEM_$$_SGENRAND_MT19937$LONGINT
EXTERN	TC_$SYSTEM_$$_MTI
EXTERN	TC_$SYSTEM_$$_OLDRANDSEED
EXTERN	U_$SYSTEM_$$_RANDSEED
