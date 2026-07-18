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
	GLOBAL fpc_freemem
fpc_freemem:
	GLOBAL FPC_FREEMEM
FPC_FREEMEM:
		push	bp
		mov	bp,sp
		push	word [bp+4]
		mov	ax,word [TC_$SYSTEM_$$_MEMORYMANAGER+3]
		call	ax
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$SYSTEM_$$_MEMORYMANAGER
