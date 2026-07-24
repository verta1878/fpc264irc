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
	GLOBAL fpc_unicodestr_compare
fpc_unicodestr_compare:
	GLOBAL FPC_UNICODESTR_COMPARE
FPC_UNICODESTR_COMPARE:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+6]
		cmp	ax,word [bp+4]
		je	..@j11757
		jmp	..@j11758
..@j11757:
		mov	word [bp-2],0
		jmp	..@j11755
..@j11758:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j11763
		mov	bx,word [bx-2]
..@j11763:
		mov	word [bp-4],bx
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j11766
		mov	bx,word [bx-2]
..@j11766:
		mov	word [bp-6],bx
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jg	..@j11767
		jmp	..@j11768
..@j11767:
		mov	ax,word [bp-6]
		mov	word [bp-4],ax
..@j11768:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_COMPAREWORD$formal$formal$SMALLINT$$SMALLINT
		mov	word [bp-6],ax
		cmp	word [bp-6],0
		je	..@j11779
		jmp	..@j11780
..@j11779:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j11783
		mov	bx,word [bx-2]
..@j11783:
		mov	si,word [bp+4]
		test	si,si
		je	..@j11784
		mov	si,word [si-2]
..@j11784:
		sub	bx,si
		mov	word [bp-6],bx
..@j11780:
		mov	ax,word [bp-6]
		mov	word [bp-2],ax
..@j11755:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_COMPAREWORD$formal$formal$SMALLINT$$SMALLINT
