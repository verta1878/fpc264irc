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
	GLOBAL fpc_ansistr_unique
fpc_ansistr_unique:
	GLOBAL FPC_ANSISTR_UNIQUE
FPC_ANSISTR_UNIQUE:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		cmp	word [bx],0
		je	..@j9684
		jmp	..@j9685
..@j9684:
		jmp	..@j9680
..@j9685:
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		cmp	word [bx-4],1
		jne	..@j9686
		jmp	..@j9687
..@j9686:
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM_$$_FPC_TRUELY_ANSISTR_UNIQUE$POINTER$$POINTER
		mov	word [bp-2],ax
..@j9687:
..@j9680:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_FPC_TRUELY_ANSISTR_UNIQUE$POINTER$$POINTER
