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
	GLOBAL SYSTEM_$$_REGISTERTINYHEAPBLOCK_SIMPLE_PREALIGNED$POINTER$WORD
SYSTEM_$$_REGISTERTINYHEAPBLOCK_SIMPLE_PREALIGNED$POINTER$WORD:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+6]
		mov	word [TC_$SYSTEM_$$_HEAPORG],ax
		mov	ax,word [bp+6]
		mov	word [TC_$SYSTEM_$$_HEAPPTR],ax
		mov	ax,word [bp+6]
		mov	word [TC_$SYSTEM_$$_FREELIST],ax
		mov	dx,word [bp+6]
		mov	ax,word [bp+4]
		add	ax,dx
		mov	word [TC_$SYSTEM_$$_HEAPEND],ax
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TC_$SYSTEM_$$_HEAPEND
EXTERN	TC_$SYSTEM_$$_FREELIST
EXTERN	TC_$SYSTEM_$$_HEAPPTR
EXTERN	TC_$SYSTEM_$$_HEAPORG
