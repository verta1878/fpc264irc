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
	GLOBAL fpc_unicodestr_compare_equal
fpc_unicodestr_compare_equal:
	GLOBAL FPC_UNICODESTR_COMPARE_EQUAL
FPC_UNICODESTR_COMPARE_EQUAL:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+6]
		cmp	ax,word [bp+4]
		je	..@j11789
		jmp	..@j11790
..@j11789:
		mov	word [bp-2],0
		jmp	..@j11787
..@j11790:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j11795
		mov	bx,word [bx-2]
..@j11795:
		mov	word [bp-4],bx
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j11798
		mov	bx,word [bx-2]
..@j11798:
		cmp	bx,word [bp-4]
		jne	..@j11796
		jmp	..@j11797
..@j11796:
		mov	word [bp-2],-1
		jmp	..@j11787
		jmp	..@j11801
..@j11797:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_COMPAREWORD$formal$formal$SMALLINT$$SMALLINT
		mov	word [bp-2],ax
		jmp	..@j11787
..@j11801:
..@j11787:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_COMPAREWORD$formal$formal$SMALLINT$$SMALLINT
