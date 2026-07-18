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
	GLOBAL CRT_$$_DELAYLOOP
CRT_$$_DELAYLOOP:
..@j304:
		sub	ax,1
		sbb	dx,0
		jc	..@j305
		cmp	bx,word [es:di]
		je	..@j304
..@j305:
		ret
