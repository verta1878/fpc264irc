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
	GLOBAL SYSTEM$_$TEXTENDED80REC_$__$$_SPECIALTYPE$$TFLOATSPECIAL
SYSTEM$_$TEXTENDED80REC_$__$$_SPECIALTYPE$$TFLOATSPECIAL:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM$_$TEXTENDED80REC_$__$$_GETEXP$$QWORD
		test	ax,ax
		jne	..@j3387
		test	bx,bx
		jne	..@j3387
		test	cx,cx
		jne	..@j3387
		test	dx,dx
		je	..@j3383
..@j3387:
		test	ax,ax
		jne	..@j3388
		test	bx,bx
		jne	..@j3388
		test	cx,cx
		jne	..@j3388
		cmp	dx,32767
		je	..@j3384
..@j3388:
		jmp	..@j3382
..@j3383:
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM$_$TEXTENDED80REC_$__$$_MANTISSA$$QWORD
		cmp	ax,0
		jne	..@j3390
		cmp	bx,0
		jne	..@j3390
		cmp	cx,0
		jne	..@j3390
		cmp	dx,0
		jne	..@j3390
		jmp	..@j3389
..@j3389:
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM$_$TEXTENDED80REC_$__$$_GETSIGN$$BOOLEAN
		test	al,al
		jne	..@j3393
		jmp	..@j3394
..@j3393:
		mov	word [bp-4],1
		mov	word [bp-2],0
		jmp	..@j3399
..@j3394:
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j3399:
		jmp	..@j3402
..@j3390:
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM$_$TEXTENDED80REC_$__$$_GETSIGN$$BOOLEAN
		mov	ah,0
		mov	bx,ax
		mov	cl,2
		shl	bx,cl
		mov	ax,word [TC_$SYSTEM$_$TEXTENDED80REC_$_SPECIALTYPE$$TFLOATSPECIAL_$$_DENORMAL+bx]
		mov	word [bp-4],ax
		mov	ax,word [TC_$SYSTEM$_$TEXTENDED80REC_$_SPECIALTYPE$$TFLOATSPECIAL_$$_DENORMAL+bx+2]
		mov	word [bp-2],ax
..@j3402:
		jmp	..@j3381
..@j3384:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		mov	si,word [bx+4]
		mov	bx,word [bx+6]
		mov	cx,62
..@j3413:
		shr	bx,1
		rcr	si,1
		rcr	dx,1
		rcr	ax,1
		loop	..@j3413
		and	ax,3
		mov	dx,0
		mov	si,0
		mov	bx,0
		test	bx,bx
		jb	..@j3408
		test	bx,bx
		ja	..@j3415
		test	si,si
		jb	..@j3408
		test	si,si
		ja	..@j3415
		test	dx,dx
		jb	..@j3408
		test	dx,dx
		ja	..@j3415
		test	ax,ax
		jb	..@j3408
..@j3415:
		test	bx,bx
		jb	..@j3409
		test	bx,bx
		ja	..@j3416
		test	si,si
		jb	..@j3409
		test	si,si
		ja	..@j3416
		test	dx,dx
		jb	..@j3409
		test	dx,dx
		ja	..@j3416
		cmp	ax,1
		jbe	..@j3409
..@j3416:
		test	bx,bx
		jne	..@j3417
		test	si,si
		jne	..@j3417
		test	dx,dx
		jne	..@j3417
		cmp	ax,2
		je	..@j3410
..@j3417:
		test	bx,bx
		jne	..@j3418
		test	si,si
		jne	..@j3418
		test	dx,dx
		jne	..@j3418
		cmp	ax,3
		je	..@j3411
..@j3418:
		jmp	..@j3408
..@j3409:
		mov	word [bp-4],9
		mov	word [bp-2],0
		jmp	..@j3407
..@j3410:
		mov	bx,word [bp+4]
		mov	cx,word [bx]
		mov	si,word [bx+2]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		and	ax,16383
		cmp	ax,0
		jne	..@j3422
		cmp	dx,0
		jne	..@j3422
		cmp	si,0
		jne	..@j3422
		cmp	cx,0
		jne	..@j3422
		jmp	..@j3421
..@j3421:
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM$_$TEXTENDED80REC_$__$$_GETSIGN$$BOOLEAN
		test	al,al
		jne	..@j3423
		jmp	..@j3424
..@j3423:
		mov	word [bp-4],7
		mov	word [bp-2],0
		jmp	..@j3429
..@j3424:
		mov	word [bp-4],6
		mov	word [bp-2],0
..@j3429:
		jmp	..@j3432
..@j3422:
		mov	word [bp-4],8
		mov	word [bp-2],0
..@j3432:
		jmp	..@j3407
..@j3411:
		mov	word [bp-4],8
		mov	word [bp-2],0
		jmp	..@j3407
..@j3408:
..@j3407:
		jmp	..@j3381
..@j3382:
		mov	bx,word [bp+4]
		mov	dx,word [bx]
		mov	cx,word [bx+2]
		mov	si,word [bx+4]
		mov	ax,word [bx+6]
		mov	dx,0
		mov	cx,0
		mov	si,0
		and	ax,-32768
		cmp	ax,0
		jne	..@j3438
		cmp	si,0
		jne	..@j3438
		cmp	cx,0
		jne	..@j3438
		cmp	dx,0
		jne	..@j3438
		jmp	..@j3437
..@j3437:
		mov	word [bp-4],9
		mov	word [bp-2],0
		jmp	..@j3441
..@j3438:
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM$_$TEXTENDED80REC_$__$$_GETSIGN$$BOOLEAN
		test	al,al
		jne	..@j3442
		jmp	..@j3443
..@j3442:
		mov	word [bp-4],5
		mov	word [bp-2],0
		jmp	..@j3448
..@j3443:
		mov	word [bp-4],4
		mov	word [bp-2],0
..@j3448:
..@j3441:
..@j3381:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$SYSTEM$_$TEXTENDED80REC_$_SPECIALTYPE$$TFLOATSPECIAL_$$_DENORMAL
EXTERN	SYSTEM$_$TEXTENDED80REC_$__$$_GETSIGN$$BOOLEAN
EXTERN	SYSTEM$_$TEXTENDED80REC_$__$$_MANTISSA$$QWORD
EXTERN	SYSTEM$_$TEXTENDED80REC_$__$$_GETEXP$$QWORD
