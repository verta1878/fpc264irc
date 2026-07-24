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
	GLOBAL SYSTEM_$$_SYSFREEMEM_FIXED$PFREELISTS$PMEMCHUNK_FIXED$$WORD
SYSTEM_$$_SYSFREEMEM_FIXED$PFREELISTS$PMEMCHUNK_FIXED$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	cl,12
		shr	ax,cl
		mov	dx,word [bp+4]
		sub	dx,ax
		mov	word [bp-8],dx
		mov	bx,word [bp-8]
		mov	ax,word [bx+10]
		mov	word [bp-12],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,4080
		mov	word [bp-6],ax
		mov	ax,word [bp+6]
		cmp	ax,word [bp-12]
		je	..@j19252
		jmp	..@j19253
..@j19252:
		mov	bx,word [bp-8]
		dec	word [bx+8]
		mov	ax,word [bp-6]
		mov	cl,4
		shr	ax,cl
		mov	word [bp-4],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	word [bp-10],ax
		mov	bx,word [bp+4]
		mov	word [bx+4],0
		mov	bx,word [bp+4]
		mov	ax,word [bp-10]
		mov	word [bx+2],ax
		cmp	word [bp-10],0
		jne	..@j19262
		jmp	..@j19263
..@j19262:
		mov	bx,word [bp-10]
		mov	ax,word [bp+4]
		mov	word [bx+4],ax
..@j19263:
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp+4]
		mov	word [bx+si],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-6]
		sub	word [bx+92],ax
		mov	bx,word [bp-8]
		cmp	word [bx+8],0
		jle	..@j19268
		jmp	..@j19269
..@j19268:
		mov	bx,word [bp-8]
		cmp	word [bx+8],0
		jl	..@j19270
		jmp	..@j19271
..@j19270:
		mov	ax,0
		push	ax
		mov	ax,204
		push	ax
		call	FPC_HANDLEERROR
..@j19271:
		push	word [bp-8]
		call	SYSTEM_$$_APPEND_TO_OSLIST$POSCHUNK
..@j19269:
		jmp	..@j19276
..@j19253:
		push	word [bp+4]
		push	word [bp-8]
		call	SYSTEM_$$_WAITFREE_FIXED$PMEMCHUNK_FIXED$POSCHUNK
..@j19276:
		mov	ax,word [bp-6]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_WAITFREE_FIXED$PMEMCHUNK_FIXED$POSCHUNK
EXTERN	SYSTEM_$$_APPEND_TO_OSLIST$POSCHUNK
EXTERN	FPC_HANDLEERROR
