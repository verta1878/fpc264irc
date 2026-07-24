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
	GLOBAL SYSTEM_$$_DODIRSEPARATORS$PCHAR$BOOLEAN
SYSTEM_$$_DODIRSEPARATORS$PCHAR$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	bx,word [bp+6]
		push	word [bx]
		call	fpc_pchar_length
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
		jl	..@j20211
		jg	..@j20213
		mov	ax,word [bp-12]
		cmp	ax,word [bp-4]
		jb	..@j20211
..@j20213:
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j20212:
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	si,word [bp-4]
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
		jne	..@j20214
		jmp	..@j20215
..@j20214:
		cmp	byte [bp+4],0
		je	..@j20218
		jmp	..@j20217
..@j20218:
		cmp	word [bp-8],0
		je	..@j20216
		jmp	..@j20217
..@j20216:
		lea	ax,[bp-8]
		push	ax
		mov	ax,word [bp-6]
		inc	ax
		push	ax
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		mov	ax,word [bp-8]
		push	ax
		mov	ax,word [bp-6]
		inc	ax
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+6]
		mov	ax,word [bp-8]
		mov	word [bx],ax
..@j20217:
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	si,word [bp-4]
		mov	byte [bx+si],92
..@j20215:
		mov	ax,word [bp-10]
		cmp	ax,word [bp-2]
		jg	..@j20212
		jl	..@j20233
		mov	ax,word [bp-12]
		cmp	ax,word [bp-4]
		ja	..@j20212
..@j20233:
..@j20211:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
EXTERN	TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS
EXTERN	fpc_pchar_length
