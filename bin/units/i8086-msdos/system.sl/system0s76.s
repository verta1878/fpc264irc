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
	GLOBAL fpc_check_object
fpc_check_object:
	GLOBAL FPC_CHECK_OBJECT
FPC_CHECK_OBJECT:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		je	..@j891
		jmp	..@j894
..@j894:
		mov	bx,word [bp+4]
		cmp	word [bx],0
		je	..@j891
		jmp	..@j893
..@j893:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	dx,word [bx]
		mov	ax,word [si+2]
		add	ax,dx
		test	ax,ax
		jne	..@j891
		jmp	..@j892
..@j891:
		mov	ax,210
		push	ax
		call	SYSTEM_$$_RUNERROR$WORD
..@j892:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_RUNERROR$WORD
