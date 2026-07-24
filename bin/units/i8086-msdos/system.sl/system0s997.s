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
	GLOBAL SYSTEM_$$_DODIRSEPARATORS$RAWBYTESTRING
SYSTEM_$$_DODIRSEPARATORS$RAWBYTESTRING:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	byte [bp-7],0
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j20288
		mov	bx,word [bx-2]
..@j20288:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-12],cx
		mov	word [bp-10],ax
		mov	word [bp-4],1
		mov	word [bp-2],0
		mov	ax,word [bp-10]
		cmp	ax,word [bp-2]
		jl	..@j20290
		jg	..@j20292
		mov	ax,word [bp-12]
		cmp	ax,word [bp-4]
		jb	..@j20290
..@j20292:
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j20291:
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	si,word [bp-4]
		mov	al,byte [bx+si-1]
		mov	ah,0
		mov	bx,ax
		mov	cl,4
		shr	bx,cl
		shl	bx,1
		mov	cx,ax
		and	cl,15
		mov	ax,1
		shl	ax,cl
		test	word [TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS+bx],ax
		jne	..@j20293
		jmp	..@j20294
..@j20293:
		cmp	byte [bp-7],0
		je	..@j20295
		jmp	..@j20296
..@j20295:
		mov	ax,word [bp+4]
		push	ax
		call	FPC_ANSISTR_UNIQUE
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		test	ax,ax
		jne	..@j20301
		mov	ax,word FPC_EMPTYCHAR
..@j20301:
		mov	word [bp-6],ax
		mov	byte [bp-7],1
..@j20296:
		mov	bx,word [bp-6]
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		sub	ax,1
		sbb	dx,0
		mov	si,ax
		mov	byte [bx+si],92
..@j20294:
		mov	ax,word [bp-10]
		cmp	ax,word [bp-2]
		jg	..@j20291
		jl	..@j20306
		mov	ax,word [bp-12]
		cmp	ax,word [bp-4]
		ja	..@j20291
..@j20306:
..@j20290:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_EMPTYCHAR
EXTERN	FPC_ANSISTR_UNIQUE
EXTERN	TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS
