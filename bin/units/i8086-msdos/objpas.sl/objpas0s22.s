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
	GLOBAL OBJPAS_$$_FINALIZERESOURCETABLES
OBJPAS_$$_FINALIZERESOURCETABLES:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [FPC_RESOURCESTRINGTABLES]
		dec	ax
		mov	word [bp-6],ax
		mov	word [bp-4],0
		mov	ax,word [bp-6]
		cmp	ax,word [bp-4]
		jl	..@j269
		dec	word [bp-4]
	ALIGN 2
..@j270:
		inc	word [bp-4]
		mov	bx,word [bp-4]
		mov	cl,2
		shl	bx,cl
		mov	ax,word [FPC_RESOURCESTRINGTABLES+bx+2]
		mov	word [bp-2],ax
		add	word [bp-2],10
		jmp	..@j274
	ALIGN 2
..@j273:
		mov	bx,word [bp-2]
		lea	ax,[bx+2]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		add	word [bp-2],10
..@j274:
		mov	bx,word [bp-4]
		mov	cl,2
		shl	bx,cl
		mov	ax,word [FPC_RESOURCESTRINGTABLES+bx+4]
		cmp	ax,word [bp-2]
		ja	..@j273
		jmp	..@j275
..@j275:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-4]
		jg	..@j270
..@j269:
		mov	sp,bp
		pop	bp
		ret
EXTERN	fpc_ansistr_assign
EXTERN	FPC_RESOURCESTRINGTABLES
