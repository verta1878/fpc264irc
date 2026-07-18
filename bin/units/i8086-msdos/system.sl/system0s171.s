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
	GLOBAL fpc_popcnt_word
fpc_popcnt_word:
	GLOBAL FPC_POPCNT_WORD
FPC_POPCNT_WORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-2],0
		mov	word [bp-4],0
		dec	word [bp-4]
	ALIGN 2
..@j2248:
		inc	word [bp-4]
		mov	ax,word [bp+4]
		mov	bx,ax
		and	bx,15
		mov	al,byte [TC_$SYSTEM_$$_POPCNTDATA+bx]
		mov	ah,0
		add	word [bp-2],ax
		mov	ax,word [bp+4]
		mov	cl,4
		shr	ax,cl
		mov	word [bp+4],ax
		cmp	word [bp-4],3
		jl	..@j2248
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$SYSTEM_$$_POPCNTDATA
