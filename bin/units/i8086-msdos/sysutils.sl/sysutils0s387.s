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
	GLOBAL SYSUTILS$_$TSIMPLERWSYNC_$__$$_DESTROY
SYSUTILS$_$TSIMPLERWSYNC_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jg	..@j12973
		jmp	..@j12974
..@j12973:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j12974:
		mov	bx,word [bp+6]
		lea	ax,[bx+8]
		push	ax
		call	SYSTEM_$$_DONECRITICALSECTION$TRTLCRITICALSECTION
		cmp	word [bp+6],0
		jne	..@j12981
		jmp	..@j12980
..@j12981:
		cmp	word [bp+4],0
		jne	..@j12979
		jmp	..@j12980
..@j12979:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j12980:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_DONECRITICALSECTION$TRTLCRITICALSECTION
