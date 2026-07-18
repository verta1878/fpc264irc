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
	GLOBAL OBJPAS_$$_RESETRESOURCETABLES
OBJPAS_$$_RESETRESOURCETABLES:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [FPC_RESOURCESTRINGTABLES]
		dec	ax
		mov	word [bp-6],ax
		mov	word [bp-4],0
		mov	ax,word [bp-6]
		cmp	ax,word [bp-4]
		jl	..@j253
		dec	word [bp-4]
	ALIGN 2
..@j254:
		inc	word [bp-4]
		mov	bx,word [bp-4]
		mov	cl,2
		shl	bx,cl
		mov	ax,word [FPC_RESOURCESTRINGTABLES+bx+2]
		mov	word [bp-2],ax
		add	word [bp-2],10
		jmp	..@j258
	ALIGN 2
..@j257:
		mov	bx,word [bp-2]
		lea	ax,[bx+2]
		push	ax
		mov	bx,word [bp-2]
		push	word [bx+4]
		call	fpc_ansistr_assign
		add	word [bp-2],10
..@j258:
		mov	bx,word [bp-4]
		mov	cl,2
		shl	bx,cl
		mov	ax,word [FPC_RESOURCESTRINGTABLES+bx+4]
		cmp	ax,word [bp-2]
		ja	..@j257
		jmp	..@j259
..@j259:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-4]
		jg	..@j254
..@j253:
		mov	sp,bp
		pop	bp
		ret
EXTERN	fpc_ansistr_assign
EXTERN	FPC_RESOURCESTRINGTABLES
