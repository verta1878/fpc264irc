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
	GLOBAL SYSTEM_$$_TRY_CONCAT_FREE_CHUNK_FORWARD$PMEMCHUNK_VAR$$BOOLEAN
SYSTEM_$$_TRY_CONCAT_FREE_CHUNK_FORWARD$PMEMCHUNK_VAR$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	byte [bp-1],0
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		and	ax,4
		test	ax,ax
		je	..@j18763
		jmp	..@j18764
..@j18763:
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		and	ax,-16
		mov	dx,word [bp+4]
		add	dx,ax
		mov	word [bp-4],dx
		mov	bx,word [bp-4]
		mov	ax,word [bx+4]
		and	ax,2
		test	ax,ax
		je	..@j18767
		jmp	..@j18768
..@j18767:
		push	word [bp+4]
		push	word [bp-4]
		call	SYSTEM_$$_CONCAT_TWO_BLOCKS$PMEMCHUNK_VAR$PMEMCHUNK_VAR
		mov	byte [bp-1],1
..@j18768:
..@j18764:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_CONCAT_TWO_BLOCKS$PMEMCHUNK_VAR$PMEMCHUNK_VAR
