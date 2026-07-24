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
	GLOBAL CLASSES_$$_EXTRACTSTRINGS$TSYSCHARSET$TSYSCHARSET$PCHAR$TSTRINGS$BOOLEAN$$SMALLINT
CLASSES_$$_EXTRACTSTRINGS$TSYSCHARSET$TSYSCHARSET$PCHAR$TSTRINGS$BOOLEAN$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,136
		mov	ax,word [bp+12]
		lea	di,[bp-40]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,16
		rep
		movsw
		mov	si,word [bp+10]
		lea	di,[bp-72]
		push	ss
		pop	es
		cld
		mov	cx,16
		rep
		movsw
		mov	word [bp-2],0
		mov	ax,word [bp+8]
		mov	word [bp-6],ax
		mov	byte [bp-7],0
		lea	ax,[bp-40]
		push	ax
		mov	ax,word _$CLASSES$_Ld33
		push	ax
		lea	ax,[bp-136]
		push	ax
		mov	ax,32
		push	ax
		call	fpc_varset_add_sets
		lea	ax,[bp-136]
		push	ax
		mov	ax,word _$CLASSES$_Ld34
		push	ax
		lea	ax,[bp-104]
		push	ax
		mov	ax,32
		push	ax
		call	fpc_varset_sub_sets
		lea	di,[bp-40]
		push	ss
		pop	es
		lea	si,[bp-104]
		cld
		mov	cx,16
		rep
		movsw
		push	bp
		call	CLASSES$_$EXTRACTSTRINGS$crcE0409673_$$_SKIPWHITESPACE
		mov	ax,word [bp-6]
		mov	word [bp-4],ax
		jmp	..@j14480
	ALIGN 2
..@j14479:
		mov	bx,word [bp-6]
		mov	al,byte [bx]
		cmp	al,byte [bp-7]
		je	..@j14482
		jmp	..@j14483
..@j14482:
		mov	bx,word [bp-6]
		mov	al,byte [bx+1]
		cmp	al,byte [bp-7]
		je	..@j14484
		jmp	..@j14485
..@j14484:
		inc	word [bp-6]
		jmp	..@j14486
..@j14485:
		mov	byte [bp-7],0
..@j14486:
		jmp	..@j14489
..@j14483:
		cmp	byte [bp-7],0
		je	..@j14492
		jmp	..@j14491
..@j14492:
		mov	bx,word [bp-6]
		mov	al,byte [bx]
		mov	ah,0
		cmp	ax,34
		je	..@j14493
		cmp	ax,39
		je	..@j14493
..@j14493:
		je	..@j14490
		jmp	..@j14491
..@j14490:
		mov	bx,word [bp-6]
		mov	al,byte [bx]
		mov	byte [bp-7],al
..@j14491:
..@j14489:
		cmp	byte [bp-7],0
		je	..@j14498
		jmp	..@j14497
..@j14498:
		mov	bx,word [bp-6]
		mov	al,byte [bx]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j14499
		test	al,0
		jmp	..@j14500
..@j14499:
		mov	ax,1
		shl	ax,cl
		test	word [bp+si-40],ax
..@j14500:
		jne	..@j14496
		jmp	..@j14497
..@j14496:
		push	bp
		call	CLASSES$_$EXTRACTSTRINGS$crcE0409673_$$_ADDSTRING
		inc	word [bp-6]
		push	bp
		call	CLASSES$_$EXTRACTSTRINGS$crcE0409673_$$_SKIPWHITESPACE
		mov	ax,word [bp-6]
		mov	word [bp-4],ax
		jmp	..@j14507
..@j14497:
		inc	word [bp-6]
..@j14507:
..@j14480:
		mov	bx,word [bp-6]
		cmp	byte [bx],0
		jne	..@j14479
		jmp	..@j14481
..@j14481:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-4]
		jne	..@j14508
		jmp	..@j14509
..@j14508:
		push	bp
		call	CLASSES$_$EXTRACTSTRINGS$crcE0409673_$$_ADDSTRING
..@j14509:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	CLASSES$_$EXTRACTSTRINGS$crcE0409673_$$_ADDSTRING
EXTERN	CLASSES$_$EXTRACTSTRINGS$crcE0409673_$$_SKIPWHITESPACE
EXTERN	fpc_varset_sub_sets
EXTERN	_$CLASSES$_Ld34
EXTERN	fpc_varset_add_sets
EXTERN	_$CLASSES$_Ld33
