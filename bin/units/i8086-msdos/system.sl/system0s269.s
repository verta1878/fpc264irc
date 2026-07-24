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
	GLOBAL SYSTEM_$$_BINSTR$LONGINT$BYTE$$SHORTSTRING
SYSTEM_$$_BINSTR$LONGINT$BYTE$$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+10]
		mov	al,byte [bp+4]
		mov	byte [bx],al
		mov	al,byte [bp+4]
		mov	ah,0
		mov	word [bp-2],ax
		cmp	word [bp-2],1
		jl	..@j3968
		inc	word [bp-2]
	ALIGN 2
..@j3969:
		dec	word [bp-2]
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		and	ax,1
		mov	dx,0
		add	ax,48
		adc	dx,0
		mov	bx,word [bp+10]
		mov	dl,byte [bp-2]
		mov	byte [bp-4],dl
		mov	byte [bp-3],0
		mov	si,word [bp-4]
		mov	byte [bx+si],al
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		shr	dx,1
		rcr	ax,1
		mov	word [bp+6],ax
		mov	word [bp+8],dx
		cmp	word [bp-2],1
		jg	..@j3969
..@j3968:
		mov	sp,bp
		pop	bp
		ret	8
