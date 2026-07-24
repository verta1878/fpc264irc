BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		lea	ax,[bx+6]
		push	ax
		call	SYSTEM_$$_ENTERCRITICALSECTION$TRTLCRITICALSECTION
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_ENTERCRITICALSECTION$TRTLCRITICALSECTION
