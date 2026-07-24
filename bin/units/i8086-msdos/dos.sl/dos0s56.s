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
	GLOBAL DOS_$$_KEEP$WORD
DOS_$$_KEEP$WORD:
		push	bp
		mov	bp,sp
		mov	bx,word [__fpc_PrefixSeg]
		dec	bx
		mov	es,bx
		mov	dx,word [es:+3]
		mov	ax,word [bp+4]
		mov	ah,49
		int	byte 33
		mov	sp,bp
		pop	bp
		ret	2
; End asmlist al_procedures
; Begin asmlist al_globals
EXTERN	__fpc_PrefixSeg
