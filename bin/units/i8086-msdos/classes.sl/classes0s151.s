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
	GLOBAL CLASSES$_$TPARSER_$__$$_DESTROY
CLASSES$_$TPARSER_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jg	..@j3508
		jmp	..@j3509
..@j3508:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j3509:
		mov	bx,word [bp+6]
		push	word [bx+2]
		push	word [bp+6]
		call	CLASSES$_$TPARSER_$__$$_SOURCEPOS$$LONGINT
		mov	bx,ax
		mov	si,dx
		mov	bx,ax
		mov	si,dx
		mov	ax,bx
		mov	dx,si
		mov	cl,15
		sar	dx,cl
		mov	ax,dx
		push	dx
		push	ax
		push	si
		push	bx
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+54]
		call	ax
		mov	bx,word [bp+6]
		push	word [bx+4]
		call	SYSTEM_$$_FREEMEM$POINTER$$WORD
		cmp	word [bp+6],0
		jne	..@j3522
		jmp	..@j3521
..@j3522:
		cmp	word [bp+4],0
		jne	..@j3520
		jmp	..@j3521
..@j3520:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j3521:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_FREEMEM$POINTER$$WORD
EXTERN	CLASSES$_$TPARSER_$__$$_SOURCEPOS$$LONGINT
