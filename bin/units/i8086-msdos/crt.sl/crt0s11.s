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
	GLOBAL CRT_$$_TEXTMODE$WORD
CRT_$$_TEXTMODE$WORD:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	ax,word [bp+4]
		mov	word [TC_$CRT_$$_LASTMODE],ax
		mov	ax,word [bp+4]
		and	ax,255
		mov	word [bp+4],ax
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	CRT_$$_SETSCREENMODE$BYTE
		mov	ax,word [TC_$CRT_$$_LASTMODE]
		and	ax,256
		test	ax,ax
		jne	..@j101
		jmp	..@j102
..@j101:
		mov	word [bp-20],4370
		mov	word [bp-18],0
		mov	ax,16
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
..@j102:
		call	CRT_$$_GETSCREENWIDTH$$WORD
		mov	word [U_$CRT_$$_SCREENWIDTH],ax
		call	CRT_$$_GETSCREENHEIGHT$$WORD
		mov	word [U_$CRT_$$_SCREENHEIGHT],ax
		mov	word [TC_$CRT_$$_WINDMIN],0
		mov	ax,word [U_$CRT_$$_SCREENHEIGHT]
		mov	dx,0
		sub	ax,1
		sbb	dx,0
		mov	cx,8
..@j119:
		shl	ax,1
		rcl	dx,1
		loop	..@j119
		mov	cx,word [U_$CRT_$$_SCREENWIDTH]
		mov	bx,0
		sub	cx,1
		sbb	bx,0
		or	cx,ax
		or	bx,dx
		mov	word [TC_$CRT_$$_WINDMAX],cx
		call	CRT_$$_DETECTSNOW
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CRT_$$_DETECTSNOW
EXTERN	TC_$CRT_$$_WINDMAX
EXTERN	TC_$CRT_$$_WINDMIN
EXTERN	U_$CRT_$$_SCREENHEIGHT
EXTERN	CRT_$$_GETSCREENHEIGHT$$WORD
EXTERN	U_$CRT_$$_SCREENWIDTH
EXTERN	CRT_$$_GETSCREENWIDTH$$WORD
EXTERN	FPC_INTR
EXTERN	CRT_$$_SETSCREENMODE$BYTE
EXTERN	TC_$CRT_$$_LASTMODE
