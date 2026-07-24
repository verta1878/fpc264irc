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
	GLOBAL SYSTEM_$$_WRITESTRANSI$TEXTREC
SYSTEM_$$_WRITESTRANSI$TEXTREC:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+4]
		cmp	word [bx+10],0
		je	..@j23939
		jmp	..@j23940
..@j23939:
		jmp	..@j23937
..@j23940:
		mov	bx,word [bp+4]
		lea	ax,[bx+32]
		mov	word [bp-2],ax
		mov	bx,word [bp-2]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j23945
		mov	bx,word [bx-2]
..@j23945:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-6],cx
		mov	word [bp-4],ax
		mov	ax,word [bp-2]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+10]
		cwd
		mov	cx,word [bp-6]
		mov	bx,word [bp-4]
		add	cx,ax
		adc	bx,dx
		push	cx
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	bx,word [bp+4]
		mov	ax,word [bx+14]
		push	ax
		mov	ax,word [bp-2]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		add	ax,1
		adc	dx,0
		mov	si,ax
		lea	ax,[bx+si-1]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+10]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+4]
		mov	word [bx+10],0
..@j23937:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_ansistr_unique
EXTERN	fpc_ansistr_setlength
