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
	GLOBAL SYSTEM_$$_NEWUNICODESTRING$SMALLINT$$POINTER
SYSTEM_$$_NEWUNICODESTRING$SMALLINT$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,4
		lea	ax,[bp-4]
		push	ax
		mov	ax,word [bp+4]
		shl	ax,1
		add	ax,10
		push	ax
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		cmp	word [bp-4],0
		jne	..@j10857
		jmp	..@j10858
..@j10857:
		mov	bx,word [bp-4]
		mov	ax,word [bp+4]
		mov	word [bx+6],ax
		mov	bx,word [bp-4]
		mov	word [bx+4],1
		mov	bx,word [bp-4]
		mov	ax,word [U_$SYSTEM_$$_DEFAULTUNICODECODEPAGE]
		mov	word [bx],ax
		mov	bx,word [bp-4]
		mov	word [bx+2],2
		add	word [bp-4],8
		mov	bx,word [bp-4]
		mov	word [bx],0
		jmp	..@j10869
..@j10858:
		call	SYSTEM_$$_UNICODESTRINGERROR
..@j10869:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_UNICODESTRINGERROR
EXTERN	U_$SYSTEM_$$_DEFAULTUNICODECODEPAGE
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
