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
	GLOBAL SYSTEM$_$TOBJECT_$__$$_METHODADDRESS$SHORTSTRING$$NEARPOINTER
SYSTEM$_$TOBJECT_$__$$_METHODADDRESS$SHORTSTRING$$NEARPOINTER:
		push	bp
		mov	bp,sp
		sub	sp,14
		mov	ax,word [bp+6]
		mov	word [bp-10],ax
		jmp	..@j14711
	ALIGN 2
..@j14710:
		mov	bx,word [bp-10]
		mov	ax,word [bx+10]
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		jne	..@j14715
		jmp	..@j14716
..@j14715:
		mov	bx,word [bp-4]
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		sub	dx,1
		sbb	ax,0
		mov	word [bp-14],dx
		mov	word [bp-12],ax
		mov	word [bp-8],0
		mov	word [bp-6],0
		mov	ax,word [bp-12]
		cmp	ax,word [bp-6]
		jb	..@j14720
		ja	..@j14722
		mov	ax,word [bp-14]
		cmp	ax,word [bp-8]
		jb	..@j14720
..@j14722:
		sub	word [bp-8],1
		sbb	word [bp-6],0
	ALIGN 2
..@j14721:
		add	word [bp-8],1
		adc	word [bp-6],0
		mov	bx,word [bp-4]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bx+si+4]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM_$$_SHORTCOMPARETEXT$SHORTSTRING$SHORTSTRING$$SMALLINT
		test	ax,ax
		je	..@j14723
		jmp	..@j14724
..@j14723:
		mov	bx,word [bp-4]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bx+si+6]
		mov	word [bp-2],ax
		jmp	..@j14706
..@j14724:
		mov	ax,word [bp-12]
		cmp	ax,word [bp-6]
		ja	..@j14721
		jb	..@j14731
		mov	ax,word [bp-14]
		cmp	ax,word [bp-8]
		ja	..@j14721
..@j14731:
..@j14720:
..@j14716:
		mov	bx,word [bp-10]
		mov	ax,word [bx+4]
		mov	word [bp-10],ax
..@j14711:
		cmp	word [bp-10],0
		jne	..@j14710
		jmp	..@j14712
..@j14712:
		mov	word [bp-2],0
..@j14706:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_SHORTCOMPARETEXT$SHORTSTRING$SHORTSTRING$$SMALLINT
