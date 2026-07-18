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
	GLOBAL SYSTEM_$$_NEXTCHAR$TEXT$OPENSTRING$$BOOLEAN
SYSTEM_$$_NEXTCHAR$TEXT$OPENSTRING$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	byte [bp-1],0
		mov	bx,word [bp+8]
		mov	si,word [bp+8]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jl	..@j22782
		jmp	..@j22783
..@j22782:
		cmp	byte [TC_$SYSTEM_$$_CTRLZMARKSEOF],0
		je	..@j22784
		jmp	..@j22786
..@j22786:
		mov	bx,word [bp+8]
		mov	bx,word [bx+14]
		mov	si,word [bp+8]
		mov	si,word [si+10]
		cmp	byte [bx+si],26
		jne	..@j22784
		jmp	..@j22785
..@j22784:
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		cmp	ax,word [bp+4]
		jl	..@j22787
		jmp	..@j22788
..@j22787:
		mov	bx,word [bp+6]
		inc	byte [bx]
		mov	bx,word [bp+8]
		mov	ax,word [bx+14]
		mov	word [bp-4],ax
		mov	bx,word [bp+8]
		mov	si,word [bx+10]
		mov	ax,word [bp+6]
		mov	word [bp-8],ax
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	byte [bp-6],al
		mov	byte [bp-5],0
		mov	bx,word [bp-4]
		mov	al,byte [bx+si]
		mov	si,word [bp-6]
		mov	bx,word [bp-8]
		mov	byte [bx+si],al
..@j22788:
		mov	bx,word [bp+8]
		inc	word [bx+10]
		mov	bx,word [bp+8]
		mov	si,word [bp+8]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j22791
		jmp	..@j22792
..@j22791:
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+18]
		call	ax
..@j22792:
		mov	byte [bp-1],1
..@j22785:
..@j22783:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	TC_$SYSTEM_$$_CTRLZMARKSEOF
