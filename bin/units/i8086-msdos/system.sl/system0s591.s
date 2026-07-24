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
	GLOBAL SYSTEM$_$TOBJECT_$__$$_FIELDADDRESS$SHORTSTRING$$POINTER
SYSTEM$_$TOBJECT_$__$$_FIELDADDRESS$SHORTSTRING$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	bx,word [bp+4]
		cmp	byte [bx],0
		ja	..@j14768
		jmp	..@j14769
..@j14768:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		jmp	..@j14775
	ALIGN 2
..@j14774:
		mov	bx,word [bp-4]
		mov	ax,word [bx+12]
		mov	word [bp-6],ax
		cmp	word [bp-6],0
		jne	..@j14779
		jmp	..@j14780
..@j14779:
		mov	bx,word [bp-6]
		lea	ax,[bx+4]
		mov	word [bp-8],ax
		mov	bx,word [bp-6]
		mov	ax,word [bx]
		mov	dx,0
		sub	ax,1
		sbb	dx,0
		mov	word [bp-16],ax
		mov	word [bp-14],dx
		mov	word [bp-12],0
		mov	word [bp-10],0
		mov	ax,word [bp-14]
		cmp	ax,word [bp-10]
		jl	..@j14786
		jg	..@j14788
		mov	ax,word [bp-16]
		cmp	ax,word [bp-12]
		jb	..@j14786
..@j14788:
		sub	word [bp-12],1
		sbb	word [bp-10],0
	ALIGN 2
..@j14787:
		add	word [bp-12],1
		adc	word [bp-10],0
		mov	bx,word [bp-8]
		lea	ax,[bx+4]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM_$$_SHORTCOMPARETEXT$SHORTSTRING$SHORTSTRING$$SMALLINT
		test	ax,ax
		je	..@j14789
		jmp	..@j14790
..@j14789:
		mov	bx,word [bp-8]
		mov	dx,word [bx]
		mov	ax,word [bp+6]
		add	ax,dx
		mov	word [bp-2],ax
		jmp	..@j14766
..@j14790:
		mov	bx,word [bp-8]
		lea	ax,[bx+4]
		inc	ax
		mov	bx,word [bp-8]
		mov	dl,byte [bx+4]
		mov	dh,0
		add	dx,ax
		mov	word [bp-8],dx
		mov	ax,word [bp-14]
		cmp	ax,word [bp-10]
		jg	..@j14787
		jl	..@j14799
		mov	ax,word [bp-16]
		cmp	ax,word [bp-12]
		ja	..@j14787
..@j14799:
..@j14786:
..@j14780:
		mov	bx,word [bp-4]
		mov	ax,word [bx+4]
		mov	word [bp-4],ax
..@j14775:
		cmp	word [bp-4],0
		jne	..@j14774
		jmp	..@j14776
..@j14776:
..@j14769:
		mov	word [bp-2],0
..@j14766:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_SHORTCOMPARETEXT$SHORTSTRING$SHORTSTRING$$SMALLINT
