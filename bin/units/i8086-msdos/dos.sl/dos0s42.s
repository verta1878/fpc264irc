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
	GLOBAL DOS_$$_SWAPVECTORS
DOS_$$_SWAPVECTORS:
		push	bp
		mov	bp,sp
		mov	ax,0
		push	ax
		mov	ax,word __SaveInt00
		push	ax
		call	DOS_$$_SWAPINTVEC$BYTE$FARPOINTER
		mov	sp,bp
		pop	bp
		ret
EXTERN	DOS_$$_SWAPINTVEC$BYTE$FARPOINTER
EXTERN	__SaveInt00
