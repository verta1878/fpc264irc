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
	GLOBAL OBJPAS_$$_HASH$ANSISTRING$$LONGWORD
OBJPAS_$$_HASH$ANSISTRING$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,30
		push	word [bp+4]
		call	fpc_ansistr_incr_ref
		mov	ax,1
		push	ax
		lea	ax,[bp-28]
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j114
		mov	word [bp-8],0
		mov	word [bp-6],0
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j120
		mov	bx,word [bx-2]
..@j120:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,cx
		mov	word [bp-16],1
		mov	word [bp-14],0
		cmp	ax,word [bp-14]
		jb	..@j122
		ja	..@j124
		cmp	dx,word [bp-16]
		jb	..@j122
..@j124:
		sub	word [bp-16],1
		sbb	word [bp-14],0
	ALIGN 2
..@j123:
		add	word [bp-16],1
		adc	word [bp-14],0
		mov	bx,word [bp-8]
		mov	si,word [bp-6]
		mov	cx,4
..@j127:
		shl	bx,1
		rcl	si,1
		loop	..@j127
		mov	word [bp-8],bx
		mov	word [bp-6],si
		mov	bx,word [bp+4]
		mov	si,word [bp-16]
		mov	di,0
		mov	cl,byte [bx+si-1]
		mov	ch,0
		add	word [bp-8],cx
		adc	word [bp-6],di
		mov	cx,word [bp-8]
		mov	bx,word [bp-6]
		mov	cx,0
		and	bx,-4096
		mov	word [bp-12],cx
		mov	word [bp-10],bx
		mov	bx,word [bp-12]
		mov	cx,word [bp-10]
		cmp	cx,0
		jne	..@j130
		cmp	bx,0
		jne	..@j130
		jmp	..@j131
..@j130:
		mov	bx,word [bp-12]
		mov	si,word [bp-10]
		mov	bx,si
		mov	si,0
		mov	cl,8
		shr	bx,cl
		mov	cx,word [bp-8]
		mov	di,word [bp-6]
		xor	cx,bx
		xor	di,si
		mov	word [bp-8],cx
		mov	word [bp-6],di
		mov	di,word [bp-8]
		mov	cx,word [bp-6]
		mov	si,word [bp-12]
		mov	bx,word [bp-10]
		xor	si,di
		xor	bx,cx
		mov	word [bp-8],si
		mov	word [bp-6],bx
..@j131:
		cmp	ax,word [bp-14]
		ja	..@j123
		jb	..@j136
		cmp	dx,word [bp-16]
		ja	..@j123
..@j136:
..@j122:
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		cmp	ax,0
		jne	..@j138
		cmp	dx,0
		jne	..@j138
		jmp	..@j137
..@j137:
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		jmp	..@j141
..@j138:
		mov	ax,word [bp-8]
		mov	word [bp-4],ax
		mov	ax,word [bp-6]
		mov	word [bp-2],ax
..@j141:
..@j114:
		call	FPC_POPADDRSTACK
		lea	ax,[bp+4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j115
		call	FPC_RERAISE
..@j115:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_ansistr_incr_ref
