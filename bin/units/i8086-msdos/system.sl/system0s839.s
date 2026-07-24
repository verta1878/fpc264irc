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
	GLOBAL SYSTEM_$$_HALT$LONGINT
SYSTEM_$$_HALT$LONGINT:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jg	..@j17828
		jl	..@j17829
		cmp	ax,255
		ja	..@j17828
		jmp	..@j17829
..@j17828:
		mov	word [operatingsystem_result],255
		mov	word [operatingsystem_result+2],0
		jmp	..@j17832
..@j17829:
		mov	ax,word [bp+4]
		mov	word [operatingsystem_result],ax
		mov	ax,word [bp+6]
		mov	word [operatingsystem_result+2],ax
..@j17832:
		call	SYSTEM_$$_DO_EXIT
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_DO_EXIT
EXTERN	operatingsystem_result
