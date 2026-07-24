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
	GLOBAL STRUTILS_$$_RPOS$ANSISTRING$ANSISTRING$$SMALLINT
STRUTILS_$$_RPOS$ANSISTRING$ANSISTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	word [bp-2],0
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j4302
		mov	bx,word [bx-2]
..@j4302:
		mov	word [bp-6],bx
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j4305
		mov	bx,word [bx-2]
..@j4305:
		mov	word [bp-4],bx
		cmp	word [bp-6],0
		jg	..@j4309
		jmp	..@j4307
..@j4309:
		cmp	word [bp-4],0
		jg	..@j4308
		jmp	..@j4307
..@j4308:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-4]
		jle	..@j4306
		jmp	..@j4307
..@j4306:
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		lea	ax,[bx+si-1]
		mov	word [bp-10],ax
		mov	bx,word [bp+4]
		mov	ax,word [bp-6]
		mov	si,ax
		dec	si
		lea	ax,[bx+si-1]
		mov	word [bp-12],ax
		mov	bx,word [bp+6]
		mov	si,word [bp-6]
		mov	al,byte [bx+si-1]
		mov	byte [bp-7],al
		jmp	..@j4317
	ALIGN 2
..@j4316:
		mov	bx,word [bp-10]
		mov	al,byte [bx]
		cmp	al,byte [bp-7]
		je	..@j4321
		jmp	..@j4320
..@j4321:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp-10]
		mov	ax,word [bp-6]
		sub	bx,ax
		lea	ax,[bx+1]
		push	ax
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j4328
		mov	bx,word [bx-2]
..@j4328:
		push	bx
		call	SYSTEM_$$_COMPARECHAR$formal$formal$SMALLINT$$SMALLINT
		test	ax,ax
		je	..@j4319
		jmp	..@j4320
..@j4319:
		mov	ax,word [bp-10]
		mov	dx,word [bp-6]
		sub	ax,dx
		inc	ax
		mov	dx,word [bp+4]
		sub	ax,dx
		inc	ax
		mov	word [bp-2],ax
		jmp	..@j4296
..@j4320:
		dec	word [bp-10]
..@j4317:
		mov	ax,word [bp-10]
		cmp	ax,word [bp-12]
		jae	..@j4316
		jmp	..@j4318
..@j4318:
..@j4307:
..@j4296:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_COMPARECHAR$formal$formal$SMALLINT$$SMALLINT
