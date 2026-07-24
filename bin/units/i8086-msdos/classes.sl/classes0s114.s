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
	GLOBAL CLASSES$_$TSTREAMADAPTER_$__$$_COPYTO$ISTREAM$QWORD$QWORD$QWORD$$HRESULT
CLASSES$_$TSTREAMADAPTER_$__$$_COPYTO$ISTREAM$QWORD$QWORD$QWORD$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,1066
		push	word [bp+6]
		call	fpc_intf_incr_ref
		mov	ax,1
		push	ax
		lea	ax,[bp-1044]
		push	ax
		lea	ax,[bp-1038]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j2663
		mov	bx,word [bp+4]
		cmp	byte [bx+14],0
		jne	..@j2665
		jmp	..@j2666
..@j2665:
		mov	word [bp-4],258
		mov	word [bp-2],-32765
		jmp	..@j2663
..@j2666:
		mov	bx,word [bp+18]
		mov	word [bx],0
		mov	word [bx+2],0
		mov	word [bx+4],0
		mov	word [bx+6],0
		mov	bx,word [bp+16]
		mov	word [bx],0
		mov	word [bx+2],0
		mov	word [bx+4],0
		mov	word [bx+6],0
		jmp	..@j2674
	ALIGN 2
..@j2673:
		mov	cx,word [bp+8]
		mov	dx,word [bp+10]
		mov	bx,word [bp+12]
		mov	ax,word [bp+14]
		cmp	ax,0
		ja	..@j2676
		jb	..@j2677
		cmp	bx,0
		ja	..@j2676
		jb	..@j2677
		cmp	dx,0
		ja	..@j2676
		jb	..@j2677
		cmp	cx,1024
		ja	..@j2676
		jmp	..@j2677
..@j2676:
		mov	word [bp-8],1024
		mov	word [bp-6],0
		jmp	..@j2680
..@j2677:
		mov	ax,word [bp+8]
		mov	word [bp-8],ax
		mov	ax,word [bp+10]
		mov	word [bp-6],ax
..@j2680:
		mov	bx,word [bp+4]
		push	word [bx+8]
		lea	ax,[bp-1032]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		mov	si,0
		mov	bx,0
		mov	cx,word [bp+16]
		mov	word [bp-1062],cx
		mov	word [bp-1058],dx
		mov	word [bp-1052],ax
		mov	word [bp-1066],si
		mov	cx,bx
		mov	bx,word [bp-1062]
		mov	dx,word [bx]
		mov	bx,word [bp-1062]
		mov	ax,word [bx+2]
		mov	bx,word [bp-1062]
		mov	di,word [bx+4]
		mov	bx,word [bp-1062]
		mov	si,word [bx+6]
		add	dx,word [bp-1058]
		adc	ax,word [bp-1052]
		adc	di,word [bp-1066]
		adc	si,cx
		mov	bx,word [bp-1062]
		mov	word [bx],dx
		mov	bx,word [bp-1062]
		mov	word [bx+2],ax
		mov	bx,word [bp-1062]
		mov	word [bx+4],di
		mov	bx,word [bp-1062]
		mov	word [bx+6],si
		lea	ax,[bp-8]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		lea	ax,[bp-1032]
		push	ax
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		call	[bx+8]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	ax,0
		mov	bx,0
		mov	si,word [bp+18]
		mov	word [bp-1060],si
		mov	word [bp-1056],dx
		mov	word [bp-1050],cx
		mov	word [bp-1064],ax
		mov	cx,bx
		mov	bx,word [bp-1060]
		mov	dx,word [bx]
		mov	bx,word [bp-1060]
		mov	ax,word [bx+2]
		mov	bx,word [bp-1060]
		mov	di,word [bx+4]
		mov	bx,word [bp-1060]
		mov	si,word [bx+6]
		add	dx,word [bp-1056]
		adc	ax,word [bp-1050]
		adc	di,word [bp-1064]
		adc	si,cx
		mov	bx,word [bp-1060]
		mov	word [bx],dx
		mov	bx,word [bp-1060]
		mov	word [bx+2],ax
		mov	bx,word [bp-1060]
		mov	word [bx+4],di
		mov	bx,word [bp-1060]
		mov	word [bx+6],si
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		cmp	ax,0
		jne	..@j2700
		cmp	dx,0
		jne	..@j2700
		jmp	..@j2699
..@j2699:
		mov	word [bp-4],16389
		mov	word [bp-2],-32768
		jmp	..@j2663
..@j2700:
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		mov	cx,0
		mov	bx,0
		mov	word [bp-1054],dx
		mov	word [bp-1048],ax
		mov	si,cx
		mov	dx,bx
		mov	cx,word [bp+8]
		mov	ax,word [bp+10]
		mov	di,word [bp+12]
		mov	bx,word [bp+14]
		sub	cx,word [bp-1054]
		sbb	ax,word [bp-1048]
		sbb	di,si
		sbb	bx,dx
		mov	word [bp+8],cx
		mov	word [bp+10],ax
		mov	word [bp+12],di
		mov	word [bp+14],bx
..@j2674:
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		mov	bx,word [bp+12]
		mov	cx,word [bp+14]
		cmp	cx,0
		ja	..@j2673
		jb	..@j2675
		cmp	bx,0
		ja	..@j2673
		jb	..@j2675
		cmp	dx,0
		ja	..@j2673
		jb	..@j2675
		cmp	ax,0
		ja	..@j2673
		jmp	..@j2675
..@j2675:
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j2663:
		call	FPC_POPADDRSTACK
		lea	ax,[bp+6]
		push	ax
		call	fpc_intf_decr_ref
		pop	ax
		test	ax,ax
		je	..@j2664
		call	FPC_RERAISE
..@j2664:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	FPC_RERAISE
EXTERN	fpc_intf_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_intf_incr_ref
