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
	GLOBAL SYSTEM_$$_SYSTINYALLOCMEM$WORD$$POINTER
SYSTEM_$$_SYSTINYALLOCMEM$WORD$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+4]
		call	SYSTEM_$$_SYSTINYGETMEM$WORD$$POINTER
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jne	..@j26086
		jmp	..@j26087
..@j26086:
		mov	ax,word [bp-2]
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_SYSTINYMEMSIZE$POINTER$$WORD
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
..@j26087:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	SYSTEM_$$_SYSTINYMEMSIZE$POINTER$$WORD
EXTERN	SYSTEM_$$_SYSTINYGETMEM$WORD$$POINTER
