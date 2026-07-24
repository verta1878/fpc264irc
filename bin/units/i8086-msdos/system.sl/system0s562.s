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
	GLOBAL fpc_do_is
fpc_do_is:
	GLOBAL FPC_DO_IS
FPC_DO_IS:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+4],0
		jne	..@j14221
		jmp	..@j14219
..@j14221:
		cmp	word [bp+6],0
		jne	..@j14220
		jmp	..@j14219
..@j14220:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		push	ax
		push	word [bp+6]
		call	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
		test	al,al
		jne	..@j14218
		jmp	..@j14219
..@j14218:
		mov	byte [bp-1],1
		jmp	..@j14226
..@j14219:
		mov	byte [bp-1],0
..@j14226:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
