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
	GLOBAL SYSUTILS_$$_FILEWRITE$WORD$formal$LONGINT$$LONGINT
SYSUTILS_$$_FILEWRITE$WORD$formal$LONGINT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,32
		mov	word [bp-32],0
		mov	word [bp-30],0
		jmp	..@j15253
	ALIGN 2
..@j15252:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jg	..@j15255
		jl	..@j15256
		cmp	ax,-1
		ja	..@j15255
		jmp	..@j15256
..@j15255:
		mov	word [bp-28],-1
		mov	word [bp-26],0
		jmp	..@j15259
..@j15256:
		mov	ax,word [bp+4]
		mov	word [bp-28],ax
		mov	ax,word [bp+6]
		mov	word [bp-26],ax
..@j15259:
		mov	ax,word [bp-28]
		mov	word [bp-20],ax
		mov	ax,word [bp+8]
		mov	word [bp-18],ax
		mov	ax,word [bp+8]
		mov	ax,ds
		mov	word [bp-10],ax
		mov	ax,word [bp+10]
		mov	word [bp-22],ax
		mov	word [bp-24],16384
		mov	ax,33
		push	ax
		lea	ax,[bp-24]
		push	ax
		call	FPC_INTR
		mov	ax,word [bp-6]
		and	ax,1
		test	ax,ax
		jne	..@j15276
		jmp	..@j15277
..@j15276:
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		jmp	..@j15248
..@j15277:
		mov	ax,word [bp-24]
		mov	dx,0
		add	word [bp-32],ax
		adc	word [bp-30],dx
		mov	ax,word [bp-24]
		mov	dx,0
		sub	word [bp+4],ax
		sbb	word [bp+6],dx
		mov	ax,word [bp-24]
		mov	dx,0
		cmp	dx,word [bp-26]
		jl	..@j15280
		jg	..@j15281
		cmp	ax,word [bp-28]
		jb	..@j15280
		jmp	..@j15281
		jmp	..@j15281
..@j15280:
		jmp	..@j15254
..@j15281:
..@j15253:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jg	..@j15252
		jl	..@j15254
		cmp	ax,0
		ja	..@j15252
		jmp	..@j15254
..@j15254:
		mov	ax,word [bp-32]
		mov	word [bp-4],ax
		mov	ax,word [bp-30]
		mov	word [bp-2],ax
..@j15248:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_INTR
