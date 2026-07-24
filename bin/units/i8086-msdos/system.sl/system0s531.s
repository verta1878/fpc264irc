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
	GLOBAL SYSTEM_$$_UCS4STRINGTOWIDESTRING$UCS4STRING$$WIDESTRING
SYSTEM_$$_UCS4STRINGTOWIDESTRING$UCS4STRING$$WIDESTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-4],0
		mov	di,word [bp+4]
		test	di,di
		je	..@j13624
		mov	di,word [di-2]
		inc	di
..@j13624:
		sub	di,2
		mov	word [bp-2],0
		cmp	di,word [bp-2]
		jl	..@j13626
		dec	word [bp-2]
	ALIGN 2
..@j13627:
		inc	word [bp-2]
		mov	bx,word [bp+4]
		mov	ax,word [bp-2]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	dx,word [bx+si]
		mov	ax,word [bx+si+2]
		cmp	ax,0
		ja	..@j13630
		jb	..@j13629
		cmp	dx,-1
		ja	..@j13630
		jmp	..@j13629
..@j13630:
		jmp	..@j13628
..@j13628:
		mov	al,1
		jmp	..@j13631
..@j13629:
		mov	al,0
..@j13631:
		mov	ah,0
		inc	ax
		add	word [bp-4],ax
		cmp	di,word [bp-2]
		jg	..@j13627
..@j13626:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp-4]
		call	fpc_unicodestr_setlength
		push	word [bp+4]
		mov	bx,word [bp+6]
		push	word [bx]
		call	SYSTEM_$$_UCS4DECODE$UCS4STRING$PWIDECHAR
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_UCS4DECODE$UCS4STRING$PWIDECHAR
EXTERN	fpc_unicodestr_setlength
