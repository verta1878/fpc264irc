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
	GLOBAL SYSTEM_$$_RANDOM$INT64$$INT64
SYSTEM_$$_RANDOM$INT64$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,16
		call	SYSTEM_$$_GENRAND_MT19937$$LONGINT
		mov	word [bp-16],ax
		mov	word [bp-14],dx
		mov	word [bp-16],ax
		mov	word [bp-14],dx
		mov	word [bp-12],0
		mov	word [bp-10],0
		call	SYSTEM_$$_GENRAND_MT19937$$LONGINT
		mov	cx,ax
		mov	ax,dx
		mov	dx,cx
		mov	si,ax
		mov	dx,cx
		mov	si,ax
		mov	cx,0
		mov	ax,0
		mov	bx,dx
		mov	dx,si
		mov	si,cx
		mov	cx,32
..@j17525:
		shl	bx,1
		rcl	dx,1
		rcl	si,1
		rcl	ax,1
		loop	..@j17525
		or	word [bp-16],bx
		or	word [bp-14],dx
		or	word [bp-12],si
		or	word [bp-10],ax
		and	word [bp-10],32767
		mov	ax,word [bp-16]
		mov	word [bp-8],ax
		mov	ax,word [bp-14]
		mov	word [bp-6],ax
		mov	ax,word [bp-12]
		mov	word [bp-4],ax
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		mov	dx,word [bp+4]
		mov	cx,word [bp+6]
		mov	ax,word [bp+8]
		mov	bx,word [bp+10]
		cmp	bx,0
		jne	..@j17527
		cmp	ax,0
		jne	..@j17527
		cmp	cx,0
		jne	..@j17527
		cmp	dx,0
		jne	..@j17527
		jmp	..@j17528
..@j17527:
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		call	fpc_mod_int64
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		jmp	..@j17535
..@j17528:
		mov	word [bp-8],0
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j17535:
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_mod_int64
EXTERN	SYSTEM_$$_GENRAND_MT19937$$LONGINT
