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
	GLOBAL SYSTEM_$$_OCTSTR$INT64$BYTE$$SHORTSTRING
SYSTEM_$$_OCTSTR$INT64$BYTE$$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+14]
		mov	al,byte [bp+4]
		mov	byte [bx],al
		mov	al,byte [bp+4]
		mov	ah,0
		mov	word [bp-2],ax
		cmp	word [bp-2],1
		jl	..@j3993
		inc	word [bp-2]
	ALIGN 2
..@j3994:
		dec	word [bp-2]
		mov	si,word [bp+6]
		mov	ax,word [bp+8]
		and	si,7
		mov	ax,0
		mov	bx,word [bp+14]
		mov	al,byte [bp-2]
		mov	byte [bp-4],al
		mov	byte [bp-3],0
		mov	al,byte [TC_$SYSTEM_$$_HEXTBL+si]
		mov	si,word [bp-4]
		mov	byte [bx+si],al
		mov	dx,word [bp+6]
		mov	bx,word [bp+8]
		mov	si,word [bp+10]
		mov	ax,word [bp+12]
		mov	cx,3
..@j4000:
		shr	ax,1
		rcr	si,1
		rcr	bx,1
		rcr	dx,1
		loop	..@j4000
		mov	word [bp+6],dx
		mov	word [bp+8],bx
		mov	word [bp+10],si
		mov	word [bp+12],ax
		cmp	word [bp-2],1
		jg	..@j3994
..@j3993:
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	TC_$SYSTEM_$$_HEXTBL
