BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TREADER_$__$$_READSINGLE$$SINGLE
CLASSES$_$TREADER_$__$$_READSINGLE$$SINGLE:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+4]
		push	word [bx+9]
		mov	bx,word [bp+4]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+50]
		call	ax
		cmp	ax,15
		je	..@j19393
		jmp	..@j19394
..@j19393:
		mov	bx,word [bp+4]
		push	word [bx+9]
		mov	bx,word [bp+4]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		mov	bx,word [bp+4]
		push	word [bx+9]
		mov	bx,word [bp+4]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+66]
		call	ax
		wait fstp	dword [bp-4]
		DB	09bh
		jmp	..@j19403
..@j19394:
		push	word [bp+4]
		call	CLASSES$_$TREADER_$__$$_READINTEGER$$LONGINT
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		wait fild	dword [bp-8]
		wait fstp	dword [bp-4]
		DB	09bh
..@j19403:
		wait fld	dword [bp-4]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TREADER_$__$$_READINTEGER$$LONGINT
