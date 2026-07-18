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
	GLOBAL SYSUTILS$_$TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__$$_DESTROY
SYSUTILS$_$TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jg	..@j13057
		jmp	..@j13058
..@j13057:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j13058:
		mov	bx,word [bp+6]
		lea	ax,[bx+10]
		push	ax
		call	SYSTEM_$$_DONECRITICALSECTION$TRTLCRITICALSECTION
		mov	bx,word [bp+6]
		push	word [bx+11]
		call	SYSTEM_$$_RTLEVENTDESTROY$PRTLEVENT
		mov	bx,word [bp+6]
		push	word [bx+8]
		call	SYSTEM_$$_BASICEVENTDESTROY$POINTER
		cmp	word [bp+6],0
		jne	..@j13070
		jmp	..@j13069
..@j13070:
		cmp	word [bp+4],0
		jne	..@j13068
		jmp	..@j13069
..@j13068:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j13069:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_BASICEVENTDESTROY$POINTER
EXTERN	SYSTEM_$$_RTLEVENTDESTROY$PRTLEVENT
EXTERN	SYSTEM_$$_DONECRITICALSECTION$TRTLCRITICALSECTION
