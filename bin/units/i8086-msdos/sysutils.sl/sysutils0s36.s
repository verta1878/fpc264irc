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
	GLOBAL SYSUTILS_$$_EXCLUDETRAILINGPATHDELIMITER$RAWBYTESTRING$$RAWBYTESTRING
SYSUTILS_$$_EXCLUDETRAILINGPATHDELIMITER$RAWBYTESTRING$$RAWBYTESTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j1780
		mov	bx,word [bx-2]
..@j1780:
		mov	word [bp-2],bx
		cmp	word [bp-2],0
		jg	..@j1783
		jmp	..@j1782
..@j1783:
		mov	bx,word [bp+4]
		mov	si,word [bp-2]
		lea	bx,[bx+si-1]
		mov	al,byte [bx]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j1788
		test	al,0
		jmp	..@j1789
..@j1788:
		mov	ax,1
		shl	ax,cl
		test	word [TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS+si],ax
..@j1789:
		mov	al,0
		je	..@j1790
		inc	ax
..@j1790:
		test	al,al
		jne	..@j1781
		jmp	..@j1782
..@j1781:
		dec	word [bp-2]
..@j1782:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	ax,1
		push	ax
		push	word [bp-2]
		call	fpc_ansistr_copy
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_copy
EXTERN	TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS
