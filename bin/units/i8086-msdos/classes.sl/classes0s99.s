BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TSTRINGSTREAM_$__$$_SEEK$LONGINT$WORD$$LONGINT
CLASSES$_$TSTRINGSTREAM_$__$$_SEEK$LONGINT$WORD$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+4]
		test	ax,ax
		je	..@j2157
		dec	ax
		je	..@j2159
		dec	ax
		je	..@j2158
		jmp	..@j2156
..@j2157:
		mov	bx,word [bp+10]
		mov	ax,word [bp+6]
		mov	word [bx+4],ax
		jmp	..@j2155
..@j2158:
		mov	bx,word [bp+10]
		mov	bx,word [bx+2]
		test	bx,bx
		je	..@j2164
		mov	bx,word [bx-2]
..@j2164:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp+6]
		mov	bx,word [bp+8]
		add	dx,cx
		adc	bx,ax
		mov	bx,word [bp+10]
		mov	word [bx+4],dx
		jmp	..@j2155
..@j2159:
		mov	bx,word [bp+10]
		mov	ax,word [bx+4]
		cwd
		mov	cx,word [bp+6]
		mov	bx,word [bp+8]
		add	cx,ax
		adc	bx,dx
		mov	bx,word [bp+10]
		mov	word [bx+4],cx
		jmp	..@j2155
..@j2156:
..@j2155:
		mov	bx,word [bp+10]
		mov	bx,word [bx+2]
		test	bx,bx
		je	..@j2169
		mov	bx,word [bx-2]
..@j2169:
		mov	si,word [bp+10]
		cmp	bx,word [si+4]
		jl	..@j2167
		jmp	..@j2168
..@j2167:
		mov	bx,word [bp+10]
		mov	si,word [bx+2]
		test	si,si
		je	..@j2172
		mov	si,word [si-2]
..@j2172:
		mov	bx,word [bp+10]
		mov	word [bx+4],si
		jmp	..@j2173
..@j2168:
		mov	bx,word [bp+10]
		cmp	word [bx+4],0
		jl	..@j2174
		jmp	..@j2175
..@j2174:
		mov	bx,word [bp+10]
		mov	word [bx+4],0
..@j2175:
..@j2173:
		mov	bx,word [bp+10]
		mov	ax,word [bx+4]
		cwd
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
