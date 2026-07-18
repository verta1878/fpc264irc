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
	GLOBAL fpc_read_text_pchar_as_array
fpc_read_text_pchar_as_array:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+10]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		inc	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		call	SYSTEM_$$_READPCHARLEN$TEXT$PCHAR$LONGINT$$LONGINT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		cmp	byte [bp+4],0
		jne	..@j23237
		jmp	..@j23236
..@j23237:
		mov	ax,word [bp+6]
		cwd
		cmp	dx,word [bp-2]
		jl	..@j23235
		jg	..@j23236
		cmp	ax,word [bp-4]
		jb	..@j23235
		jmp	..@j23236
		jmp	..@j23236
..@j23235:
		mov	ax,word [bp+6]
		cwd
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j23236:
		mov	ax,word [bp+6]
		cwd
		cmp	dx,word [bp-2]
		jg	..@j23240
		jl	..@j23241
		cmp	ax,word [bp-4]
		jae	..@j23240
		jmp	..@j23241
		jmp	..@j23241
..@j23240:
		mov	bx,word [bp+8]
		mov	si,word [bp-4]
		mov	byte [bx+si],0
..@j23241:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_READPCHARLEN$TEXT$PCHAR$LONGINT$$LONGINT
