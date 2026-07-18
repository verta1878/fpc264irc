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
	GLOBAL SYSTEM_$$_INIT_ALL_UNIT_THREADVARS
SYSTEM_$$_INIT_ALL_UNIT_THREADVARS:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	ax,word [FPC_THREADVARTABLES]
		mov	word [bp-8],ax
		mov	ax,word [FPC_THREADVARTABLES+2]
		mov	word [bp-6],ax
		mov	word [bp-4],1
		mov	word [bp-2],0
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jl	..@j20162
		jg	..@j20164
		mov	ax,word [bp-8]
		cmp	ax,word [bp-4]
		jb	..@j20162
..@j20164:
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j20163:
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	bx,word [bp-4]
		shl	bx,1
		push	word [FPC_THREADVARTABLES+bx+2]
		call	SYSTEM_$$_INIT_UNIT_THREADVARS$PLTVINITENTRY
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jg	..@j20163
		jl	..@j20167
		mov	ax,word [bp-8]
		cmp	ax,word [bp-4]
		ja	..@j20163
..@j20167:
..@j20162:
		mov	sp,bp
		pop	bp
		ret
EXTERN	SYSTEM_$$_INIT_UNIT_THREADVARS$PLTVINITENTRY
EXTERN	FPC_THREADVARTABLES
