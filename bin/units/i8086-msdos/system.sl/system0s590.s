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
	GLOBAL SYSTEM$_$TOBJECT_$__$$_METHODNAME$NEARPOINTER$$SHORTSTRING
SYSTEM$_$TOBJECT_$__$$_METHODNAME$NEARPOINTER$$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	ax,word [bp+8]
		mov	word [bp-8],ax
		jmp	..@j14741
	ALIGN 2
..@j14740:
		mov	bx,word [bp-8]
		mov	ax,word [bx+10]
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jne	..@j14745
		jmp	..@j14746
..@j14745:
		mov	bx,word [bp-2]
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		sub	dx,1
		sbb	ax,0
		mov	word [bp-12],dx
		mov	word [bp-10],ax
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	ax,word [bp-10]
		cmp	ax,word [bp-4]
		jb	..@j14750
		ja	..@j14752
		mov	ax,word [bp-12]
		cmp	ax,word [bp-6]
		jb	..@j14750
..@j14752:
		sub	word [bp-6],1
		sbb	word [bp-4],0
	ALIGN 2
..@j14751:
		add	word [bp-6],1
		adc	word [bp-4],0
		mov	bx,word [bp-2]
		mov	ax,word [bp-6]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bx+si+6]
		cmp	ax,word [bp+4]
		je	..@j14753
		jmp	..@j14754
..@j14753:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,255
		push	ax
		mov	bx,word [bp-2]
		mov	ax,word [bp-6]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bx+si+4]
		push	ax
		call	fpc_shortstr_to_shortstr
		jmp	..@j14736
..@j14754:
		mov	ax,word [bp-10]
		cmp	ax,word [bp-4]
		ja	..@j14751
		jb	..@j14761
		mov	ax,word [bp-12]
		cmp	ax,word [bp-6]
		ja	..@j14751
..@j14761:
..@j14750:
..@j14746:
		mov	bx,word [bp-8]
		mov	ax,word [bx+4]
		mov	word [bp-8],ax
..@j14741:
		cmp	word [bp-8],0
		jne	..@j14740
		jmp	..@j14742
..@j14742:
		mov	bx,word [bp+6]
		mov	byte [bx],0
..@j14736:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_shortstr_to_shortstr
