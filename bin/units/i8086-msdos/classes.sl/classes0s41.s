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
	GLOBAL CLASSES$_$TSTREAM_$__$$_DISCARDLARGE$INT64$LONGINT
CLASSES$_$TSTREAM_$__$$_DISCARDLARGE$INT64$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	word [bp-2],0
		mov	ax,1
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j841
		mov	cx,word [bp+8]
		mov	bx,word [bp+10]
		mov	dx,word [bp+12]
		mov	ax,word [bp+14]
		cmp	ax,0
		jne	..@j844
		cmp	dx,0
		jne	..@j844
		cmp	bx,0
		jne	..@j844
		cmp	cx,0
		jne	..@j844
		jmp	..@j843
..@j843:
		jmp	..@j841
..@j844:
		mov	dx,word [bp+4]
		mov	si,word [bp+6]
		mov	ax,dx
		mov	bx,si
		mov	cl,15
		sar	bx,cl
		mov	ax,bx
		cmp	bx,word [bp+14]
		jl	..@j845
		jg	..@j846
		cmp	ax,word [bp+12]
		jb	..@j845
		ja	..@j846
		cmp	si,word [bp+10]
		jb	..@j845
		ja	..@j846
		cmp	dx,word [bp+8]
		jb	..@j845
		jmp	..@j846
		jmp	..@j846
..@j845:
		mov	ax,word [bp+4]
		mov	word [bp-18],ax
		lea	ax,[bp-2]
		push	ax
		mov	ax,word RTTI_$CLASSES_$$_DEF1479
		push	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-18]
		push	ax
		call	fpc_dynarray_setlength
		jmp	..@j857
..@j846:
		mov	ax,word [bp+8]
		mov	word [bp-18],ax
		lea	ax,[bp-2]
		push	ax
		mov	ax,word RTTI_$CLASSES_$$_DEF1479
		push	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-18]
		push	ax
		call	fpc_dynarray_setlength
..@j857:
		jmp	..@j869
	ALIGN 2
..@j868:
		push	word [bp+16]
		mov	ax,word [bp-2]
		push	ax
		mov	bx,word [bp-2]
		test	bx,bx
		je	..@j877
		mov	bx,word [bx-2]
		inc	bx
..@j877:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		call	CLASSES$_$TSTREAM_$__$$_READBUFFER$formal$LONGINT
		mov	di,word [bp-2]
		test	di,di
		je	..@j878
		mov	di,word [di-2]
		inc	di
..@j878:
		mov	ax,di
		cwd
		mov	bx,ax
		mov	si,dx
		mov	ax,di
		cwd
		mov	bx,ax
		mov	si,dx
		mov	ax,bx
		mov	dx,si
		mov	cl,15
		sar	dx,cl
		mov	ax,dx
		mov	word [bp-22],bx
		mov	word [bp-20],si
		mov	si,ax
		mov	cx,dx
		mov	ax,word [bp+8]
		mov	bx,word [bp+10]
		mov	dx,word [bp+12]
		mov	di,word [bp+14]
		sub	ax,word [bp-22]
		sbb	bx,word [bp-20]
		sbb	dx,si
		sbb	di,cx
		mov	word [bp+8],ax
		mov	word [bp+10],bx
		mov	word [bp+12],dx
		mov	word [bp+14],di
..@j869:
		mov	di,word [bp-2]
		test	di,di
		je	..@j879
		mov	di,word [di-2]
		inc	di
..@j879:
		mov	ax,di
		cwd
		mov	si,ax
		mov	bx,dx
		mov	ax,di
		cwd
		mov	si,ax
		mov	bx,dx
		mov	dx,si
		mov	ax,bx
		mov	cl,15
		sar	ax,cl
		mov	dx,ax
		cmp	ax,word [bp+14]
		jl	..@j868
		jg	..@j870
		cmp	dx,word [bp+12]
		jb	..@j868
		ja	..@j870
		cmp	bx,word [bp+10]
		jb	..@j868
		ja	..@j870
		cmp	si,word [bp+8]
		jbe	..@j868
		jmp	..@j870
		jmp	..@j870
..@j870:
		mov	cx,word [bp+8]
		mov	ax,word [bp+10]
		mov	bx,word [bp+12]
		mov	dx,word [bp+14]
		cmp	dx,0
		jg	..@j880
		jl	..@j881
		cmp	bx,0
		ja	..@j880
		jb	..@j881
		cmp	ax,0
		ja	..@j880
		jb	..@j881
		cmp	cx,0
		ja	..@j880
		jmp	..@j881
..@j880:
		push	word [bp+16]
		mov	ax,word [bp-2]
		push	ax
		push	word [bp+10]
		push	word [bp+8]
		call	CLASSES$_$TSTREAM_$__$$_READBUFFER$formal$LONGINT
..@j881:
..@j841:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-2]
		push	ax
		mov	ax,word RTTI_$CLASSES_$$_DEF1479
		push	ax
		call	fpc_finalize
		pop	ax
		test	ax,ax
		je	..@j842
		call	FPC_RERAISE
..@j842:
		mov	sp,bp
		pop	bp
		ret	14
EXTERN	FPC_RERAISE
EXTERN	fpc_finalize
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TSTREAM_$__$$_READBUFFER$formal$LONGINT
EXTERN	fpc_dynarray_setlength
EXTERN	RTTI_$CLASSES_$$_DEF1479
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
