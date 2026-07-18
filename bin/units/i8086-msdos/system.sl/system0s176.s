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
	GLOBAL fpc_varset_set
fpc_varset_set:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+10]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+8]
		mov	dx,word [bp+6]
		mov	si,dx
		mov	cl,3
		shr	si,cl
		and	dx,7
		mov	al,byte [bx+si]
		mov	ah,0
		mov	di,1
		mov	cx,dx
		shl	di,cl
		or	ax,di
		mov	byte [bx+si],al
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
