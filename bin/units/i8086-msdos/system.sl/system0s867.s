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
	GLOBAL SYSTEM_$$_SETMEMORYMANAGER$TMEMORYMANAGER
SYSTEM_$$_SETMEMORYMANAGER$TMEMORYMANAGER:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+4]
		mov	di,word TC_$SYSTEM_$$_MEMORYMANAGER
		push	ds
		pop	es
		mov	si,ax
		cld
		mov	cx,11
		rep
		movsw
		movsb
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$SYSTEM_$$_MEMORYMANAGER
