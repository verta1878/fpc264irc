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
	GLOBAL SYSTEM_$$_SYSFREEMEM_VAR$PFREELISTS$PMEMCHUNK_VAR$$WORD
SYSTEM_$$_SYSFREEMEM_VAR$PFREELISTS$PMEMCHUNK_VAR$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		and	ax,-16
		mov	word [bp-4],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		cmp	ax,word [bp+6]
		jne	..@j19287
		jmp	..@j19288
..@j19287:
		push	word [bp+4]
		call	SYSTEM_$$_WAITFREE_VAR$PMEMCHUNK_VAR
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		jmp	..@j19283
..@j19288:
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		and	ax,-3
		mov	bx,word [bp+4]
		mov	word [bx+4],ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+2]
		lea	ax,[bx+80]
		mov	word [bp-6],ax
		mov	bx,word [bp+4]
		mov	word [bx+8],0
		mov	si,word [bp+4]
		mov	bx,word [bp-6]
		mov	ax,word [bx]
		mov	word [si+6],ax
		mov	bx,word [bp-6]
		cmp	word [bx],0
		jne	..@j19302
		jmp	..@j19303
..@j19302:
		mov	bx,word [bp-6]
		mov	bx,word [bx]
		mov	ax,word [bp+4]
		mov	word [bx+8],ax
..@j19303:
		mov	bx,word [bp-6]
		mov	ax,word [bp+4]
		mov	word [bx],ax
		push	word [bp+4]
		call	SYSTEM_$$_TRY_CONCAT_FREE_CHUNK$PMEMCHUNK_VAR$$PMEMCHUNK_VAR
		mov	word [bp+4],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		and	ax,12
		cmp	ax,12
		je	..@j19312
		jmp	..@j19313
..@j19312:
		push	word [bp+4]
		call	SYSTEM_$$_APPEND_TO_OSLIST_VAR$PMEMCHUNK_VAR
..@j19313:
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		sub	word [bx+92],ax
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
..@j19283:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_APPEND_TO_OSLIST_VAR$PMEMCHUNK_VAR
EXTERN	SYSTEM_$$_TRY_CONCAT_FREE_CHUNK$PMEMCHUNK_VAR$$PMEMCHUNK_VAR
EXTERN	SYSTEM_$$_WAITFREE_VAR$PMEMCHUNK_VAR
