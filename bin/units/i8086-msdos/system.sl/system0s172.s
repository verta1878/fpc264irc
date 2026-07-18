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
	GLOBAL fpc_popcnt_dword
fpc_popcnt_dword:
	GLOBAL FPC_POPCNT_DWORD
FPC_POPCNT_DWORD:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	word [bp-6],0
		dec	word [bp-6]
	ALIGN 2
..@j2257:
		inc	word [bp-6]
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	bx,ax
		and	bx,15
		mov	dx,0
		mov	dx,0
		mov	al,byte [TC_$SYSTEM_$$_POPCNTDATA+bx]
		mov	ah,0
		add	word [bp-4],ax
		adc	word [bp-2],dx
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,4
..@j2260:
		shr	dx,1
		rcr	ax,1
		loop	..@j2260
		mov	word [bp+4],ax
		mov	word [bp+6],dx
		cmp	word [bp-6],7
		jl	..@j2257
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TC_$SYSTEM_$$_POPCNTDATA
