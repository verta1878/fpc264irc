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
	GLOBAL CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR
CLASSES$_$TPARSER_$__$$_NEXTTOKEN$$CHAR:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+4]
		call	CLASSES$_$TPARSER_$__$$_SKIPWHITESPACE
		mov	bx,word [bp+4]
		cmp	byte [bx+16],0
		jne	..@j3687
		jmp	..@j3688
..@j3687:
		push	word [bp+4]
		call	CLASSES$_$TPARSER_$__$$_HANDLEEOF
		jmp	..@j3691
..@j3688:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	si,word [bp+4]
		mov	si,word [si+8]
		mov	al,byte [bx+si]
		cmp	al,35
		jb	..@j3693
		sub	al,35
		je	..@j3698
		dec	al
		je	..@j3695
		sub	al,3
		je	..@j3698
		sub	al,6
		je	..@j3696
		sub	al,3
		jb	..@j3693
		sub	al,9
		jbe	..@j3697
		sub	al,8
		jb	..@j3693
		sub	al,25
		jbe	..@j3694
		sub	al,5
		je	..@j3694
		sub	al,2
		jb	..@j3693
		sub	al,25
		jbe	..@j3694
		jmp	..@j3693
..@j3694:
		push	word [bp+4]
		call	CLASSES$_$TPARSER_$__$$_HANDLEALPHANUM
		jmp	..@j3692
..@j3695:
		push	word [bp+4]
		call	CLASSES$_$TPARSER_$__$$_HANDLEHEXNUMBER
		jmp	..@j3692
..@j3696:
		push	word [bp+4]
		call	CLASSES$_$TPARSER_$__$$_HANDLEMINUS
		jmp	..@j3692
..@j3697:
		push	word [bp+4]
		call	CLASSES$_$TPARSER_$__$$_HANDLENUMBER
		jmp	..@j3692
..@j3698:
		push	word [bp+4]
		call	CLASSES$_$TPARSER_$__$$_HANDLESTRING
		jmp	..@j3692
..@j3693:
		push	word [bp+4]
		call	CLASSES$_$TPARSER_$__$$_HANDLEUNKNOWN
..@j3692:
..@j3691:
		mov	bx,word [bp+4]
		mov	al,byte [bx+15]
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TPARSER_$__$$_HANDLEUNKNOWN
EXTERN	CLASSES$_$TPARSER_$__$$_HANDLESTRING
EXTERN	CLASSES$_$TPARSER_$__$$_HANDLENUMBER
EXTERN	CLASSES$_$TPARSER_$__$$_HANDLEMINUS
EXTERN	CLASSES$_$TPARSER_$__$$_HANDLEHEXNUMBER
EXTERN	CLASSES$_$TPARSER_$__$$_HANDLEALPHANUM
EXTERN	CLASSES$_$TPARSER_$__$$_HANDLEEOF
EXTERN	CLASSES$_$TPARSER_$__$$_SKIPWHITESPACE
