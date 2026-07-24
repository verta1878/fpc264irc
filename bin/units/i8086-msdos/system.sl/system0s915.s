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
	GLOBAL SYSTEM_$$_SYSMEMSIZE$POINTER$$WORD
SYSTEM_$$_SYSMEMSIZE$POINTER$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		mov	ax,word [bx-2]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		and	ax,1
		test	ax,ax
		je	..@j19409
		jmp	..@j19410
..@j19409:
		mov	ax,word [bp-2]
		and	ax,-16
		mov	word [bp-2],ax
		sub	word [bp-2],6
		jmp	..@j19413
..@j19410:
		mov	ax,word [bp-2]
		and	ax,4080
		mov	word [bp-2],ax
		sub	word [bp-2],2
..@j19413:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
