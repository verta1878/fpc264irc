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
	GLOBAL SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN
SYSUTILS$_$FORMAT$crc784D66F0_$$_CHECKARG$SMALLINT$BOOLEAN$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	byte [bp-1],0
		mov	bx,word [bp+8]
		cmp	word [bx-16],-1
		je	..@j5017
		jmp	..@j5018
..@j5017:
		mov	si,word [bp+8]
		mov	bx,word [bp+8]
		mov	ax,word [bx-6]
		mov	word [si-8],ax
		jmp	..@j5021
..@j5018:
		mov	si,word [bp+8]
		mov	bx,word [bp+8]
		mov	ax,word [bx-16]
		mov	word [si-8],ax
..@j5021:
		mov	bx,word [bp+8]
		mov	ax,word [bx-8]
		inc	ax
		mov	bx,word [bp+8]
		mov	word [bx-6],ax
		mov	bx,word [bp+8]
		mov	si,word [bp+8]
		mov	ax,word [bx-8]
		cmp	ax,word [si+6]
		jg	..@j5026
		jmp	..@j5028
..@j5028:
		mov	bx,word [bp+8]
		mov	bx,word [bx+8]
		mov	si,word [bp+8]
		mov	ax,word [si-8]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	ax,word [bx+si]
		cmp	ax,word [bp+6]
		jne	..@j5026
		jmp	..@j5027
..@j5026:
		cmp	byte [bp+4],0
		jne	..@j5029
		jmp	..@j5030
..@j5029:
		mov	ax,0
		push	ax
		mov	ax,3
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+10]
		call	SYSUTILS_$$_DOFORMATERROR$LONGINT$ANSISTRING
..@j5030:
		mov	bx,word [bp+8]
		dec	word [bx-6]
		jmp	..@j4102
..@j5027:
		mov	byte [bp-1],1
..@j4102:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSUTILS_$$_DOFORMATERROR$LONGINT$ANSISTRING
