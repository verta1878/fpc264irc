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
	GLOBAL CRT_$$_CRTOPEN$TEXTREC
CRT_$$_CRTOPEN$TEXTREC:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j595
		cmp	dx,-10318
		jne	..@j595
		jmp	..@j594
..@j594:
		mov	bx,word [bp+4]
		mov	ax,word CRT_$$_CRTWRITE$TEXTREC
		mov	word [bx+18],ax
		mov	bx,word [bp+4]
		mov	ax,word CRT_$$_CRTWRITE$TEXTREC
		mov	word [bx+20],ax
		jmp	..@j600
..@j595:
		mov	bx,word [bp+4]
		mov	word [bx+2],-10319
		mov	word [bx+4],0
		mov	bx,word [bp+4]
		mov	ax,word CRT_$$_CRTREAD$TEXTREC
		mov	word [bx+18],ax
		mov	bx,word [bp+4]
		mov	ax,word CRT_$$_CRTRETURN$TEXTREC
		mov	word [bx+20],ax
..@j600:
		mov	bx,word [bp+4]
		mov	ax,word CRT_$$_CRTCLOSE$TEXTREC
		mov	word [bx+22],ax
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CRT_$$_CRTCLOSE$TEXTREC
EXTERN	CRT_$$_CRTRETURN$TEXTREC
EXTERN	CRT_$$_CRTREAD$TEXTREC
EXTERN	CRT_$$_CRTWRITE$TEXTREC
