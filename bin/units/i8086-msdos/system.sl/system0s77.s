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
	GLOBAL fpc_check_object_ext
fpc_check_object_ext:
	GLOBAL FPC_CHECK_OBJECT_EXT
FPC_CHECK_OBJECT_EXT:
		push	bp
		mov	bp,sp
		cmp	word [bp+6],0
		je	..@j899
		jmp	..@j902
..@j902:
		mov	bx,word [bp+6]
		cmp	word [bx],0
		je	..@j899
		jmp	..@j901
..@j901:
		mov	bx,word [bp+6]
		mov	si,word [bp+6]
		mov	dx,word [bx]
		mov	ax,word [si+2]
		add	ax,dx
		test	ax,ax
		jne	..@j899
		jmp	..@j900
..@j899:
		mov	ax,210
		push	ax
		call	SYSTEM_$$_RUNERROR$WORD
..@j900:
		jmp	..@j906
	ALIGN 2
..@j905:
		mov	ax,word [bp+6]
		cmp	ax,word [bp+4]
		je	..@j908
		jmp	..@j909
..@j908:
		jmp	..@j897
		jmp	..@j910
..@j909:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	word [bp+6],ax
..@j910:
..@j906:
		cmp	word [bp+6],0
		jne	..@j905
		jmp	..@j907
..@j907:
		mov	ax,219
		push	ax
		call	SYSTEM_$$_RUNERROR$WORD
..@j897:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_RUNERROR$WORD
