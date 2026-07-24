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
	GLOBAL SYSTEM_$$_UTF8CODEPOINTLENGTH$BYTE$$SMALLINT
SYSTEM_$$_UTF8CODEPOINTLENGTH$BYTE$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word [bp-2],1
		mov	al,byte [bp+4]
		not	al
		mov	byte [bp-5],al
		mov	bl,byte [bp-5]
		mov	bh,0
		mov	al,byte [TC_$SYSTEM_$$_BSR8BIT+bx]
		mov	ah,0
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		je	..@j23984
		jmp	..@j23986
..@j23986:
		cmp	word [bp-4],255
		je	..@j23984
		jmp	..@j23985
..@j23984:
		jmp	..@j23974
..@j23985:
		mov	dx,word [bp-4]
		mov	ax,7
		sub	ax,dx
		mov	word [bp-2],ax
..@j23974:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$SYSTEM_$$_BSR8BIT
