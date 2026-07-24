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
	GLOBAL PORTS$_$TPORTW_$__$$_READPORT$WORD$$WORD
PORTS$_$TPORTW_$__$$_READPORT$WORD$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	dx,word [bp+4]
		in	ax,dx
		mov	sp,bp
		pop	bp
		ret	4
; End asmlist al_procedures
; Begin asmlist al_globals
