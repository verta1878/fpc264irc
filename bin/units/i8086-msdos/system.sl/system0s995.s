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
	GLOBAL SYSTEM_$$_DODIRSEPARATORS$PWIDECHAR$BOOLEAN
SYSTEM_$$_DODIRSEPARATORS$PWIDECHAR$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	bx,word [bp+6]
		push	word [bx]
		call	fpc_pwidechar_length
		mov	word [bp-6],ax
		mov	word [bp-8],0
		mov	ax,word [bp-6]
		cwd
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	ax,word [bp-10]
		cmp	ax,word [bp-2]
		jl	..@j20245
		jg	..@j20247
		mov	ax,word [bp-12]
		cmp	ax,word [bp-4]
		jb	..@j20245
..@j20247:
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j20246:
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		cmp	word [bx+si],255
		jb	..@j20250
		jmp	..@j20249
..@j20250:
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		mov	al,byte [bx+si]
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
		jne	..@j20248
		jmp	..@j20249
..@j20248:
		cmp	byte [bp+4],0
		je	..@j20253
		jmp	..@j20252
..@j20253:
		cmp	word [bp-8],0
		je	..@j20251
		jmp	..@j20252
..@j20251:
		lea	ax,[bp-8]
		push	ax
		mov	ax,word [bp-6]
		inc	ax
		shl	ax,1
		push	ax
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		mov	ax,word [bp-8]
		push	ax
		mov	ax,word [bp-6]
		inc	ax
		shl	ax,1
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+6]
		mov	ax,word [bp-8]
		mov	word [bx],ax
..@j20252:
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		mov	word [bx+si],92
..@j20249:
		mov	ax,word [bp-10]
		cmp	ax,word [bp-2]
		jg	..@j20246
		jl	..@j20268
		mov	ax,word [bp-12]
		cmp	ax,word [bp-4]
		ja	..@j20246
..@j20268:
..@j20245:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
EXTERN	TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS
EXTERN	fpc_pwidechar_length
