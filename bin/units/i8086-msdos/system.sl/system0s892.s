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
	GLOBAL SYSTEM_$$_APPEND_TO_OSLIST$POSCHUNK
SYSTEM_$$_APPEND_TO_OSLIST$POSCHUNK:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		mov	ax,word [bx+10]
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,1
		test	ax,ax
		jne	..@j18624
		jmp	..@j18625
..@j18624:
		mov	bx,word [bp-2]
		add	word [bx+68],1
		adc	word [bx+70],0
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,-2
		mov	bx,word [bp+4]
		mov	word [bx],ax
		jmp	..@j18620
..@j18625:
		mov	si,word [bp+4]
		mov	bx,word [bp-2]
		mov	ax,word [bx]
		mov	word [si+2],ax
		mov	bx,word [bp-2]
		mov	ax,word [bp+4]
		mov	word [bx],ax
		mov	bx,word [bp-2]
		add	word [bx+68],1
		adc	word [bx+70],0
..@j18620:
		mov	sp,bp
		pop	bp
		ret	2
