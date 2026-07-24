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
	GLOBAL SYSTEM_$$_SETUPWRITESTRCOMMON$TEXTREC$WORD
SYSTEM_$$_SETUPWRITESTRCOMMON$TEXTREC$WORD:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word _$SYSTEM$_Ld2
		push	ax
		call	SYSTEM_$$_ASSIGN$TEXT$SHORTSTRING
		mov	bx,word [bp+6]
		mov	word [bx+2],-10318
		mov	word [bx+4],0
		mov	bx,word [bp+6]
		mov	word [bx+16],0
		mov	bx,word [bp+6]
		mov	word [bx+22],0
		mov	dx,word [bp+4]
		mov	ax,word [bp+4]
		sub	ax,1
		jbe	..@j24109
		jmp	..@j24108
..@j24109:
		mov	dx,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j24107
..@j24108:
..@j24107:
		mov	bx,word [bp+6]
		mov	word [bx+828],dx
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
EXTERN	SYSTEM_$$_ASSIGN$TEXT$SHORTSTRING
EXTERN	_$SYSTEM$_Ld2
