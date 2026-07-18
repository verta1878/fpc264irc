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
	GLOBAL CHARSET_$$_GETASCII$WORD$PUNICODEMAP$PCHAR$LONGINT$$LONGINT
CHARSET_$$_GETASCII$WORD$PUNICODEMAP$PCHAR$LONGINT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		cmp	word [bp+8],0
		jne	..@j914
		jmp	..@j913
..@j914:
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		cmp	ax,0
		jl	..@j912
		jg	..@j913
		cmp	dx,0
		jbe	..@j912
		jmp	..@j913
..@j912:
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		jmp	..@j910
..@j913:
		push	word [bp+12]
		mov	bx,word [bp+10]
		push	word [bx+29]
		mov	bx,word [bp+10]
		push	word [bx+33]
		push	word [bx+31]
		call	CHARSET_$$_FIND$WORD$PREVERSECHARMAPPING$LONGINT$$PREVERSECHARMAPPING
		mov	word [bp-6],ax
		cmp	word [bp-6],0
		jne	..@j927
		jmp	..@j928
..@j927:
		cmp	word [bp+8],0
		je	..@j929
		jmp	..@j930
..@j929:
		mov	bx,word [bp-6]
		cmp	byte [bx+3],0
		je	..@j931
		jmp	..@j932
..@j931:
		mov	word [bp-4],1
		mov	word [bp-2],0
		jmp	..@j935
..@j932:
		mov	word [bp-4],2
		mov	word [bp-2],0
..@j935:
		jmp	..@j938
..@j930:
		mov	bx,word [bp-6]
		cmp	byte [bx+3],0
		je	..@j939
		jmp	..@j940
..@j939:
		mov	bx,word [bp-6]
		mov	si,word [bp+8]
		mov	al,byte [bx+2]
		mov	byte [si],al
		mov	word [bp-4],1
		mov	word [bp-2],0
		jmp	..@j945
..@j940:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jl	..@j946
		jg	..@j947
		cmp	ax,2
		jb	..@j946
		jmp	..@j947
..@j946:
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		jmp	..@j950
..@j947:
		mov	bx,word [bp-6]
		mov	si,word [bp+8]
		mov	al,byte [bx+2]
		mov	byte [si],al
		mov	si,word [bp+8]
		mov	bx,word [bp-6]
		mov	al,byte [bx+3]
		mov	byte [si+1],al
		mov	word [bp-4],2
		mov	word [bp-2],0
..@j950:
..@j945:
..@j938:
		jmp	..@j957
..@j928:
		mov	bx,word [bp+8]
		mov	byte [bx],63
		mov	word [bp-4],1
		mov	word [bp-2],0
..@j957:
..@j910:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	CHARSET_$$_FIND$WORD$PREVERSECHARMAPPING$LONGINT$$PREVERSECHARMAPPING
