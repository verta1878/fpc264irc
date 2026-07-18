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
	GLOBAL SYSTEM$_$TSINGLEREC_$__$$_SPECIALTYPE$$TFLOATSPECIAL
SYSTEM$_$TSINGLEREC_$__$$_SPECIALTYPE$$TFLOATSPECIAL:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM$_$TSINGLEREC_$__$$_GETEXP$$QWORD
		test	ax,ax
		jne	..@j3614
		test	bx,bx
		jne	..@j3614
		test	cx,cx
		jne	..@j3614
		test	dx,dx
		je	..@j3610
..@j3614:
		test	ax,ax
		jne	..@j3615
		test	bx,bx
		jne	..@j3615
		test	cx,cx
		jne	..@j3615
		cmp	dx,255
		je	..@j3611
..@j3615:
		jmp	..@j3609
..@j3610:
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM$_$TSINGLEREC_$__$$_MANTISSA$$QWORD
		cmp	ax,0
		jne	..@j3617
		cmp	bx,0
		jne	..@j3617
		cmp	cx,0
		jne	..@j3617
		cmp	dx,0
		jne	..@j3617
		jmp	..@j3616
..@j3616:
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM$_$TSINGLEREC_$__$$_GETSIGN$$BOOLEAN
		test	al,al
		jne	..@j3620
		jmp	..@j3621
..@j3620:
		mov	word [bp-4],1
		mov	word [bp-2],0
		jmp	..@j3626
..@j3621:
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j3626:
		jmp	..@j3629
..@j3617:
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM$_$TSINGLEREC_$__$$_GETSIGN$$BOOLEAN
		mov	ah,0
		mov	bx,ax
		mov	cl,2
		shl	bx,cl
		mov	ax,word [TC_$SYSTEM$_$TSINGLEREC_$_SPECIALTYPE$$TFLOATSPECIAL_$$_DENORMAL+bx]
		mov	word [bp-4],ax
		mov	ax,word [TC_$SYSTEM$_$TSINGLEREC_$_SPECIALTYPE$$TFLOATSPECIAL_$$_DENORMAL+bx+2]
		mov	word [bp-2],ax
..@j3629:
		jmp	..@j3608
..@j3611:
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM$_$TSINGLEREC_$__$$_MANTISSA$$QWORD
		cmp	ax,0
		jne	..@j3635
		cmp	bx,0
		jne	..@j3635
		cmp	cx,0
		jne	..@j3635
		cmp	dx,0
		jne	..@j3635
		jmp	..@j3634
..@j3634:
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM$_$TSINGLEREC_$__$$_GETSIGN$$BOOLEAN
		test	al,al
		jne	..@j3638
		jmp	..@j3639
..@j3638:
		mov	word [bp-4],7
		mov	word [bp-2],0
		jmp	..@j3644
..@j3639:
		mov	word [bp-4],6
		mov	word [bp-2],0
..@j3644:
		jmp	..@j3647
..@j3635:
		mov	word [bp-4],8
		mov	word [bp-2],0
..@j3647:
		jmp	..@j3608
..@j3609:
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM$_$TSINGLEREC_$__$$_GETSIGN$$BOOLEAN
		test	al,al
		jne	..@j3650
		jmp	..@j3651
..@j3650:
		mov	word [bp-4],5
		mov	word [bp-2],0
		jmp	..@j3656
..@j3651:
		mov	word [bp-4],4
		mov	word [bp-2],0
..@j3656:
..@j3608:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$SYSTEM$_$TSINGLEREC_$_SPECIALTYPE$$TFLOATSPECIAL_$$_DENORMAL
EXTERN	SYSTEM$_$TSINGLEREC_$__$$_GETSIGN$$BOOLEAN
EXTERN	SYSTEM$_$TSINGLEREC_$__$$_MANTISSA$$QWORD
EXTERN	SYSTEM$_$TSINGLEREC_$__$$_GETEXP$$QWORD
