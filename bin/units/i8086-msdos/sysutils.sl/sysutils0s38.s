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
	GLOBAL SYSUTILS_$$_EXCLUDELEADINGPATHDELIMITER$RAWBYTESTRING$$RAWBYTESTRING
SYSUTILS_$$_EXCLUDELEADINGPATHDELIMITER$RAWBYTESTRING$$RAWBYTESTRING:
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
		je	..@j1844
		mov	bx,word [bx-2]
..@j1844:
		mov	word [bp-2],bx
		cmp	word [bp-2],0
		jg	..@j1847
		jmp	..@j1846
..@j1847:
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	al,byte [bx]
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
		jbe	..@j1852
		test	al,0
		jmp	..@j1853
..@j1852:
		mov	ax,1
		shl	ax,cl
		test	word [TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS+bx],ax
..@j1853:
		mov	al,0
		je	..@j1854
		inc	ax
..@j1854:
		test	al,al
		jne	..@j1845
		jmp	..@j1846
..@j1845:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,1
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
..@j1846:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
EXTERN	TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS
EXTERN	fpc_ansistr_assign
