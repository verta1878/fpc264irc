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
	GLOBAL SYSTEM_$$_INCLOCKED$INT64
SYSTEM_$$_INCLOCKED$INT64:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		add	word [bx],1
		adc	word [bx+2],0
		adc	word [bx+4],0
		adc	word [bx+6],0
		mov	sp,bp
		pop	bp
		ret	2
