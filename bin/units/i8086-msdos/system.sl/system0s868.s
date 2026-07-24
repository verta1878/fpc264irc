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
	GLOBAL SYSTEM_$$_ISMEMORYMANAGERSET$$BOOLEAN
SYSTEM_$$_ISMEMORYMANAGERSET$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word SYSTEM_$$_SYSGETMEM$WORD$$POINTER
		cmp	ax,word [TC_$SYSTEM_$$_MEMORYMANAGER+1]
		jne	..@j18392
		jmp	..@j18394
..@j18394:
		mov	ax,word SYSTEM_$$_SYSFREEMEM$POINTER$$WORD
		cmp	ax,word [TC_$SYSTEM_$$_MEMORYMANAGER+3]
		jne	..@j18392
		jmp	..@j18393
..@j18392:
		mov	byte [bp-1],1
		jmp	..@j18395
..@j18393:
		mov	byte [bp-1],0
..@j18395:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret
EXTERN	SYSTEM_$$_SYSFREEMEM$POINTER$$WORD
EXTERN	TC_$SYSTEM_$$_MEMORYMANAGER
EXTERN	SYSTEM_$$_SYSGETMEM$WORD$$POINTER
