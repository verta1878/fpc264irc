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
	GLOBAL SYSTEM_$$_TRY_CONCAT_FREE_CHUNK$PMEMCHUNK_VAR$$PMEMCHUNK_VAR
SYSTEM_$$_TRY_CONCAT_FREE_CHUNK$PMEMCHUNK_VAR$$PMEMCHUNK_VAR:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+4]
		call	SYSTEM_$$_TRY_CONCAT_FREE_CHUNK_FORWARD$PMEMCHUNK_VAR$$BOOLEAN
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		and	ax,8
		test	ax,ax
		je	..@j18779
		jmp	..@j18780
..@j18779:
		mov	bx,word [bp+4]
		mov	dx,word [bx]
		mov	ax,word [bp+4]
		sub	ax,dx
		mov	word [bp-4],ax
		mov	bx,word [bp-4]
		mov	ax,word [bx+4]
		and	ax,2
		test	ax,ax
		je	..@j18783
		jmp	..@j18784
..@j18783:
		push	word [bp-4]
		push	word [bp+4]
		call	SYSTEM_$$_CONCAT_TWO_BLOCKS$PMEMCHUNK_VAR$PMEMCHUNK_VAR
		mov	ax,word [bp-4]
		mov	word [bp+4],ax
..@j18784:
..@j18780:
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_CONCAT_TWO_BLOCKS$PMEMCHUNK_VAR$PMEMCHUNK_VAR
EXTERN	SYSTEM_$$_TRY_CONCAT_FREE_CHUNK_FORWARD$PMEMCHUNK_VAR$$BOOLEAN
