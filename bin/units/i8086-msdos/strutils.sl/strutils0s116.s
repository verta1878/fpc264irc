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
	GLOBAL STRUTILS_$$_EXTRACTSUBSTR$ANSISTRING$SMALLINT$TSYSCHARSET$$ANSISTRING
STRUTILS_$$_EXTRACTSUBSTR$ANSISTRING$SMALLINT$TSYSCHARSET$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j3255
		mov	bx,word [bx-2]
..@j3255:
		mov	word [bp-4],bx
		jmp	..@j3257
	ALIGN 2
..@j3256:
		inc	word [bp-2]
..@j3257:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		jle	..@j3259
		jmp	..@j3258
..@j3259:
		mov	bx,word [bp+8]
		mov	si,word [bp-2]
		mov	ax,word [bp+4]
		mov	word [bp-8],ax
		mov	al,byte [bx+si-1]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j3260
		test	al,0
		jmp	..@j3261
..@j3260:
		mov	ax,1
		shl	ax,cl
		mov	bx,word [bp-8]
		test	word [bx+si],ax
..@j3261:
		je	..@j3256
		jmp	..@j3258
..@j3258:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+8]
		mov	bx,word [bp+6]
		push	word [bx]
		mov	bx,word [bp+6]
		mov	dx,word [bx]
		mov	ax,word [bp-2]
		sub	ax,dx
		push	ax
		call	fpc_ansistr_copy
		jmp	..@j3271
	ALIGN 2
..@j3270:
		inc	word [bp-2]
..@j3271:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		jle	..@j3273
		jmp	..@j3272
..@j3273:
		mov	bx,word [bp+8]
		mov	si,word [bp-2]
		mov	ax,word [bp+4]
		mov	word [bp-6],ax
		mov	al,byte [bx+si-1]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j3274
		test	al,0
		jmp	..@j3275
..@j3274:
		mov	ax,1
		shl	ax,cl
		mov	bx,word [bp-6]
		test	word [bx+si],ax
..@j3275:
		jne	..@j3270
		jmp	..@j3272
..@j3272:
		mov	bx,word [bp+6]
		mov	ax,word [bp-2]
		mov	word [bx],ax
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_ansistr_copy
