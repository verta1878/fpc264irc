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
	GLOBAL fpc_varset_load
fpc_varset_load:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+14]
		mov	word [bp-2],ax
		mov	ax,word [bp+8]
		mov	word [bp-4],ax
		cmp	word [bp+4],0
		jg	..@j2278
		jmp	..@j2279
..@j2278:
		mov	ax,word [bp-4]
		push	ax
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	ax,word [bp+4]
		add	word [bp-4],ax
		mov	ax,word [bp+4]
		sub	word [bp+6],ax
		jmp	..@j2286
..@j2279:
		cmp	word [bp+4],0
		jl	..@j2287
		jmp	..@j2288
..@j2287:
		mov	ax,word [bp+4]
		sub	word [bp-2],ax
		mov	ax,word [bp+4]
		cwd
		add	word [bp+10],ax
		adc	word [bp+12],dx
..@j2288:
..@j2286:
		mov	ax,word [bp+6]
		cwd
		cmp	dx,word [bp+12]
		jl	..@j2289
		jg	..@j2290
		cmp	ax,word [bp+10]
		jb	..@j2289
		jmp	..@j2290
		jmp	..@j2290
..@j2289:
		mov	ax,word [bp+6]
		cwd
		mov	word [bp+10],ax
		mov	word [bp+12],dx
..@j2290:
		mov	ax,word [bp-2]
		push	ax
		mov	ax,word [bp-4]
		push	ax
		push	word [bp+10]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	dx,word [bp+10]
		mov	ax,word [bp-4]
		add	ax,dx
		push	ax
		mov	ax,word [bp+6]
		cwd
		mov	bx,word [bp+10]
		mov	cx,word [bp+12]
		sub	ax,bx
		sbb	dx,cx
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
