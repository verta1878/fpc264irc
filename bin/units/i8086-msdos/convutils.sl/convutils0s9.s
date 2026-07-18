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
	GLOBAL CONVUTILS_$$_SEARCHCONVERT$TCONVTYPE$RESOURCEDATA$$BOOLEAN
CONVUTILS_$$_SEARCHCONVERT$TCONVTYPE$RESOURCEDATA$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [TC_$CONVUTILS_$$_THEUNITS]
		test	bx,bx
		je	..@j182
		mov	bx,word [bx-2]
		inc	bx
..@j182:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-6],cx
		mov	word [bp-4],ax
		mov	ax,word [bp+6]
		cwd
		cmp	dx,word [bp-4]
		jg	..@j183
		jl	..@j184
		cmp	ax,word [bp-6]
		jae	..@j183
		jmp	..@j184
		jmp	..@j184
..@j183:
		mov	byte [bp-1],0
		jmp	..@j178
..@j184:
		mov	bx,word [TC_$CONVUTILS_$$_THEUNITS]
		mov	ax,word [bp+6]
		mov	si,ax
		mov	ax,12
		mul	si
		mov	si,ax
		lea	ax,[bx+si]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word INIT_$CONVUTILS_$$_RESOURCEDATA
		push	ax
		call	fpc_copy_proc
		mov	byte [bp-1],1
..@j178:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_copy_proc
EXTERN	INIT_$CONVUTILS_$$_RESOURCEDATA
EXTERN	TC_$CONVUTILS_$$_THEUNITS
