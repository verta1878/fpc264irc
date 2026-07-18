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
	GLOBAL SYSTEM_$$_NOBASICEVENTWAITFOR$LONGWORD$POINTER$$LONGINT
SYSTEM_$$_NOBASICEVENTWAITFOR$LONGWORD$POINTER$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		cmp	word [TC_$SYSTEM_$$_ISMULTITHREAD+2],0
		jne	..@j20084
		cmp	word [TC_$SYSTEM_$$_ISMULTITHREAD],0
		jne	..@j20084
		jmp	..@j20085
..@j20084:
		call	SYSTEM_$$_NOTHREADERROR
		jmp	..@j20087
..@j20085:
		mov	byte [TC_$SYSTEM_$$_THREADINGALREADYUSED],1
..@j20087:
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	TC_$SYSTEM_$$_THREADINGALREADYUSED
EXTERN	SYSTEM_$$_NOTHREADERROR
EXTERN	TC_$SYSTEM_$$_ISMULTITHREAD
