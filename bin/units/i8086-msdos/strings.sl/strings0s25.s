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
	GLOBAL STRINGS_$$_STRDISPOSE$PCHAR
STRINGS_$$_STRDISPOSE$PCHAR:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jne	..@j444
		jmp	..@j445
..@j444:
		push	word [bp+4]
		call	SYSTEM_$$_FREEMEM$POINTER$$WORD
		mov	word [bp+4],0
..@j445:
		mov	sp,bp
		pop	bp
		ret	2
; End asmlist al_procedures

EXTERN	SYSTEM_$$_FREEMEM$POINTER$$WORD
