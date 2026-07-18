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
	GLOBAL STRUTILS_$$_EXTRACTDELIMITED$SMALLINT$ANSISTRING$TSYSCHARSET$$ANSISTRING
STRUTILS_$$_EXTRACTDELIMITED$SMALLINT$ANSISTRING$TSYSCHARSET$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	word [bp-2],0
		mov	word [bp-4],1
		mov	word [bp-6],0
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j3221
		mov	bx,word [bx-2]
..@j3221:
		mov	word [bp-8],bx
		mov	ax,word [bp+10]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		jmp	..@j3229
	ALIGN 2
..@j3228:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		mov	ax,word [bp+4]
		mov	word [bp-12],ax
		mov	al,byte [bx+si-1]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j3233
		test	al,0
		jmp	..@j3234
..@j3233:
		mov	ax,1
		shl	ax,cl
		mov	bx,word [bp-12]
		test	word [bx+si],ax
..@j3234:
		jne	..@j3231
		jmp	..@j3232
..@j3231:
		inc	word [bp-2]
		jmp	..@j3235
..@j3232:
		mov	ax,word [bp+8]
		dec	ax
		cmp	ax,word [bp-2]
		je	..@j3236
		jmp	..@j3237
..@j3236:
		inc	word [bp-6]
		mov	ax,word [bp+10]
		push	ax
		push	word [bp-6]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	ax,word [bp+10]
		push	ax
		call	fpc_ansistr_unique
		mov	word [bp-10],ax
		mov	di,word [bp-6]
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		mov	al,byte [bx+si-1]
		mov	bx,word [bp-10]
		mov	byte [bx+di-1],al
..@j3237:
..@j3235:
		inc	word [bp-4]
..@j3229:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-8]
		jle	..@j3248
		jmp	..@j3230
..@j3248:
		mov	ax,word [bp-2]
		cmp	ax,word [bp+8]
		jne	..@j3228
		jmp	..@j3230
..@j3230:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_ansistr_unique
EXTERN	fpc_ansistr_setlength
