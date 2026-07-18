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
	GLOBAL SYSUTILS_$$_EXTRACTFILENAME$RAWBYTESTRING$$RAWBYTESTRING
SYSUTILS_$$_EXTRACTFILENAME$RAWBYTESTRING$$RAWBYTESTRING:
		push	bp
		mov	bp,sp
		sub	sp,68
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j478
		mov	bx,word [bx-2]
..@j478:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		mov	ax,word TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS
		push	ax
		mov	ax,word TC_$SYSTEM_$$_ALLOWDRIVESEPARATORS
		push	ax
		lea	ax,[bp-68]
		push	ax
		mov	ax,32
		push	ax
		call	fpc_varset_add_sets
		lea	di,[bp-36]
		push	ss
		pop	es
		lea	si,[bp-68]
		cld
		mov	cx,16
		rep
		movsw
		jmp	..@j490
	ALIGN 2
..@j489:
		sub	word [bp-4],1
		sbb	word [bp-2],0
..@j490:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jg	..@j492
		jl	..@j491
		cmp	ax,0
		ja	..@j492
		jmp	..@j491
..@j492:
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		lea	bx,[bx+si-1]
		mov	al,byte [bx]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		mov	ax,1
		shl	ax,cl
		test	word [bp+si-36],ax
		mov	al,0
		je	..@j497
		inc	ax
..@j497:
		test	al,al
		je	..@j489
		jmp	..@j491
..@j491:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		add	ax,1
		adc	dx,0
		push	ax
		mov	ax,32767
		push	ax
		call	fpc_ansistr_copy
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_copy
EXTERN	fpc_varset_add_sets
EXTERN	TC_$SYSTEM_$$_ALLOWDRIVESEPARATORS
EXTERN	TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS
