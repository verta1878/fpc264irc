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
	GLOBAL SYSTEM$_$TDOUBLEREC_$__$$_SPECIALTYPE$$TFLOATSPECIAL
SYSTEM$_$TDOUBLEREC_$__$$_SPECIALTYPE$$TFLOATSPECIAL:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM$_$TDOUBLEREC_$__$$_GETEXP$$QWORD
		test	ax,ax
		jne	..@j3513
		test	bx,bx
		jne	..@j3513
		test	cx,cx
		jne	..@j3513
		test	dx,dx
		je	..@j3509
..@j3513:
		test	ax,ax
		jne	..@j3514
		test	bx,bx
		jne	..@j3514
		test	cx,cx
		jne	..@j3514
		cmp	dx,2047
		je	..@j3510
..@j3514:
		jmp	..@j3508
..@j3509:
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM$_$TDOUBLEREC_$__$$_MANTISSA$$QWORD
		cmp	ax,0
		jne	..@j3516
		cmp	bx,0
		jne	..@j3516
		cmp	cx,0
		jne	..@j3516
		cmp	dx,0
		jne	..@j3516
		jmp	..@j3515
..@j3515:
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM$_$TDOUBLEREC_$__$$_GETSIGN$$BOOLEAN
		test	al,al
		jne	..@j3519
		jmp	..@j3520
..@j3519:
		mov	word [bp-4],1
		mov	word [bp-2],0
		jmp	..@j3525
..@j3520:
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j3525:
		jmp	..@j3528
..@j3516:
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM$_$TDOUBLEREC_$__$$_GETSIGN$$BOOLEAN
		mov	ah,0
		mov	bx,ax
		mov	cl,2
		shl	bx,cl
		mov	ax,word [TC_$SYSTEM$_$TDOUBLEREC_$_SPECIALTYPE$$TFLOATSPECIAL_$$_DENORMAL+bx]
		mov	word [bp-4],ax
		mov	ax,word [TC_$SYSTEM$_$TDOUBLEREC_$_SPECIALTYPE$$TFLOATSPECIAL_$$_DENORMAL+bx+2]
		mov	word [bp-2],ax
..@j3528:
		jmp	..@j3507
..@j3510:
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM$_$TDOUBLEREC_$__$$_MANTISSA$$QWORD
		cmp	ax,0
		jne	..@j3534
		cmp	bx,0
		jne	..@j3534
		cmp	cx,0
		jne	..@j3534
		cmp	dx,0
		jne	..@j3534
		jmp	..@j3533
..@j3533:
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM$_$TDOUBLEREC_$__$$_GETSIGN$$BOOLEAN
		test	al,al
		jne	..@j3537
		jmp	..@j3538
..@j3537:
		mov	word [bp-4],7
		mov	word [bp-2],0
		jmp	..@j3543
..@j3538:
		mov	word [bp-4],6
		mov	word [bp-2],0
..@j3543:
		jmp	..@j3546
..@j3534:
		mov	word [bp-4],8
		mov	word [bp-2],0
..@j3546:
		jmp	..@j3507
..@j3508:
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM$_$TDOUBLEREC_$__$$_GETSIGN$$BOOLEAN
		test	al,al
		jne	..@j3549
		jmp	..@j3550
..@j3549:
		mov	word [bp-4],5
		mov	word [bp-2],0
		jmp	..@j3555
..@j3550:
		mov	word [bp-4],4
		mov	word [bp-2],0
..@j3555:
..@j3507:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$SYSTEM$_$TDOUBLEREC_$_SPECIALTYPE$$TFLOATSPECIAL_$$_DENORMAL
EXTERN	SYSTEM$_$TDOUBLEREC_$__$$_GETSIGN$$BOOLEAN
EXTERN	SYSTEM$_$TDOUBLEREC_$__$$_MANTISSA$$QWORD
EXTERN	SYSTEM$_$TDOUBLEREC_$__$$_GETEXP$$QWORD
