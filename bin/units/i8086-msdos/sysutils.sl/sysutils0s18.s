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
	GLOBAL SYSUTILS_$$_EXTRACTFILEDIR$RAWBYTESTRING$$RAWBYTESTRING
SYSUTILS_$$_EXTRACTFILEDIR$RAWBYTESTRING$$RAWBYTESTRING:
		push	bp
		mov	bp,sp
		sub	sp,68
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j348
		mov	bx,word [bx-2]
..@j348:
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
		jmp	..@j360
	ALIGN 2
..@j359:
		sub	word [bp-4],1
		sbb	word [bp-2],0
..@j360:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jg	..@j362
		jl	..@j361
		cmp	ax,0
		ja	..@j362
		jmp	..@j361
..@j362:
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
		je	..@j367
		inc	ax
..@j367:
		test	al,al
		je	..@j359
		jmp	..@j361
..@j361:
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,0
		jg	..@j371
		jl	..@j369
		cmp	dx,1
		ja	..@j371
		jmp	..@j369
..@j371:
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
		test	ax,ax
		jbe	..@j376
		test	al,0
		jmp	..@j377
..@j376:
		mov	ax,1
		shl	ax,cl
		test	word [TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS+si],ax
..@j377:
		mov	al,0
		je	..@j378
		inc	ax
..@j378:
		test	al,al
		jne	..@j370
		jmp	..@j369
..@j370:
		mov	bx,word [bp+4]
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		sub	ax,1
		sbb	dx,0
		mov	si,ax
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
		je	..@j383
		inc	ax
..@j383:
		test	al,al
		je	..@j368
		jmp	..@j369
..@j368:
		sub	word [bp-4],1
		sbb	word [bp-2],0
..@j369:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	ax,1
		push	ax
		push	word [bp-4]
		call	fpc_ansistr_copy
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_copy
EXTERN	fpc_varset_add_sets
EXTERN	TC_$SYSTEM_$$_ALLOWDRIVESEPARATORS
EXTERN	TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS
