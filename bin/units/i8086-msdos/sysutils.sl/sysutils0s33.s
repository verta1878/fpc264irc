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
	GLOBAL SYSUTILS_$$_INCLUDETRAILINGPATHDELIMITER$RAWBYTESTRING$$RAWBYTESTRING
SYSUTILS_$$_INCLUDETRAILINGPATHDELIMITER$RAWBYTESTRING$$RAWBYTESTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j1743
		mov	bx,word [bx-2]
..@j1743:
		mov	word [bp-2],bx
		cmp	word [bp-2],0
		je	..@j1744
		jmp	..@j1746
..@j1746:
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	si,word [bp-2]
		mov	al,byte [bx+si-1]
		mov	byte [bp-3],al
		mov	al,byte [bp-3]
		mov	ah,0
		mov	bx,ax
		mov	cl,4
		shr	bx,cl
		shl	bx,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j1751
		test	al,0
		jmp	..@j1752
..@j1751:
		mov	ax,1
		shl	ax,cl
		test	word [TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS+bx],ax
..@j1752:
		mov	al,0
		je	..@j1753
		inc	ax
..@j1753:
		test	al,al
		je	..@j1744
		jmp	..@j1745
..@j1744:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp-2]
		inc	ax
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	ax,word [bp+6]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	ax,word [bp-2]
		mov	si,ax
		inc	si
		mov	byte [bx+si-1],92
..@j1745:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_unique
EXTERN	fpc_ansistr_setlength
EXTERN	TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS
EXTERN	fpc_ansistr_assign
