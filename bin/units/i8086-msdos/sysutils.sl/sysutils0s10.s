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
	GLOBAL SYSUTILS_$$_HASHNAME$PCHAR$$LONGWORD
SYSUTILS_$$_HASHNAME$PCHAR$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	word [bp-8],0
		mov	word [bp-6],0
		push	word [bp+4]
		call	fpc_pchar_length
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-20],cx
		mov	word [bp-18],ax
		mov	word [bp-16],1
		mov	word [bp-14],0
		mov	ax,word [bp-18]
		cmp	ax,word [bp-14]
		jb	..@j82
		ja	..@j84
		mov	ax,word [bp-20]
		cmp	ax,word [bp-16]
		jb	..@j82
..@j84:
		sub	word [bp-16],1
		sbb	word [bp-14],0
	ALIGN 2
..@j83:
		add	word [bp-16],1
		adc	word [bp-14],0
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		mov	cx,4
..@j87:
		shl	ax,1
		rcl	dx,1
		loop	..@j87
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	bx,word [bp+4]
		mov	si,word [bp-16]
		mov	al,byte [bx+si]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UPCASE$CHAR$$CHAR
		mov	dx,0
		mov	ah,0
		add	word [bp-8],ax
		adc	word [bp-6],dx
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		mov	ax,0
		and	dx,-4096
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		mov	dx,word [bp-12]
		mov	ax,word [bp-10]
		cmp	ax,0
		jne	..@j92
		cmp	dx,0
		jne	..@j92
		jmp	..@j93
..@j92:
		mov	ax,word [bp-12]
		mov	bx,word [bp-10]
		mov	ax,bx
		mov	bx,0
		mov	cl,8
		shr	ax,cl
		mov	cx,word [bp-8]
		mov	dx,word [bp-6]
		xor	cx,ax
		xor	dx,bx
		mov	word [bp-8],cx
		mov	word [bp-6],dx
		mov	cx,word [bp-8]
		mov	bx,word [bp-6]
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		xor	ax,cx
		xor	dx,bx
		mov	word [bp-8],ax
		mov	word [bp-6],dx
..@j93:
		mov	ax,word [bp-18]
		cmp	ax,word [bp-14]
		ja	..@j83
		jb	..@j98
		mov	ax,word [bp-20]
		cmp	ax,word [bp-16]
		ja	..@j83
..@j98:
..@j82:
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		cmp	ax,0
		jne	..@j100
		cmp	dx,0
		jne	..@j100
		jmp	..@j99
..@j99:
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		jmp	..@j103
..@j100:
		mov	ax,word [bp-8]
		mov	word [bp-4],ax
		mov	ax,word [bp-6]
		mov	word [bp-2],ax
..@j103:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_UPCASE$CHAR$$CHAR
EXTERN	fpc_pchar_length
