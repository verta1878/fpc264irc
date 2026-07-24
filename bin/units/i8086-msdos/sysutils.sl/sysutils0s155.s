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
	GLOBAL SYSUTILS$_$FORMAT$crc784D66F0_READFORMAT$$CHAR_$$_READINDEX
SYSUTILS$_$FORMAT$crc784D66F0_READFORMAT$$CHAR_$$_READINDEX:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	bx,word [bx+10]
		mov	si,word [bp+4]
		mov	si,word [si+4]
		mov	si,word [si-2]
		cmp	byte [bx+si-1],58
		jne	..@j5086
		jmp	..@j5087
..@j5086:
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS$_$FORMAT$crc784D66F0_READFORMAT$$CHAR_$$_READINTEGER
		jmp	..@j5090
..@j5087:
		mov	bx,word [bp+4]
		mov	word [bx-6],0
		mov	word [bx-4],0
..@j5090:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	bx,word [bx+10]
		mov	si,word [bp+4]
		mov	si,word [si+4]
		mov	si,word [si-2]
		cmp	byte [bx+si-1],58
		je	..@j5093
		jmp	..@j5094
..@j5093:
		mov	bx,word [bp+4]
		mov	dx,word [bx-6]
		mov	ax,word [bx-4]
		cmp	ax,-1
		jne	..@j5096
		cmp	dx,-1
		jne	..@j5096
		jmp	..@j5095
..@j5095:
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		push	word [bx+10]
		call	SYSUTILS_$$_DOFORMATERROR$LONGINT$ANSISTRING
..@j5096:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	si,word [si+4]
		mov	ax,word [bx-6]
		mov	word [si-16],ax
		mov	bx,word [bp+4]
		mov	word [bx-6],-1
		mov	word [bx-4],-1
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		inc	word [bx-2]
..@j5094:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSUTILS_$$_DOFORMATERROR$LONGINT$ANSISTRING
EXTERN	SYSUTILS$_$FORMAT$crc784D66F0_READFORMAT$$CHAR_$$_READINTEGER
