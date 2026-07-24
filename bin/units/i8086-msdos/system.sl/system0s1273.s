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
	GLOBAL SYSTEM_$$_INITDOSHEAP
SYSTEM_$$_INITDOSHEAP:
		push	bp
		mov	bp,sp
		mov	ax,word TC_$SYSTEM_$$_TINYHEAPMEMORYMANAGER
		push	ax
		call	SYSTEM_$$_SETMEMORYMANAGER$TMEMORYMANAGER
		push	word [__nearheap_start]
		mov	ax,word [__nearheap_end]
		mov	dx,word [__nearheap_start]
		sub	ax,dx
		push	ax
		call	SYSTEM_$$_REGISTERTINYHEAPBLOCK_SIMPLE_PREALIGNED$POINTER$WORD
		mov	sp,bp
		pop	bp
		ret
EXTERN	SYSTEM_$$_REGISTERTINYHEAPBLOCK_SIMPLE_PREALIGNED$POINTER$WORD
EXTERN	__nearheap_end
EXTERN	__nearheap_start
EXTERN	SYSTEM_$$_SETMEMORYMANAGER$TMEMORYMANAGER
EXTERN	TC_$SYSTEM_$$_TINYHEAPMEMORYMANAGER
