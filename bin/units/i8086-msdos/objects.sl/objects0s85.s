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
	GLOBAL OBJECTS$_$TCOLLECTION_$__$$_SETLIMIT$LONGINT
OBJECTS$_$TCOLLECTION_$__$$_SETLIMIT$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+8]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,word [bp+6]
		jg	..@j1978
		jl	..@j1979
		cmp	dx,word [bp+4]
		ja	..@j1978
		jmp	..@j1979
		jmp	..@j1979
..@j1978:
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		mov	word [bp+4],ax
		mov	ax,word [bx+6]
		mov	word [bp+6],ax
..@j1979:
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		cmp	ax,0
		jg	..@j1982
		jl	..@j1983
		cmp	dx,8192
		ja	..@j1982
		jmp	..@j1983
..@j1982:
		mov	word [bp+4],8192
		mov	word [bp+6],0
..@j1983:
		mov	bx,word [bp+8]
		mov	dx,word [bx+8]
		mov	ax,word [bx+10]
		cmp	ax,word [bp+6]
		jne	..@j1986
		cmp	dx,word [bp+4]
		jne	..@j1986
		jmp	..@j1987
		jmp	..@j1987
..@j1986:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jne	..@j1989
		cmp	ax,0
		jne	..@j1989
		jmp	..@j1988
..@j1988:
		mov	word [bp-2],0
		jmp	..@j1992
..@j1989:
		lea	ax,[bp-2]
		push	ax
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		shl	ax,1
		rcl	dx,1
		push	ax
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		cmp	word [bp-2],0
		jne	..@j1997
		jmp	..@j1998
..@j1997:
		mov	ax,word [bp-2]
		push	ax
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		shl	ax,1
		rcl	dx,1
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
..@j1998:
..@j1992:
		cmp	word [bp-2],0
		jne	..@j2005
		jmp	..@j2007
..@j2007:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jne	..@j2006
		cmp	ax,0
		jne	..@j2006
		jmp	..@j2005
..@j2005:
		cmp	word [bp-2],0
		jne	..@j2010
		jmp	..@j2009
..@j2010:
		mov	bx,word [bp+8]
		cmp	word [bx+2],0
		jne	..@j2008
		jmp	..@j2009
..@j2008:
		mov	bx,word [bp+8]
		mov	ax,word [bx+2]
		push	ax
		mov	ax,word [bp-2]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		mov	dx,word [bx+6]
		shl	ax,1
		rcl	dx,1
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j2009:
		mov	bx,word [bp+8]
		mov	dx,word [bx+8]
		mov	ax,word [bx+10]
		cmp	ax,0
		jne	..@j2019
		cmp	dx,0
		jne	..@j2019
		jmp	..@j2018
..@j2019:
		mov	bx,word [bp+8]
		cmp	word [bx+2],0
		jne	..@j2017
		jmp	..@j2018
..@j2017:
		mov	bx,word [bp+8]
		push	word [bx+2]
		mov	bx,word [bp+8]
		mov	ax,word [bx+8]
		mov	dx,word [bx+10]
		shl	ax,1
		rcl	dx,1
		push	ax
		call	SYSTEM_$$_FREEMEM$POINTER$WORD
..@j2018:
..@j2006:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		mov	word [bx+2],ax
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		mov	word [bx+8],ax
		mov	ax,word [bp+6]
		mov	word [bx+10],ax
..@j1987:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_FREEMEM$POINTER$WORD
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
