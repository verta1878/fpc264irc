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
	GLOBAL STRUTILS_$$_ISEMPTYSTR$ANSISTRING$TSYSCHARSET$$BOOLEAN
STRUTILS_$$_ISEMPTYSTR$ANSISTRING$TSYSCHARSET$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j2784
		mov	bx,word [bx-2]
..@j2784:
		mov	word [bp-6],bx
		mov	word [bp-4],1
		mov	byte [bp-1],1
		jmp	..@j2790
	ALIGN 2
..@j2789:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
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
		jbe	..@j2794
		test	al,0
		jmp	..@j2795
..@j2794:
		mov	ax,1
		shl	ax,cl
		mov	bx,word [bp-8]
		test	word [bx+si],ax
..@j2795:
		mov	al,0
		je	..@j2796
		inc	ax
..@j2796:
		mov	byte [bp-1],al
		inc	word [bp-4]
..@j2790:
		cmp	byte [bp-1],0
		jne	..@j2797
		jmp	..@j2791
..@j2797:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jle	..@j2789
		jmp	..@j2791
..@j2791:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
