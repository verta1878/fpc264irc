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
	GLOBAL MD5_$$_MDMATCH$TMDDIGEST$TMDDIGEST$$BOOLEAN
MD5_$$_MDMATCH$TMDDIGEST$TMDDIGEST$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		mov	ax,word [si]
		mov	dx,word [si+2]
		cmp	dx,word [bx+2]
		jne	..@j2196
		cmp	ax,word [bx]
		jne	..@j2196
		jmp	..@j2195
		jmp	..@j2196
..@j2195:
		mov	dl,1
		jmp	..@j2197
..@j2196:
		mov	dl,0
..@j2197:
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		mov	cx,word [si+4]
		mov	ax,word [si+6]
		cmp	ax,word [bx+6]
		jne	..@j2199
		cmp	cx,word [bx+4]
		jne	..@j2199
		jmp	..@j2198
		jmp	..@j2199
..@j2198:
		mov	al,1
		jmp	..@j2200
..@j2199:
		mov	al,0
..@j2200:
		and	al,dl
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		mov	cx,word [si+8]
		mov	dx,word [si+10]
		cmp	dx,word [bx+10]
		jne	..@j2202
		cmp	cx,word [bx+8]
		jne	..@j2202
		jmp	..@j2201
		jmp	..@j2202
..@j2201:
		mov	dl,1
		jmp	..@j2203
..@j2202:
		mov	dl,0
..@j2203:
		and	dl,al
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		mov	cx,word [si+12]
		mov	ax,word [si+14]
		cmp	ax,word [bx+14]
		jne	..@j2205
		cmp	cx,word [bx+12]
		jne	..@j2205
		jmp	..@j2204
		jmp	..@j2205
..@j2204:
		mov	al,1
		jmp	..@j2206
..@j2205:
		mov	al,0
..@j2206:
		and	al,dl
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
