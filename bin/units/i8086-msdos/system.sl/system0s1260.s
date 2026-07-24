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
	GLOBAL SYSTEM_$$_INTERNALTINYALIGN$POINTER$WORD
SYSTEM_$$_INTERNALTINYALIGN$POINTER$WORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	dx,0
		add	ax,3
		adc	dx,0
		mov	word [bp-4],ax
		mov	ax,word [bp-4]
		and	ax,3
		mov	si,0
		mov	dx,word [bp-4]
		mov	cx,0
		sub	dx,ax
		sbb	cx,si
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		sub	dx,ax
		mov	word [bp-2],dx
		mov	bx,word [bp+6]
		mov	ax,word [bp-2]
		add	word [bx],ax
		mov	ax,word [bp-2]
		sub	word [bp+4],ax
		mov	ax,word [bp+4]
		and	ax,3
		sub	word [bp+4],ax
		mov	sp,bp
		pop	bp
		ret	4
