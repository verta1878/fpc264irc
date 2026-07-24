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
	GLOBAL SYSTEM_$$_NORTLEVENT$PRTLEVENT
SYSTEM_$$_NORTLEVENT$PRTLEVENT:
		push	bp
		mov	bp,sp
		cmp	word [TC_$SYSTEM_$$_ISMULTITHREAD+2],0
		jne	..@j20104
		cmp	word [TC_$SYSTEM_$$_ISMULTITHREAD],0
		jne	..@j20104
		jmp	..@j20105
..@j20104:
		call	SYSTEM_$$_NOTHREADERROR
		jmp	..@j20107
..@j20105:
		mov	byte [TC_$SYSTEM_$$_THREADINGALREADYUSED],1
..@j20107:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$SYSTEM_$$_THREADINGALREADYUSED
EXTERN	SYSTEM_$$_NOTHREADERROR
EXTERN	TC_$SYSTEM_$$_ISMULTITHREAD
