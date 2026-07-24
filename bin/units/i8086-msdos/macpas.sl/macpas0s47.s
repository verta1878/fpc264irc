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
	GLOBAL MACPAS_$$_BROTR$INT64$LONGWORD$$INT64
MACPAS_$$_BROTR$INT64$LONGWORD$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,14
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,64
		mov	bx,0
		sub	cx,ax
		sbb	bx,dx
		mov	ax,word [bp+8]
		mov	word [bp-14],ax
		mov	ax,word [bp+10]
		mov	word [bp-12],ax
		mov	ax,word [bp+12]
		mov	word [bp-10],ax
		mov	dx,word [bp+14]
		cmp	cx,64
		jl	..@j267
		mov	ax,word [bp-14]
		xor	ax,ax
		mov	word [bp-14],ax
		mov	ax,word [bp-12]
		xor	ax,ax
		mov	word [bp-12],ax
		mov	ax,word [bp-10]
		xor	ax,ax
		mov	word [bp-10],ax
		xor	dx,dx
		jmp	..@j269
..@j267:
		test	cx,cx
		je	..@j269
..@j268:
		shl	word [bp-14],1
		rcl	word [bp-12],1
		rcl	word [bp-10],1
		rcl	dx,1
		loop	..@j268
..@j269:
		mov	ax,word [bp+8]
		mov	bx,word [bp+10]
		mov	si,word [bp+12]
		mov	di,word [bp+14]
		mov	cx,word [bp+4]
		cmp	cx,64
		jl	..@j270
		xor	ax,ax
		xor	bx,bx
		xor	si,si
		xor	di,di
		jmp	..@j272
..@j270:
		test	cx,cx
		je	..@j272
..@j271:
		shr	di,1
		rcr	si,1
		rcr	bx,1
		rcr	ax,1
		loop	..@j271
..@j272:
		or	word [bp-14],ax
		or	word [bp-12],bx
		or	word [bp-10],si
		or	dx,di
		mov	ax,word [bp-14]
		mov	word [bp-8],ax
		mov	ax,word [bp-12]
		mov	word [bp-6],ax
		mov	ax,word [bp-10]
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	12
