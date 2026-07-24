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
	GLOBAL OBJECTS$_$TCOLLECTION_$__$$_STORE$TSTREAM
OBJECTS$_$TCOLLECTION_$__$$_STORE$TSTREAM:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		cmp	byte [bx+14],0
		jne	..@j2090
		jmp	..@j2091
..@j2090:
		mov	bx,word [bp+6]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,0
		jg	..@j2092
		jl	..@j2093
		cmp	dx,16380
		ja	..@j2092
		jmp	..@j2093
..@j2092:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,-4
		push	ax
		mov	ax,0
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
		jmp	..@j2100
..@j2093:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		lea	ax,[bx+4]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+26]
		call	ax
		mov	bx,word [bp+6]
		mov	dx,word [bx+8]
		mov	ax,word [bx+10]
		cmp	ax,0
		jg	..@j2107
		jl	..@j2108
		cmp	dx,16380
		ja	..@j2107
		jmp	..@j2108
..@j2107:
		mov	word [bp-2],16380
		jmp	..@j2111
..@j2108:
		mov	bx,word [bp+6]
		mov	ax,word [bx+8]
		mov	word [bp-2],ax
..@j2111:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-2]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+26]
		call	ax
		mov	bx,word [bp+6]
		mov	dx,word [bx+12]
		mov	ax,word [bx+14]
		cmp	ax,0
		jg	..@j2120
		jl	..@j2121
		cmp	dx,16380
		ja	..@j2120
		jmp	..@j2121
..@j2120:
		mov	word [bp-4],16380
		jmp	..@j2124
..@j2121:
		mov	bx,word [bp+6]
		mov	ax,word [bx+12]
		mov	word [bp-4],ax
..@j2124:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-4]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+26]
		call	ax
..@j2100:
		jmp	..@j2133
..@j2091:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		lea	ax,[bx+4]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+26]
		call	ax
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		lea	ax,[bx+8]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+26]
		call	ax
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		lea	ax,[bx+12]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+26]
		call	ax
..@j2133:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word OBJECTS$_$TCOLLECTION_$_STORE$TSTREAM_$$_DOPUTITEM$POINTER
		push	ax
		call	OBJECTS$_$TCOLLECTION_$__$$_FOREACH$NEARPOINTER
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	OBJECTS$_$TCOLLECTION_$__$$_FOREACH$NEARPOINTER
EXTERN	OBJECTS$_$TCOLLECTION_$_STORE$TSTREAM_$$_DOPUTITEM$POINTER
