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
	GLOBAL fpc_setupwritestr_ansistr
fpc_setupwritestr_ansistr:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],-1
		je	..@j24138
		jmp	..@j24139
..@j24138:
		mov	word [bp+4],0
..@j24139:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_SETUPWRITESTRCOMMON$TEXTREC$WORD
		mov	bx,word [bp+8]
		lea	bx,[bx+24]
		mov	ax,word [bp+6]
		mov	word [bx],ax
		mov	bx,word [bp+8]
		lea	bx,[bx+32]
		mov	word [bx],0
		mov	bx,word [bp+8]
		mov	ax,word SYSTEM_$$_WRITESTRANSI$TEXTREC
		mov	word [bx+18],ax
		mov	bx,word [bp+8]
		mov	ax,word SYSTEM_$$_WRITESTRANSIFLUSH$TEXTREC
		mov	word [bx+20],ax
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_WRITESTRANSIFLUSH$TEXTREC
EXTERN	SYSTEM_$$_WRITESTRANSI$TEXTREC
EXTERN	SYSTEM_$$_SETUPWRITESTRCOMMON$TEXTREC$WORD
