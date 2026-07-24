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
	GLOBAL SYSTEM_$$_NOGETCURRENTTHREADID$$WORD
SYSTEM_$$_NOGETCURRENTTHREADID$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [TC_$SYSTEM_$$_ISMULTITHREAD+2],0
		jne	..@j20032
		cmp	word [TC_$SYSTEM_$$_ISMULTITHREAD],0
		jne	..@j20032
		jmp	..@j20033
..@j20032:
		call	SYSTEM_$$_NOTHREADERROR
		jmp	..@j20035
..@j20033:
		mov	byte [TC_$SYSTEM_$$_THREADINGALREADYUSED],1
..@j20035:
		mov	word [bp-2],1
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
EXTERN	TC_$SYSTEM_$$_THREADINGALREADYUSED
EXTERN	SYSTEM_$$_NOTHREADERROR
EXTERN	TC_$SYSTEM_$$_ISMULTITHREAD
