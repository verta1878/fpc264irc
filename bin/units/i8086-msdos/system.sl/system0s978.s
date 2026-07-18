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
	GLOBAL SYSTEM_$$_NOBASICEVENTCREATE$POINTER$BOOLEAN$BOOLEAN$ANSISTRING$$POINTER
SYSTEM_$$_NOBASICEVENTCREATE$POINTER$BOOLEAN$BOOLEAN$ANSISTRING$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [TC_$SYSTEM_$$_ISMULTITHREAD+2],0
		jne	..@j20066
		cmp	word [TC_$SYSTEM_$$_ISMULTITHREAD],0
		jne	..@j20066
		jmp	..@j20067
..@j20066:
		call	SYSTEM_$$_NOTHREADERROR
		jmp	..@j20069
..@j20067:
		mov	byte [TC_$SYSTEM_$$_THREADINGALREADYUSED],1
..@j20069:
		mov	word [bp-2],0
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	TC_$SYSTEM_$$_THREADINGALREADYUSED
EXTERN	SYSTEM_$$_NOTHREADERROR
EXTERN	TC_$SYSTEM_$$_ISMULTITHREAD
