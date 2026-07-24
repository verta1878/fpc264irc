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
	GLOBAL fpc_unicodestr_decr_ref
fpc_unicodestr_decr_ref:
	GLOBAL FPC_UNICODESTR_DECR_REF
FPC_UNICODESTR_DECR_REF:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		cmp	word [bx],0
		je	..@j10874
		jmp	..@j10875
..@j10874:
		jmp	..@j10872
..@j10875:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		sub	ax,8
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		mov	word [bx],0
		mov	bx,word [bp-2]
		cmp	word [bx+4],0
		jl	..@j10880
		jmp	..@j10881
..@j10880:
		jmp	..@j10872
..@j10881:
		mov	bx,word [bp-2]
		lea	ax,[bx+4]
		push	ax
		call	SYSTEM_$$_DECLOCKED$SMALLINT$$BOOLEAN
		test	al,al
		jne	..@j10882
		jmp	..@j10883
..@j10882:
		push	word [bp-2]
		call	SYSTEM_$$_FREEMEM$POINTER$$WORD
..@j10883:
..@j10872:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_FREEMEM$POINTER$$WORD
EXTERN	SYSTEM_$$_DECLOCKED$SMALLINT$$BOOLEAN
