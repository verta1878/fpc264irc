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
	GLOBAL CLASSES$_$TSTRINGLIST_$__$$_INSERTITEM$SMALLINT$ANSISTRING$TOBJECT
CLASSES$_$TSTRINGLIST_$__$$_INSERTITEM$SMALLINT$ANSISTRING$TOBJECT:
		push	bp
		mov	bp,sp
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+124]
		call	ax
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		mov	ax,word [bx+22]
		cmp	ax,word [si+24]
		je	..@j9049
		jmp	..@j9050
..@j9049:
		push	word [bp+10]
		call	CLASSES$_$TSTRINGLIST_$__$$_GROW
..@j9050:
		mov	bx,word [bp+10]
		mov	ax,word [bx+22]
		cmp	ax,word [bp+8]
		jg	..@j9053
		jmp	..@j9054
..@j9053:
		mov	bx,word [bp+10]
		mov	bx,word [bx+20]
		mov	ax,word [bp+8]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		lea	ax,[bx+si]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+20]
		mov	ax,word [bp+8]
		inc	ax
		mov	si,ax
		mov	cl,2
		shl	si,cl
		lea	ax,[bx+si]
		push	ax
		mov	bx,word [bp+10]
		mov	ax,word [bx+22]
		mov	dx,word [bp+8]
		sub	ax,dx
		mov	cl,2
		shl	ax,cl
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j9054:
		mov	bx,word [bp+10]
		mov	bx,word [bx+20]
		mov	ax,word [bp+8]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	word [bx+si],0
		mov	bx,word [bp+10]
		mov	bx,word [bx+20]
		mov	ax,word [bp+8]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		lea	ax,[bx+si]
		push	ax
		push	word [bp+6]
		call	fpc_ansistr_assign
		mov	bx,word [bp+10]
		mov	bx,word [bx+20]
		mov	ax,word [bp+8]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp+4]
		mov	word [bx+si+2],ax
		mov	bx,word [bp+10]
		inc	word [bx+22]
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+122]
		call	ax
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_ansistr_assign
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	CLASSES$_$TSTRINGLIST_$__$$_GROW
