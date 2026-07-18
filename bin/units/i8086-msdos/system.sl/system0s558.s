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
	GLOBAL SYSTEM_$$_DYNARRAYINDEX$POINTER$array_of_SMALLINT$POINTER$$POINTER
SYSTEM_$$_DYNARRAYINDEX$POINTER$array_of_SMALLINT$POINTER$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	ax,word [bp+6]
		mov	word [bp-6],ax
		mov	ax,word [bp-6]
		mov	word [bp-4],0
		cmp	ax,word [bp-4]
		jl	..@j14168
		dec	word [bp-4]
	ALIGN 2
..@j14169:
		inc	word [bp-4]
		mov	dx,word [bp-4]
		cmp	dx,word [bp-6]
		jl	..@j14170
		jmp	..@j14171
..@j14170:
		mov	dx,word [bp+10]
		mov	word [bp-8],dx
		mov	bx,word [bp+8]
		mov	dx,word [bp-4]
		mov	si,dx
		shl	si,1
		mov	dx,word [bx+si]
		mov	si,dx
		shl	si,1
		mov	bx,word [bp-8]
		mov	dx,word [bx+si]
		mov	word [bp+10],dx
..@j14171:
		mov	cx,word [bp+4]
		add	cx,2
		mov	bx,word [bp+4]
		mov	dl,byte [bx+1]
		mov	dh,0
		add	dx,cx
		mov	word [bp+4],dx
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	word [bp+4],dx
		cmp	word [bp+4],0
		je	..@j14178
		jmp	..@j14179
..@j14178:
		mov	word [bp-2],0
		jmp	..@j14161
..@j14179:
		cmp	ax,word [bp-4]
		jg	..@j14169
..@j14168:
		mov	ax,word [bp+4]
		add	ax,2
		mov	bx,word [bp+4]
		mov	dl,byte [bx+1]
		mov	dh,0
		add	dx,ax
		mov	word [bp+4],dx
		mov	ax,word [bp+10]
		mov	word [bp-10],ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-6]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		cwd
		push	dx
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	dx,0
		push	dx
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	si,ax
		mov	bx,word [bp-10]
		lea	ax,[bx+si]
		mov	word [bp-2],ax
..@j14161:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_mul_longint
