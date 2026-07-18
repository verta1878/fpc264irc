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
	GLOBAL SYSTEM_$$_INT_STR$LONGINT$OPENSTRING
SYSTEM_$$_INT_STR$LONGINT$OPENSTRING:
		push	bp
		mov	bp,sp
		sub	sp,54
		mov	bx,word [bp+6]
		lea	ax,[bx+1]
		mov	word [bp-12],ax
		mov	ax,word [bp-12]
		mov	word [bp-16],ax
		mov	dx,word [bp+8]
		mov	ax,word [bp+10]
		cmp	ax,0
		jl	..@j1742
		jg	..@j1743
		cmp	dx,0
		jb	..@j1742
		jmp	..@j1743
..@j1742:
		mov	bx,word [bp-16]
		mov	byte [bx],45
		inc	word [bp-16]
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		not	dx
		neg	ax
		sbb	dx,-1
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j1748
..@j1743:
		mov	ax,word [bp+8]
		mov	word [bp-4],ax
		mov	ax,word [bp+10]
		mov	word [bp-2],ax
..@j1748:
		lea	ax,[bp-49]
		mov	word [bp-10],ax
		mov	ax,word [bp-10]
		mov	word [bp-14],ax
	ALIGN 2
..@j1755:
		mov	ax,0
		push	ax
		mov	ax,10
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		call	fpc_div_dword
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		inc	word [bp-14]
		push	word [bp-6]
		push	word [bp-8]
		mov	ax,0
		push	ax
		mov	ax,10
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	cx,word [bp-4]
		mov	bx,word [bp-2]
		sub	cx,ax
		sbb	bx,dx
		add	cx,48
		adc	bx,0
		mov	bx,word [bp-14]
		mov	byte [bx],cl
		mov	ax,word [bp-8]
		mov	word [bp-4],ax
		mov	ax,word [bp-6]
		mov	word [bp-2],ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jne	..@j1755
		cmp	ax,0
		jne	..@j1755
		jmp	..@j1757
..@j1757:
		mov	dx,word [bp-14]
		mov	ax,word [bp-10]
		sub	dx,ax
		mov	ax,word [bp-16]
		mov	cx,word [bp-12]
		sub	ax,cx
		add	ax,dx
		mov	dx,word [bp+4]
		sub	ax,dx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-54],cx
		mov	word [bp-52],ax
		mov	dx,word [bp-54]
		mov	ax,word [bp-52]
		cmp	ax,0
		jg	..@j1776
		jl	..@j1777
		cmp	dx,0
		ja	..@j1776
		jmp	..@j1777
..@j1776:
		mov	ax,word [bp-54]
		add	word [bp-10],ax
..@j1777:
		jmp	..@j1779
	ALIGN 2
..@j1778:
		mov	si,word [bp-16]
		mov	bx,word [bp-14]
		mov	al,byte [bx]
		mov	byte [si],al
		inc	word [bp-16]
		dec	word [bp-14]
..@j1779:
		mov	ax,word [bp-14]
		cmp	ax,word [bp-10]
		ja	..@j1778
		jmp	..@j1780
..@j1780:
		mov	ax,word [bp-16]
		mov	dx,word [bp-12]
		sub	ax,dx
		mov	bx,word [bp+6]
		mov	byte [bx],al
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_mul_longint
EXTERN	fpc_div_dword
