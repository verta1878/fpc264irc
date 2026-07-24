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
	GLOBAL CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READINT$TVALUETYPE$$INT64
CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READINT$TVALUETYPE$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		test	dx,dx
		jne	..@j16321
		cmp	ax,2
		je	..@j16317
..@j16321:
		test	dx,dx
		jne	..@j16322
		cmp	ax,3
		je	..@j16318
..@j16322:
		test	dx,dx
		jne	..@j16323
		cmp	ax,4
		je	..@j16319
..@j16323:
		test	dx,dx
		jne	..@j16324
		cmp	ax,19
		je	..@j16320
..@j16324:
		jmp	..@j16316
..@j16317:
		mov	bx,word [bp+8]
		push	word [bx+10]
		call	CLASSES$_$TSTREAM_$__$$_READBYTE$$BYTE
		mov	cl,al
		mov	al,cl
		cbw
		cwd
		mov	bx,ax
		mov	si,dx
		mov	al,cl
		cbw
		cwd
		mov	bx,ax
		mov	si,dx
		mov	ax,bx
		mov	dx,si
		mov	cl,15
		sar	dx,cl
		mov	ax,dx
		mov	word [bp-8],bx
		mov	word [bp-6],si
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j16315
..@j16318:
		mov	ax,word [bp+8]
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READWORD$$WORD
		mov	cx,ax
		mov	ax,cx
		cwd
		mov	bx,ax
		mov	si,dx
		mov	ax,cx
		cwd
		mov	bx,ax
		mov	si,dx
		mov	ax,bx
		mov	dx,si
		mov	cl,15
		sar	dx,cl
		mov	ax,dx
		mov	word [bp-8],bx
		mov	word [bp-6],si
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j16315
..@j16319:
		mov	ax,word [bp+8]
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READDWORD$$LONGWORD
		mov	bx,ax
		mov	si,dx
		mov	bx,ax
		mov	si,dx
		mov	ax,bx
		mov	dx,si
		mov	cl,15
		sar	dx,cl
		mov	ax,dx
		mov	word [bp-8],bx
		mov	word [bp-6],si
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j16315
..@j16320:
		mov	ax,word [bp+8]
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READQWORD$$QWORD
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		jmp	..@j16315
..@j16316:
..@j16315:
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READQWORD$$QWORD
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READDWORD$$LONGWORD
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READWORD$$WORD
EXTERN	CLASSES$_$TSTREAM_$__$$_READBYTE$$BYTE
