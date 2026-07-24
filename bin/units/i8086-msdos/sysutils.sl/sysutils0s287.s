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
	GLOBAL SYSUTILS_$$_INCAMONTH$WORD$WORD$WORD$SMALLINT
SYSUTILS_$$_INCAMONTH$WORD$WORD$WORD$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		cmp	word [bp+4],0
		jge	..@j9902
		jmp	..@j9903
..@j9902:
		mov	word [bp-4],1
		jmp	..@j9906
..@j9903:
		mov	word [bp-4],-1
..@j9906:
		mov	cx,word [bp+4]
		mov	ax,10923
		imul	cx
		mov	ax,cx
		sar	dx,1
		mov	cl,15
		shr	ax,cl
		add	dx,ax
		mov	bx,word [bp+10]
		add	word [bx],dx
		mov	ax,word [bp+4]
		cwd
		mov	cx,12
		idiv	cx
		mov	ax,dx
		cwd
		mov	cx,ax
		mov	bx,dx
		mov	si,word [bp+8]
		mov	ax,word [si]
		mov	dx,0
		add	ax,cx
		adc	dx,bx
		sub	ax,1
		sbb	dx,0
		mov	word [bp-2],ax
		cmp	word [bp-2],11
		jg	..@j9911
		jmp	..@j9913
..@j9913:
		cmp	word [bp-2],0
		jl	..@j9911
		jmp	..@j9912
..@j9911:
		mov	ax,12
		mul	word [bp-4]
		sub	word [bp-2],ax
		mov	bx,word [bp+10]
		mov	ax,word [bp-4]
		add	word [bx],ax
..@j9912:
		mov	ax,word [bp-2]
		inc	ax
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	ax,word [bp+6]
		mov	word [bp-6],ax
		mov	bx,word [bp+10]
		push	word [bx]
		call	SYSUTILS_$$_ISLEAPYEAR$WORD$$BOOLEAN
		mov	ah,0
		mov	bx,ax
		mov	ax,24
		mul	bx
		mov	bx,ax
		mov	si,word [bp+8]
		mov	ax,word [si]
		mov	si,ax
		shl	si,1
		mov	di,word [bp-6]
		mov	ax,word [di]
		cmp	ax,word [TC_$SYSUTILS_$$_MONTHDAYS+bx+si-2]
		ja	..@j9916
		jmp	..@j9917
..@j9916:
		mov	bx,word [bp+10]
		push	word [bx]
		call	SYSUTILS_$$_ISLEAPYEAR$WORD$$BOOLEAN
		mov	ah,0
		mov	bx,ax
		mov	ax,24
		mul	bx
		mov	bx,ax
		mov	si,word [bp+8]
		mov	ax,word [si]
		mov	si,ax
		shl	si,1
		mov	di,word [bp+6]
		mov	ax,word [TC_$SYSUTILS_$$_MONTHDAYS+bx+si-2]
		mov	word [di],ax
..@j9917:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	TC_$SYSUTILS_$$_MONTHDAYS
EXTERN	SYSUTILS_$$_ISLEAPYEAR$WORD$$BOOLEAN
