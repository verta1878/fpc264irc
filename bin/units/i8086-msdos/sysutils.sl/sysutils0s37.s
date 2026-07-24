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
	GLOBAL SYSUTILS_$$_INCLUDELEADINGPATHDELIMITER$RAWBYTESTRING$$RAWBYTESTRING
SYSUTILS_$$_INCLUDELEADINGPATHDELIMITER$RAWBYTESTRING$$RAWBYTESTRING:
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
		je	..@j1807
		mov	bx,word [bx-2]
..@j1807:
		mov	word [bp-2],bx
		cmp	word [bp-2],0
		je	..@j1808
		jmp	..@j1810
..@j1810:
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
		jbe	..@j1815
		test	al,0
		jmp	..@j1816
..@j1815:
		mov	ax,1
		shl	ax,cl
		test	word [TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS+bx],ax
..@j1816:
		mov	al,0
		je	..@j1817
		inc	ax
..@j1817:
		test	al,al
		je	..@j1808
		jmp	..@j1809
..@j1808:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp-2]
		inc	ax
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		lea	ax,[bx+1]
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp+6]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	byte [bx],92
..@j1809:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_ansistr_unique
EXTERN	fpc_ansistr_setlength
EXTERN	TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS
EXTERN	fpc_ansistr_assign
