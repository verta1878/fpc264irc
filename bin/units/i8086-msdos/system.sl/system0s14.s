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
	GLOBAL SYSTEM_$$_GET_CALLER_ADDR$POINTER$NEARPOINTER$$NEARPOINTER
SYSTEM_$$_GET_CALLER_ADDR$POINTER$NEARPOINTER$$NEARPOINTER:
		mov	si,sp
		mov	ax,word [ss:si+4]
		or	ax,ax
		jz	..@j73
		xchg	ax,bx
		mov	ax,word [bx+2]
..@j73:
		ret	4
