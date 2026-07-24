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
	GLOBAL SYSTEM_$$_RORQWORD$QWORD$BYTE$$QWORD
SYSTEM_$$_RORQWORD$QWORD$BYTE$$QWORD:
		push	bp
		mov	bp,sp
		sub	sp,14
		mov	al,byte [bp+4]
		mov	ah,0
		and	ax,63
		mov	cx,64
		sub	cx,ax
		mov	ax,word [bp+6]
		mov	word [bp-14],ax
		mov	ax,word [bp+8]
		mov	word [bp-12],ax
		mov	ax,word [bp+10]
		mov	word [bp-10],ax
		mov	di,word [bp+12]
		cmp	cx,64
		jl	..@j2185
		mov	ax,word [bp-14]
		xor	ax,ax
		mov	word [bp-14],ax
		mov	ax,word [bp-12]
		xor	ax,ax
		mov	word [bp-12],ax
		mov	ax,word [bp-10]
		xor	ax,ax
		mov	word [bp-10],ax
		xor	di,di
		jmp	..@j2187
..@j2185:
		test	cx,cx
		je	..@j2187
..@j2186:
		shl	word [bp-14],1
		rcl	word [bp-12],1
		rcl	word [bp-10],1
		rcl	di,1
		loop	..@j2186
..@j2187:
		mov	cl,byte [bp+4]
		mov	ch,0
		and	cx,63
		mov	bx,word [bp+6]
		mov	si,word [bp+8]
		mov	ax,word [bp+10]
		mov	dx,word [bp+12]
		cmp	cx,64
		jl	..@j2188
		xor	bx,bx
		xor	si,si
		xor	ax,ax
		xor	dx,dx
		jmp	..@j2190
..@j2188:
		test	cx,cx
		je	..@j2190
..@j2189:
		shr	dx,1
		rcr	ax,1
		rcr	si,1
		rcr	bx,1
		loop	..@j2189
..@j2190:
		or	word [bp-14],bx
		or	word [bp-12],si
		or	word [bp-10],ax
		or	di,dx
		mov	ax,word [bp-14]
		mov	word [bp-8],ax
		mov	ax,word [bp-12]
		mov	word [bp-6],ax
		mov	ax,word [bp-10]
		mov	word [bp-4],ax
		mov	word [bp-2],di
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	10
