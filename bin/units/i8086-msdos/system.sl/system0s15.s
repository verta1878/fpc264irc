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
	GLOBAL SYSTEM_$$_GET_CALLER_FRAME$POINTER$NEARPOINTER$$POINTER
SYSTEM_$$_GET_CALLER_FRAME$POINTER$NEARPOINTER$$POINTER:
		mov	si,sp
		mov	ax,word [ss:si+4]
		or	ax,ax
		jz	..@j76
		xchg	ax,si
		lodsw
..@j76:
		ret	4
